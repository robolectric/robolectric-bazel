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
        version = "15-robolectric-12650502-i7",
        sha256 = "33c2d7cc4186d4605269d5d411fa1818972c5b30a9f70bfbbd3d430b076af52f",
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
    robolectric_version(
        version = "5.1.1_r9-robolectric-r2-i7",
        sha256 = "f70b53f48ea81939afccb4f6611ca2f97b8574191a898367411ce73726ca32d7",
    ),
    robolectric_version(
        version = "5.0.2_r3-robolectric-r0-i7",
        sha256 = "a75483f03034182858b621164cf84baa9746d83782a3dcfd6bbefde78fd74478",
    ),
]

def robolectric_repositories():
    """Creates http_jar repositories for the given versions of Robolectric.
    """
    for v in DEFAULT_AVAILABLE_VERSIONS:
        http_file(name = v.name, url = v.url, downloaded_file_path = "android-all-instrumented-%s.jar" % (v.version), sha256 = v.sha256)
