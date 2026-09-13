"""Robolectric repositories
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def robolectric_version(version, sha256, url = None):
    """Define a struct representation of an instrumented Robolectric jar.

    Args:
        version: The version of the instrumented jar to download
        sha256: The sha256 of the downloaded instrumented jar
        url: The URL of the jar to download. If no URL is provided a default one will be used substituting
            in the provided version.

    Returns:
        A struct containing the name, version, url, and sha256
    """
    if not version:
        fail("version must be provided!")
    name = "org_robolectric_android_all_instrumented_%s" % version.replace(".", "_").replace("-", "_")

    if not url:
        url = "https://repo1.maven.org/maven2/org/robolectric/android-all-instrumented/%s/android-all-instrumented-%s.jar" % (version, version)
    if not sha256:
        fail("sha256 must be provided for %s being downloaded from %s" % (name, url))
    return struct(name = name, version = version, url = url, sha256 = sha256)

DEFAULT_AVAILABLE_VERSIONS = [
    robolectric_version(
        version = "17-robolectric-15733970-i7",
        sha256 = "30a15243ba9a6a016361876facc75432f4ec5db0f9e27d4984a4a6b167b432bd",
    ),
    robolectric_version(
        version = "16-robolectric-13921718-i7",
        sha256 = "16f1f751643d1d3d5592008846bbdfc1e57cff15e6ec303d26584de3b6ac25ec",
    ),
    robolectric_version(
        version = "15-robolectric-13954326-i7",
        sha256 = "06c4c8602d6db7486266a982bc55834ed6dfebd62a0b88daca204139ecf142cb",
    ),
    robolectric_version(
        version = "14-robolectric-10818077-i7",
        sha256 = "3fdac2d463f431c6b8d83b9d0ca739e795de75fffedee648c6761bd4bd864701",
    ),
    robolectric_version(
        version = "13-robolectric-9030017-i7",
        sha256 = "1c3fd182c03d47626686ca3b39c4ec5bdb0898b1056f4eb8f96f32c6209a5c04",
    ),
    robolectric_version(
        version = "12.1-robolectric-8229987-i7",
        sha256 = "4bcf8fde62de31d0c6d6b98bd667abc9da526d46848d31284b5238ca6192c3ca",
    ),
    robolectric_version(
        version = "12-robolectric-7732740-i7",
        sha256 = "ee2dbe28bfe63ddce34a2d631c6168c131f78a4cb58caeb4d832988e936760cb",
    ),
    robolectric_version(
        version = "11-robolectric-6757853-i7",
        sha256 = "7f4accae465a47e75e7591877b98e71fb982a908cffc4ba4b3ca0319cb6a0a10",
    ),
    robolectric_version(
        version = "10-robolectric-5803371-i7",
        sha256 = "700fb3bb88ff346969b955241b86d2f55d395488bf5df1e8eddfbd003980c78a",
    ),
    robolectric_version(
        version = "9-robolectric-4913185-2-i7",
        sha256 = "dbb1c88987b54cef3132695a1b4d2f4851ba06286a6fa7d15772f98fd1f0cdf7",
    ),
    robolectric_version(
        version = "8.1.0-robolectric-4611349-i7",
        sha256 = "9aa87154e4b464edd7bd4f7f8870402599a2d90c14c660ed6907d42c7410e05f",
    ),
    robolectric_version(
        version = "8.0.0_r4-robolectric-r1-i7",
        sha256 = "712196356bf61fbcb186f41135c33e6d3416be31543d7be120a33bc898cc1208",
    ),
    robolectric_version(
        version = "7.1.0_r7-robolectric-r1-i7",
        sha256 = "435b1e65810c49198f2456afcb4709b16f98c43ab36f0a2957dfb0fbec7df7ec",
    ),
    robolectric_version(
        version = "7.0.0_r1-robolectric-r1-i7",
        sha256 = "57dc8d57a5d69adacf3aa4306aefbf147bd1621da347e20f3cf1f41c88a5dd49",
    ),
    robolectric_version(
        version = "6.0.1_r3-robolectric-r1-i7",
        sha256 = "bc9148d548ce6875f0df9aadb0535ef2e3a5a8cf385f47a5c6c4060a7aab4e75",
    ),
]

def _robolectric_config_impl(ctx):
    ctx.file("BUILD.bazel", "exports_files([\"versions.bzl\"])\n")
    ctx.file("versions.bzl", "SELECTED_REPOSITORIES = %r\n" % ctx.attr.repositories)

_robolectric_config = repository_rule(
    implementation = _robolectric_config_impl,
    attrs = {"repositories": attr.string_list()},
)

def _selected_versions(versions):
    available = [v.version for v in DEFAULT_AVAILABLE_VERSIONS]
    if versions == None:
        versions = available
    for version in versions:
        if version not in available:
            fail("Unknown Robolectric version %r. Available versions: %s" % (version, available))
    return [v for v in DEFAULT_AVAILABLE_VERSIONS if v.version in versions]

def robolectric_repositories(versions = None):
    """Registers Robolectric jars and selects which ones the aggregate targets use.

    Args:
        versions: Instrumented version strings to include. None selects all defaults;
            an empty list selects none. Existing repository names remain available.
    """
    selected = _selected_versions(versions)

    _robolectric_config(
        name = "robolectric_config",
        repositories = [v.name for v in selected],
    )

    # Keep existing repository labels valid; Bazel only fetches jars when used.
    for v in DEFAULT_AVAILABLE_VERSIONS:
        http_file(name = v.name, url = v.url, downloaded_file_path = "android-all-instrumented-%s.jar" % (v.version), sha256 = v.sha256)

testing = struct(selected_versions = _selected_versions)
