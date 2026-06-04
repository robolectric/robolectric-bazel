"""Tests for update-versions.py."""

from __future__ import annotations

import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock

import update_versions


class ParseTest(unittest.TestCase):
    def test_modern_build_number(self):
        self.assertEqual(
            update_versions.parse("16-robolectric-13921718-i7"),
            ("16", (7, (1, 13921718), 0)),
        )

    def test_rev_suffix(self):
        self.assertEqual(
            update_versions.parse("9-robolectric-4913185-2-i7"),
            ("9", (7, (1, 4913185), 2)),
        )

    def test_legacy_r_build(self):
        self.assertEqual(
            update_versions.parse("8.0.0_r4-robolectric-r1-i7"),
            ("8.0.0_r4", (7, (0, 1), 0)),
        )

    def test_decimal_api(self):
        api, _ = update_versions.parse("12.1-robolectric-8229987-i7")
        self.assertEqual(api, "12.1")

    def test_malformed_returns_none(self):
        self.assertIsNone(update_versions.parse("not-a-version"))
        self.assertIsNone(update_versions.parse("16-foo-1-i1"))
        self.assertIsNone(update_versions.parse("16-robolectric-123"))


class NumericApiKeyTest(unittest.TestCase):
    def test_integer(self):
        self.assertEqual(update_versions.numeric_api_key("16"), (16,))

    def test_decimal(self):
        self.assertEqual(update_versions.numeric_api_key("12.1"), (12, 1))

    def test_three_part(self):
        self.assertEqual(update_versions.numeric_api_key("8.1.0"), (8, 1, 0))

    def test_legacy_r_suffixed(self):
        self.assertIsNone(update_versions.numeric_api_key("8.0.0_r4"))
        self.assertIsNone(update_versions.numeric_api_key("5.0.2_r3"))
        self.assertIsNone(update_versions.numeric_api_key("7.1.0_r7"))

    def test_ordering(self):
        labels = ["17", "16", "12.1", "12", "8.1.0", "8"]
        keys = [update_versions.numeric_api_key(a) for a in labels]
        self.assertEqual(keys, sorted(keys, reverse=True))


class LatestPerApiTest(unittest.TestCase):
    def test_picks_highest_instrumentation(self):
        versions = [
            "16-robolectric-13921718-i5",
            "16-robolectric-13921718-i7",
            "16-robolectric-13921718-i6",
        ]
        self.assertEqual(
            update_versions.latest_per_api(versions),
            {"16": "16-robolectric-13921718-i7"},
        )

    def test_picks_highest_build_within_same_instrumentation(self):
        versions = [
            "15-robolectric-12543294-i7",
            "15-robolectric-13954326-i7",
            "15-robolectric-12714715-i7",
        ]
        self.assertEqual(
            update_versions.latest_per_api(versions),
            {"15": "15-robolectric-13954326-i7"},
        )

    def test_groups_by_api(self):
        versions = [
            "16-robolectric-100-i7",
            "15-robolectric-200-i7",
            "16-robolectric-300-i7",
        ]
        self.assertEqual(
            update_versions.latest_per_api(versions),
            {
                "16": "16-robolectric-300-i7",
                "15": "15-robolectric-200-i7",
            },
        )

    def test_ignores_unparseable(self):
        self.assertEqual(update_versions.latest_per_api(["nope"]), {})


_BZL_FIXTURE = """\
DEFAULT_AVAILABLE_VERSIONS = [
    robolectric_version(
        version = "15-robolectric-12543294-i7",
        sha256 = "deadbeef00000000000000000000000000000000000000000000000000000000",
    ),
    robolectric_version(
        version = "5.0.2_r3-robolectric-r0-i7",
        sha256 = "1111111111111111111111111111111111111111111111111111111111111111",
    ),
]
"""

_METADATA_FIXTURE = b"""<?xml version="1.0" encoding="UTF-8"?>
<metadata>
  <versioning>
    <versions>
      <version>15-robolectric-12543294-i7</version>
      <version>15-robolectric-13954326-i7</version>
      <version>16-robolectric-13921718-i7</version>
      <version>5.0.2_r3-robolectric-r0-i7</version>
      <version>4.4_r1-robolectric-r2-i7</version>
    </versions>
  </versioning>
</metadata>
"""

