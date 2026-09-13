"""Definitions for bzlmod module extensions."""

load(":robolectric.bzl", "robolectric_repositories")

def _configured_versions(modules):
    versions = None
    for mod in modules:
        if mod.is_root:
            if len(mod.tags.configure) > 1:
                fail("Only one Robolectric configure tag is allowed in the root module")
            for config in mod.tags.configure:
                versions = config.versions
    return versions

def _robolectric_repository_extensions_impl(mctx):
    robolectric_repositories(versions = _configured_versions(mctx.modules))
    return mctx.extension_metadata(reproducible = True)

robolectric_repository_extensions = module_extension(
    implementation = _robolectric_repository_extensions_impl,
    tag_classes = {
        "configure": tag_class(
            doc = "Select jars for the root module. Tags in dependencies are ignored.",
            attrs = {"versions": attr.string_list(mandatory = True)},
        ),
    },
)

testing = struct(configured_versions = _configured_versions)
