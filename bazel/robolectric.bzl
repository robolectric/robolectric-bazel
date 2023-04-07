load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_jar")

def robolectric_version(version, sha256, url = None):
    """Define a struct representation of an instrumented Robolectric jar.

    Args:
        version: The version of the instrumented jar to download
        sha256: The sha256 of the downloaded instrumented jar
        url: The URL of the jar to download. If no URL is provided a default one will be used substituting
            in the provided version.
    """
    if not version:
        fail("version must be provided!")
    name = "org_robolectric_android_all_instrumented_%s" % version.replace(".", "_").replace("-", "_")

    if not url:
        url = "https://repo1.maven.org/maven2/org/robolectric/android-all-instrumented/%s/android-all-instrumented-%s.jar" % (version, version)
    if not sha256:
        fail("sha256 must be provided for %s being downloaded from %s" % (name, url))
    return struct(name = name, version = version, url = url, sha256 = sha256)

DEFAULT_AVALIABLE_VERSIONS = [
    robolectric_version(
        version = "13-robolectric-9030017-i4",
        sha256 = "12464e78dbbaf28680d6c8584e60bc069254866d92dffa426714cbcf4f7bf487",
    ),
    robolectric_version(
        version = "12.1-robolectric-8229987-i4",
        sha256 = "7cd7074babf0d08c3474714917b71fdfb67b9f98102589faabd92a4893673aa5",
    ),
    robolectric_version(
        version = "12-robolectric-7732740-i4",
        sha256 = "87daecd20ec5638e5c45bb899edc108d40dd0a7a8a7fe8f1707d8eecc50e67e8",
    ),
    robolectric_version(
        version = "11-robolectric-6757853-i4",
        sha256 = "a91d99f47c8d84f95d20b4540e111a56140441fe310f0110849a1ccb2604a680",
    ),
    robolectric_version(
        version = "10-robolectric-5803371-i4",
        sha256 = "e8c9bb8f83ee66234add2beae31f9a56065ac94e33bf4212f670701fb41d1679",
    ),
    robolectric_version(
        version = "9-robolectric-4913185-2-i4",
        sha256 = "50c0a262b8208c282a58053cdd14a77e8aa0aa87eddab2ee4f84673865daf9e3",
    ),
    robolectric_version(
        version = "8.1.0-robolectric-4611349-i4",
        sha256 = "7f0ca7fa335f68be40035391b6bb74383ba375f22efa0724a07d43e74c95b580",
    ),
    robolectric_version(
        version = "8.0.0_r4-robolectric-r1-i4",
        sha256 = "4e5b695b1cf438a1921e2a3fe55aa31814fbf8eae20ca06f82dd31644474f70b",
    ),
    robolectric_version(
        version = "7.1.0_r7-robolectric-r1-i4",
        sha256 = "34f39d7e5db1d352e2fcf05e076420d4372e351f225593425ff13805945d91b7",
    ),
    robolectric_version(
        version = "7.0.0_r1-robolectric-r1-i4",
        sha256 = "298ac4f4e76d6cc7bb7a51bda3ddf85b77bd3efc1ff4ff3f72b12a47e41632f8",
    ),
    robolectric_version(
        version = "6.0.1_r3-robolectric-r1-i4",
        sha256 = "48a990e986408eafd5eb7c297962345c4039c64da41233a7bf09a66c0d3fea6f",
    ),
    robolectric_version(
        version = "5.1.1_r9-robolectric-r2-i4",
        sha256 = "165a408aaafd7a36a5fb6509decb63083583d7d20448afafca702980fa529bff",
    ),
    robolectric_version(
        version = "5.0.2_r3-robolectric-r0-i4",
        sha256 = "e58f3acaad6b9ca7bb969a6b5b77b45781681309c6a3eb151671b95eb02307f7",
    ),
    robolectric_version(
        version = "4.4_r1-robolectric-r2-i4",
        sha256 = "59091549fc8b52f3135b50a5f59ba4c195721da2a1913f8e46440acf46765d5c",
    ),
    robolectric_version(
        version = "4.3_r2-robolectric-r1-i4",
        sha256 = "6e2e2c3121b2ae12d8b0f0151a83a4fe19861c57512ff026204070bc78d525b2",
    ),
    robolectric_version(
        version = "4.2.2_r1.2-robolectric-r1-i4",
        sha256 = "f210432d8102142945dd56ed2a93b89bc409e247af76ef0d02eda1c37835519e",
    ),
    robolectric_version(
        version = "4.1.2_r1-robolectric-r1-i4",
        sha256 = "1373bee24da940c2dbfd4fa3f35842b6960c79e0da03f649b156221d2a3dfbeb",
    ),
]

def robolectric_repositories():
    """Creates http_jar repositories for the given versions of Robolectric.
    """
    for v in DEFAULT_AVALIABLE_VERSIONS:
        http_jar(name = v.name, url = v.url, downloaded_file_name = "android-all-instrumented-%s.jar" % (v.version), sha256 = v.sha256)
