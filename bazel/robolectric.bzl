load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def robolectric_repositories():
    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_12.1_robolectric_8229987_i4",
        artifact = "org.robolectric:android-all-instrumented:12.1-robolectric-8229987-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "7cd7074babf0d08c3474714917b71fdfb67b9f98102589faabd92a4893673aa5",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_12_robolectric_7732740_i4",
        artifact = "org.robolectric:android-all-instrumented:12-robolectric-7732740-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "87daecd20ec5638e5c45bb899edc108d40dd0a7a8a7fe8f1707d8eecc50e67e8",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_11_robolectric_6757853_i4",
        artifact = "org.robolectric:android-all-instrumented:11-robolectric-6757853-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "a91d99f47c8d84f95d20b4540e111a56140441fe310f0110849a1ccb2604a680",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_10_robolectric_5803371_i4",
        artifact = "org.robolectric:android-all-instrumented:10-robolectric-5803371-i4",
        artifact_sha256 = "e8c9bb8f83ee66234add2beae31f9a56065ac94e33bf4212f670701fb41d1679",
        server_urls = ["https://repo1.maven.org/maven2"],
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_9_robolectric_4913185_2_i4",
        artifact = "org.robolectric:android-all-instrumented:9-robolectric-4913185-2-i4",
        artifact_sha256 = "50c0a262b8208c282a58053cdd14a77e8aa0aa87eddab2ee4f84673865daf9e3",
        server_urls = ["https://repo1.maven.org/maven2"],
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_8_1_0_robolectric_4611349_i4",
        artifact = "org.robolectric:android-all-instrumented:8.1.0-robolectric-4611349-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "7f0ca7fa335f68be40035391b6bb74383ba375f22efa0724a07d43e74c95b580",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_8_0_0_r4_robolectric_r1_i4",
        artifact = "org.robolectric:android-all-instrumented:8.0.0_r4-robolectric-r1-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "4e5b695b1cf438a1921e2a3fe55aa31814fbf8eae20ca06f82dd31644474f70b",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_7_1_0_r7_robolectric_r1_i4",
        artifact = "org.robolectric:android-all-instrumented:7.1.0_r7-robolectric-r1-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "34f39d7e5db1d352e2fcf05e076420d4372e351f225593425ff13805945d91b7",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_7_0_0_r1_robolectric_r1_i4",
        artifact = "org.robolectric:android-all-instrumented:7.0.0_r1-robolectric-r1-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "298ac4f4e76d6cc7bb7a51bda3ddf85b77bd3efc1ff4ff3f72b12a47e41632f8",
        licenses = ["notice"],
    )


    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_6_0_1_r3_robolectric_r1_i4",
        artifact = "org.robolectric:android-all-instrumented:6.0.1_r3-robolectric-r1-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "48a990e986408eafd5eb7c297962345c4039c64da41233a7bf09a66c0d3fea6f",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_5_1_1_r9_robolectric_r2_i4",
        artifact = "org.robolectric:android-all-instrumented:5.1.1_r9-robolectric-r2-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "165a408aaafd7a36a5fb6509decb63083583d7d20448afafca702980fa529bff",
        licenses = ["notice"],
    )


    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_5_0_2_r3_robolectric_r0_i4",
        artifact = "org.robolectric:android-all-instrumented:5.0.2_r3-robolectric-r0-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "e58f3acaad6b9ca7bb969a6b5b77b45781681309c6a3eb151671b95eb02307f7",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_4_r1_robolectric_r2_i4",
        artifact = "org.robolectric:android-all-instrumented:4.4_r1-robolectric-r2-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "59091549fc8b52f3135b50a5f59ba4c195721da2a1913f8e46440acf46765d5c",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_3_r2_robolectric_r1_i4",
        artifact = "org.robolectric:android-all-instrumented:4.3_r2-robolectric-r1-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "6e2e2c3121b2ae12d8b0f0151a83a4fe19861c57512ff026204070bc78d525b2",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_2_2_r1_2_robolectric_r1_i4",
        artifact = "org.robolectric:android-all-instrumented:4.2.2_r1.2-robolectric-r1-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "f210432d8102142945dd56ed2a93b89bc409e247af76ef0d02eda1c37835519e",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_1_2_r1_robolectric_r1_i4",
        artifact = "org.robolectric:android-all-instrumented:4.1.2_r1-robolectric-r1-i4",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "1373bee24da940c2dbfd4fa3f35842b6960c79e0da03f649b156221d2a3dfbeb",
        licenses = ["notice"],
    )
