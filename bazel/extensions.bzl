"""Definitions for bzlmod module extensions."""

load(":robolectric.bzl", "DEFAULT_AVAILABLE_VERSIONS", "robolectric_repositories")

def _configurations(modules):
    configurations = {}
    reserved = [v.name for v in DEFAULT_AVAILABLE_VERSIONS]
    for mod in modules:
        if mod.is_root:
            for config in mod.tags.configure:
                if config.name in configurations:
                    fail("Duplicate Robolectric configuration name: %s" % config.name)
                if config.name in reserved:
                    fail("Robolectric configuration name is reserved: %s" % config.name)
                configurations[config.name] = config.versions
    return configurations

def _robolectric_repository_extensions_impl(mctx):
    robolectric_repositories(configurations = _configurations(mctx.modules))
    return mctx.extension_metadata(reproducible = True)

robolectric_repository_extensions = module_extension(
    implementation = _robolectric_repository_extensions_impl,
    tag_classes = {
        "configure": tag_class(
            doc = "Define a runtime repository in the root module. Tags in dependencies are ignored.",
            attrs = {
                "name": attr.string(default = "robolectric_config"),
                "versions": attr.string_list(mandatory = True),
            },
        ),
    },
)

testing = struct(configurations = _configurations)
