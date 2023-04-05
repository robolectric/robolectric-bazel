load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_jar")
load(":versions.bzl", _VERSIONS = "VERSIONS")

def robolectric_repositories(versions = _VERSIONS):
    """Installs the Robolectric dependencies."""
    for v in _VERSIONS:
        http_jar(name = v.name, url = v.url, sha256 = v.sha256)
