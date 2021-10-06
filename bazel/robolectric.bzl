load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def robolectric_repositories():
    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_11_robolectric_6757853_i1",
        artifact = "org.robolectric:android-all-instrumented:11-robolectric-6757853-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "eee277058d0547ed6b8b83efcf613fd64a621a61e3d8f74980c825f0c822638c",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_10_robolectric_5803371_i1",
        artifact = "org.robolectric:android-all-instrumented:10-robolectric-5803371-i1",
        artifact_sha256 = "1cb39d10a234bf9de90e187ce62d98966f3d00187cadcaab6c200fe901120f3e",
        server_urls = ["https://repo1.maven.org/maven2"],
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_9_robolectric_4913185_2_i1",
        artifact = "org.robolectric:android-all-instrumented:9-robolectric-4913185-2-i1",
        artifact_sha256 = "61d77411d7a0ae8d321dba735a6fc7c9e4bbabacb314a7aef5d1806e5f20c6b5",
        server_urls = ["https://repo1.maven.org/maven2"],
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_8_1_0_robolectric_4611349_i1",
        artifact = "org.robolectric:android-all-instrumented:8.1.0-robolectric-4611349-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "131de2037bfac731ad5e0fc4d36869d88414f07c6d43af0d6a38baea0f3ac02d",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_8_0_0_r4_robolectric_r1_i1",
        artifact = "org.robolectric:android-all-instrumented:8.0.0_r4-robolectric-r1-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "480a61c883669d2ed486ce4d9f22907c86e8616bc8cfd37b5e0141f34696ab62",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_7_1_0_r7_robolectric_r1_i1",
        artifact = "org.robolectric:android-all-instrumented:7.1.0_r7-robolectric-r1-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "ac691c9cf3feb5daeb26a32a2596138ea8af3985ce251ee39b4e7597499fd7a3",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_7_0_0_r1_robolectric_r1_i1",
        artifact = "org.robolectric:android-all-instrumented:7.0.0_r1-robolectric-r1-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "729716e43f207b77f156ce7bb93a3393f5029c7348eb6f069d6bfc55715e1a4d",
        licenses = ["notice"],
    )


    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_6_0_1_r3_robolectric_r1_i1",
        artifact = "org.robolectric:android-all-instrumented:6.0.1_r3-robolectric-r1-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "1fa614df8c1432142527fb58d91b5caa08f473f6b1e6671d4629da5967ed9930",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_5_1_1_r9_robolectric_r2_i1",
        artifact = "org.robolectric:android-all-instrumented:5.1.1_r9-robolectric-r2-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "2e537f9febe37a36f12ba67da3b752adbab67cadf0c81597e936df714c1a38b0",
        licenses = ["notice"],
    )


    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_5_0_2_r3_robolectric_r0_i1",
        artifact = "org.robolectric:android-all-instrumented:5.0.2_r3-robolectric-r0-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "92a75e2487218a7e2428b7a3f2e81c3db8c5ca6b637f3d9e19c95ef4efc92dc7",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_4_r1_robolectric_r2_i1",
        artifact = "org.robolectric:android-all-instrumented:4.4_r1-robolectric-r2-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "45fd77639161f51b2c72335ccccade45054ed72217d8f2451dceef3dc0135abb",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_3_r2_robolectric_r1_i1",
        artifact = "org.robolectric:android-all-instrumented:4.3_r2-robolectric-r1-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "7c72dd141bde753eefd1d7fb49effc60330c104e6a62a69882242440583fa636",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_2_2_r1_2_robolectric_r1_i1",
        artifact = "org.robolectric:android-all-instrumented:4.2.2_r1.2-robolectric-r1-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "d731a5aa3a83f15d505437f4e5df86bc78ab4fc84f188d54815c58d769c28329",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_1_2_r1_robolectric_r1_i1",
        artifact = "org.robolectric:android-all-instrumented:4.1.2_r1-robolectric-r1-i1",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "364ea38d9e4cc5ec1a28fb695dfeb3da520450dc933eafdf9f24db97ccef0a40",
        licenses = ["notice"],
    )
