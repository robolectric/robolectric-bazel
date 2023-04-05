load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_jar")
load(":versions.bzl", _VERSIONS = "VERSIONS")

def robolectric_repositories():
    """Creates http_jar repositories for the given versions of Robolectric.
    """
    for v in _VERSIONS:
        http_jar(name = v.name, url = v.url, sha256 = v.sha256)
