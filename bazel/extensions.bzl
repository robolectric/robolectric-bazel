"""Definitions for bzlmod module extensions."""

load("@bazel_skylib//lib:modules.bzl", "modules")
load(":robolectric.bzl", "robolectric_repositories")

def _robolectric_repository_extensions_impl(mctx):
    robolectric_repositories()
    return modules.use_all_repos(mctx, reproducible = True)

robolectric_repository_extensions = module_extension(implementation = _robolectric_repository_extensions_impl)
