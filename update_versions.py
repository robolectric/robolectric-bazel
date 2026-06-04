#!/usr/bin/env python3
"""Update DEFAULT_AVAILABLE_VERSIONS in bazel/robolectric.bzl.

Walks the Maven Central artifact
    org.robolectric:android-all-instrumented
and updates bazel/robolectric.bzl with both:

  1. New releases of Android APIs already in the list — the version and sha256
     are rewritten in place (highest instrumentation version, then highest
     robolectric build number).
  2. Entirely new Android APIs (numeric ones newer than the highest currently
     in the list) — a new robolectric_version(...) entry is inserted at the
     top with its sha256.

Legacy r-suffixed APIs (e.g. 4.4_r1) that are not already present are never
auto-added; removal is treated as intentional.

Usage:
    bazel run //:update-versions -- [--bzl PATH] [--dry-run]
"""

from __future__ import annotations

import argparse
import re
import sys
import urllib.request
import xml.etree.ElementTree as ET
from pathlib import Path

MAVEN_BASE = "https://repo1.maven.org/maven2/org/robolectric/android-all-instrumented"
METADATA_URL = f"{MAVEN_BASE}/maven-metadata.xml"

# Matches a single robolectric_version(...) block, capturing the version and sha256.
ENTRY_RE = re.compile(
    r'(?P<head>robolectric_version\(\s*\n\s*version\s*=\s*")'
    r'(?P<version>[^"]+)'
    r'(?P<mid>"\s*,\s*\n\s*sha256\s*=\s*")'
    r"(?P<sha>[0-9a-fA-F]+)"
    r'(?P<tail>")'
)

# Parses e.g. "16-robolectric-13921718-i7" or "9-robolectric-4913185-2-i7".
VERSION_RE = re.compile(
    r"^(?P<api>.+?)-robolectric-(?P<build>[^-]+)(?:-(?P<rev>\d+))?-i(?P<inst>\d+)$"
)


def fetch(url: str) -> bytes:
    req = urllib.request.Request(url, headers={"User-Agent": "robolectric-bzl-updater"})
    with urllib.request.urlopen(req, timeout=30) as resp:
        return resp.read()


def all_versions() -> list[str]:
    tree = ET.fromstring(fetch(METADATA_URL))
    return [v.text for v in tree.findall("./versioning/versions/version") if v.text]


def parse(version: str):
    m = VERSION_RE.match(version)
    if not m:
        return None
    api = m.group("api")
    build = m.group("build")
    rev = int(m.group("rev")) if m.group("rev") else 0
    inst = int(m.group("inst"))
    # Build can be a CI number like "13921718" or an "rN" tag for older releases.
    if build.isdigit():
        build_key = (1, int(build))
    elif build.startswith("r") and build[1:].isdigit():
        build_key = (0, int(build[1:]))
    else:
        build_key = (-1, 0)
    return api, (inst, build_key, rev)


def latest_per_api(versions: list[str]) -> dict[str, str]:
    groups: dict[str, list[tuple]] = {}
    for v in versions:
        p = parse(v)
        if p is None:
            continue
        api, key = p
        groups.setdefault(api, []).append((key, v))
    return {api: max(items)[1] for api, items in groups.items()}


def numeric_api_key(api: str) -> tuple[int, ...] | None:
    """Parse a purely-numeric Android API string into a sortable tuple.

    Returns None for legacy r-suffixed APIs like "8.0.0_r4" so they're not
    auto-added when missing.
    """
    if re.fullmatch(r"\d+(?:\.\d+)*", api):
        return tuple(int(p) for p in api.split("."))
    return None


def sha256_for(version: str) -> str:
    url = f"{MAVEN_BASE}/{version}/android-all-instrumented-{version}.jar.sha256"
    return fetch(url).decode("ascii").strip().split()[0].lower()


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Update DEFAULT_AVAILABLE_VERSIONS in robolectric.bzl."
    )
    default_bzl = Path(__file__).resolve().parent / "bazel" / "robolectric.bzl"
    parser.add_argument(
        "--bzl",
        type=Path,
        default=default_bzl,
        help=f"path to robolectric.bzl (default: {default_bzl})",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="print planned changes without writing the file",
    )
    args = parser.parse_args()

    text = args.bzl.read_text()
    entries = list(ENTRY_RE.finditer(text))
    if not entries:
        print(f"No robolectric_version() entries found in {args.bzl}", file=sys.stderr)
        return 1

    print(f"Fetching {METADATA_URL}", file=sys.stderr)
    latest = latest_per_api(all_versions())

    # Plan in-place updates for entries already in the bzl. Building against
    # the original text, then applying in reverse, keeps earlier spans valid.
    updates = []
    existing_apis: set[str] = set()
    for m in entries:
        old_version = m.group("version")
        parsed = parse(old_version)
        if parsed is None:
            print(f"[skip] cannot parse {old_version!r}", file=sys.stderr)
            continue
        api = parsed[0]
        existing_apis.add(api)
        new_version = latest.get(api)
        if new_version is None:
            print(f"[skip] no remote versions for API {api}", file=sys.stderr)
            continue
        if new_version == old_version:
            print(f"[ ok ] {api}: {old_version}", file=sys.stderr)
            continue
        print(f"[ up ] {api}: {old_version} -> {new_version}", file=sys.stderr)
        updates.append((m, new_version, sha256_for(new_version)))

    # Find numeric APIs on Maven Central that are newer than the highest
    # numeric API already present, and queue them as new entries.
    max_existing = max(
        (k for k in (numeric_api_key(a) for a in existing_apis) if k is not None),
        default=(),
    )
    additions = []
    for api, version in latest.items():
        if api in existing_apis:
            continue
        key = numeric_api_key(api)
        if key is None or key <= max_existing:
            continue
        additions.append((key, api, version))
    additions.sort(reverse=True)
    additions = [(api, version, sha256_for(version)) for _, api, version in additions]
    for api, version, _ in additions:
        print(f"[ new] {api}: {version}", file=sys.stderr)

    if not updates and not additions:
        print("No updates needed.", file=sys.stderr)
        return 0

    new_text = text
    for m, new_version, new_sha in reversed(updates):
        replacement = (
            f"{m.group('head')}{new_version}{m.group('mid')}{new_sha}{m.group('tail')}"
        )
        new_text = new_text[: m.start()] + replacement + new_text[m.end() :]

    if additions:
        insertion = "".join(
            f"robolectric_version(\n"
            f'        version = "{v}",\n'
            f'        sha256 = "{s}",\n'
            f"    ),\n"
            f"    "
            for _, v, s in additions
        )
        insert_at = entries[0].start()
        new_text = new_text[:insert_at] + insertion + new_text[insert_at:]

    total = len(updates) + len(additions)
    if args.dry_run:
        print(f"\n[dry-run] {total} change(s) not written.", file=sys.stderr)
        return 0

    args.bzl.write_text(new_text)
    print(f"Wrote {total} change(s) to {args.bzl}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