_FAKE_SHAS = {
    "15-robolectric-13954326-i7": "a" * 64,
    "16-robolectric-13921718-i7": "b" * 64,
}


def _fake_fetch(url: str) -> bytes:
    if url == update_versions.METADATA_URL:
        return _METADATA_FIXTURE
    for version, sha in _FAKE_SHAS.items():
        suffix = f"/{version}/android-all-instrumented-{version}.jar.sha256"
        if url.endswith(suffix):
            return f"{sha}  android-all-instrumented-{version}.jar\n".encode("ascii")
    raise AssertionError(f"Unexpected fetch URL: {url}")


class EndToEndTest(unittest.TestCase):
    def _run_main(self, bzl_text: str) -> tuple[int, str]:
        with tempfile.NamedTemporaryFile("w", suffix=".bzl", delete=False) as f:
            f.write(bzl_text)
            bzl_path = Path(f.name)
        try:
            with mock.patch.object(update_versions, "fetch", side_effect=_fake_fetch), \
                 mock.patch.object(sys, "argv",
                                   ["update-versions.py", "--bzl", str(bzl_path)]):
                rc = update_versions.main()
            return rc, bzl_path.read_text()
        finally:
            bzl_path.unlink()

    def test_updates_existing_and_inserts_new(self):
        rc, result = self._run_main(_BZL_FIXTURE)
        self.assertEqual(rc, 0)

        # API 16 inserted at the top with the correct sha and indentation.
        self.assertIn(
            '    robolectric_version(\n'
            '        version = "16-robolectric-13921718-i7",\n'
            f'        sha256 = "{"b" * 64}",\n'
            '    ),\n',
            result,
        )
        # API 15 rewritten in place with the new build + sha.
        self.assertIn(
            '    robolectric_version(\n'
            '        version = "15-robolectric-13954326-i7",\n'
            f'        sha256 = "{"a" * 64}",\n'
            '    ),\n',
            result,
        )
        # Legacy 5.0.2_r3 untouched.
        self.assertIn(
            '    robolectric_version(\n'
            '        version = "5.0.2_r3-robolectric-r0-i7",\n'
            '        sha256 = "1111111111111111111111111111111111111111111111111111111111111111",\n'
            '    ),\n',
            result,
        )
        # Stale 15 build is gone.
        self.assertNotIn("12543294", result)
        # 4.4_r1 was on Maven but legacy-r-suffixed, so it must NOT be added.
        self.assertNotIn("4.4_r1", result)
        # New entry comes before the existing first entry.
        self.assertLess(result.index("16-robolectric"), result.index("15-robolectric"))

    def test_no_op_when_already_current(self):
        already_current = (
            'DEFAULT_AVAILABLE_VERSIONS = [\n'
            '    robolectric_version(\n'
            '        version = "16-robolectric-13921718-i7",\n'
            f'        sha256 = "{"b" * 64}",\n'
            '    ),\n'
            '    robolectric_version(\n'
            '        version = "15-robolectric-13954326-i7",\n'
            f'        sha256 = "{"a" * 64}",\n'
            '    ),\n'
            '    robolectric_version(\n'
            '        version = "5.0.2_r3-robolectric-r0-i7",\n'
            '        sha256 = "1111111111111111111111111111111111111111111111111111111111111111",\n'
            '    ),\n'
            ']\n'
        )
        rc, result = self._run_main(already_current)
        self.assertEqual(rc, 0)
        self.assertEqual(result, already_current)

    def test_dry_run_does_not_write(self):
        with tempfile.NamedTemporaryFile("w", suffix=".bzl", delete=False) as f:
            f.write(_BZL_FIXTURE)
            bzl_path = Path(f.name)
        try:
            with mock.patch.object(update_versions, "fetch", side_effect=_fake_fetch), \
                 mock.patch.object(
                     sys, "argv",
                     ["update-versions.py", "--bzl", str(bzl_path), "--dry-run"]):
                rc = update_versions.main()
            self.assertEqual(rc, 0)
            self.assertEqual(bzl_path.read_text(), _BZL_FIXTURE)
        finally:
            bzl_path.unlink()


if __name__ == "__main__":
    unittest.main()
