"""Definitions for bzlmod module extensions."""

load(":robolectric.bzl", "robolectric_repositories")

def _robolectric_repository_extensions_impl(_):
    robolectric_repositories()

robolectric_repository_extensions = module_extension(implementation = _robolectric_repository_extensions_impl)
