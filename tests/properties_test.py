"""Check exact properties entries and resolve them against the test's runfiles."""

from pathlib import Path
import sys
import unittest


properties = Path(sys.argv[1])
versions = sys.argv[2:]


class PropertiesTest(unittest.TestCase):
    def test_exact_runtimes_and_paths(self):
        lines = properties.read_text().splitlines()
        entries = dict(line.split("=", 1) for line in lines)
        expected_keys = {
            "org.robolectric\\:android-all-instrumented\\:" + version
            for version in versions
        }
        self.assertEqual(len(lines), len(entries), "Duplicate runtime entries")
        self.assertEqual(set(entries), expected_keys)
        for key, path in entries.items():
            with self.subTest(runtime=key):
                jar = properties.parent / path
                self.assertEqual(
                    jar.name,
                    "android-all-instrumented-" + key.split("\\:")[-1] + ".jar",
                )
                self.assertTrue(jar.is_file(), f"Missing runtime in runfiles: {jar}")


if __name__ == "__main__":
    unittest.main(argv=[sys.argv[0]])
