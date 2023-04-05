load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load(":versions.bzl", _VERSIONS = "VERSIONS")

def robolectric_repositories(versions = _VERSIONS):
    """Installs the Robolectric dependencies."""
    for versions in _VERSIONS:
        http_jar(name = v.name, url = v.url, sha256 = v.sha256)
