"""Robolectric repositories
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_jar")

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
        version = "14-robolectric-10818077-i6",
        sha256 = "7d7c075c4194778786c3e00e7aaa4f44feb6a5be68c0b194f5043a762c3f0927",
    ),
    robolectric_version(
        version = "13-robolectric-9030017-i6",
        sha256 = "3e2bd0be7324958905b55658098120b461ace976de1af3e242890782970e766c",
    ),
    robolectric_version(
        version = "12.1-robolectric-8229987-i6",
        sha256 = "999396577199d705d28a26d42a411addb87cbf01b1c909ae6d85dcc59763ab2b",
    ),
    robolectric_version(
        version = "12-robolectric-7732740-i6",
        sha256 = "282e3130e90b7e292a8e9cb1d771f67715ea8906ab4dbf84385ff32c504aec0f",
    ),
    robolectric_version(
        version = "11-robolectric-6757853-i6",
        sha256 = "18ec8d885595364f4e24ac9ac376e6a777121ba76d48be673560b5ae088c98ad",
    ),
    robolectric_version(
        version = "10-robolectric-5803371-i6",
        sha256 = "3be5f1a35a0e1e378907f0052635bb831efa51253ace37954e10b34e68207a00",
    ),
    robolectric_version(
        version = "9-robolectric-4913185-2-i6",
        sha256 = "20c7c3d1dba85bbc96ffdfabf2e3eefbdad455927691e4897096125d09bf58ea",
    ),
    robolectric_version(
        version = "8.1.0-robolectric-4611349-i6",
        sha256 = "c069698a2df8978f95d817632e84127b58559772af4e84ec27c1cc7a664ff533",
    ),
    robolectric_version(
        version = "8.0.0_r4-robolectric-r1-i6",
        sha256 = "97d48d8eec2aef188b03aa7dccd09350a70f54c01914f9115caf542d21f5f52c",
    ),
    robolectric_version(
        version = "7.1.0_r7-robolectric-r1-i6",
        sha256 = "4562790521a1cd36c3cb1d94b2869e116eb785e38b288204b9d4d308738570a6",
    ),
    robolectric_version(
        version = "7.0.0_r1-robolectric-r1-i6",
        sha256 = "6f3c7970ed2249419080760feb9db10437d1d95b9cfd41319fb0f3abd399225f",
    ),
    robolectric_version(
        version = "6.0.1_r3-robolectric-r1-i6",
        sha256 = "afcafc1dec9fda3162a079683ac7d2f031b64e71c4c805dce482046beed4c52c",
    ),
    robolectric_version(
        version = "5.1.1_r9-robolectric-r2-i6",
        sha256 = "e8d934df3670a99baeee3258c90399dde16174154fbba916a0d64c4eb7a5822e",
    ),
    robolectric_version(
        version = "5.0.2_r3-robolectric-r0-i6",
        sha256 = "c3dc0f55896d26916157ea30c8886cfad6d091e3c8408e9edb46e124b1256c0d",
    ),
    robolectric_version(
        version = "4.4_r1-robolectric-r2-i6",
        sha256 = "7a5f15d34caec9a957c6e7b03d2cbd16645c3ce78024f3d38cbc2288724c2522",
    ),
]

def robolectric_repositories():
    """Creates http_jar repositories for the given versions of Robolectric.
    """
    for v in DEFAULT_AVAILABLE_VERSIONS:
        http_jar(name = v.name, url = v.url, downloaded_file_name = "android-all-instrumented-%s.jar" % (v.version), sha256 = v.sha256)
