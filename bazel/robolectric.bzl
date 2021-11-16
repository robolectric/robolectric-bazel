load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def robolectric_repositories():
    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_12_robolectric_7732740_i2",
        artifact = "org.robolectric:android-all-instrumented:12-robolectric-7732740-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "2873583af916aef29b9458e6a4bf0a9764619daab3b1962c601a1b1373958e42",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_11_robolectric_6757853_i2",
        artifact = "org.robolectric:android-all-instrumented:11-robolectric-6757853-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "4f94949e460c45faa55140a027eebe763a8061760c754dc08512cb01f838ae87",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_10_robolectric_5803371_i2",
        artifact = "org.robolectric:android-all-instrumented:10-robolectric-5803371-i2",
        artifact_sha256 = "0f182be1f871d0c5f86a04fe1087d7872fb85047ae59038f863a6b5411b82bff",
        server_urls = ["https://repo1.maven.org/maven2"],
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_9_robolectric_4913185_2_i2",
        artifact = "org.robolectric:android-all-instrumented:9-robolectric-4913185-2-i2",
        artifact_sha256 = "94e2ddf4c8578f6ffe05764979deda3b61dbad1a0f610179abc7418171fa2c4d",
        server_urls = ["https://repo1.maven.org/maven2"],
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_8_1_0_robolectric_4611349_i2",
        artifact = "org.robolectric:android-all-instrumented:8.1.0-robolectric-4611349-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "25bc9fceca6875e6f423a1c9477a1e84344f8929f9aa323f20abbfa4d727588a",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_8_0_0_r4_robolectric_r1_i2",
        artifact = "org.robolectric:android-all-instrumented:8.0.0_r4-robolectric-r1-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "57c5af7ecc702f4c120b07585c6b9c1413e221002f57663908cc41bd227aab2b",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_7_1_0_r7_robolectric_r1_i2",
        artifact = "org.robolectric:android-all-instrumented:7.1.0_r7-robolectric-r1-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "4c6f7b6726da446de0d4dfb7b5571c462aa4f26271d92d44d2597076d4bca1e9",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_7_0_0_r1_robolectric_r1_i2",
        artifact = "org.robolectric:android-all-instrumented:7.0.0_r1-robolectric-r1-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "300a39fe37e8604339790bc65d5e6c5d3526ffcbe6581ab4b0a27ee8b7f175c5",
        licenses = ["notice"],
    )


    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_6_0_1_r3_robolectric_r1_i2",
        artifact = "org.robolectric:android-all-instrumented:6.0.1_r3-robolectric-r1-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "4015ab9f6f5d028a84adc308ce7ba692a562a2ebbf2149b0a476c1bab1751802",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_5_1_1_r9_robolectric_r2_i2",
        artifact = "org.robolectric:android-all-instrumented:5.1.1_r9-robolectric-r2-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "9991937f7b101cb3f98a36c66d15d785bbec2f55ee7dbd6b5ce2244cc3c99e1d",
        licenses = ["notice"],
    )


    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_5_0_2_r3_robolectric_r0_i2",
        artifact = "org.robolectric:android-all-instrumented:5.0.2_r3-robolectric-r0-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "641d83f8f9437841846b10aa141f5d36462fc0de21ddd8dbe24b9879bbedd9ba",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_4_r1_robolectric_r2_i2",
        artifact = "org.robolectric:android-all-instrumented:4.4_r1-robolectric-r2-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "951d0a5c2d92c698c28a635f5a8a503d33d06389cbe3f4236b0e8324e383acc8",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_3_r2_robolectric_r1_i2",
        artifact = "org.robolectric:android-all-instrumented:4.3_r2-robolectric-r1-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "c9f3d87be2c00dde2026f4ea69b77152cb787321d5d2520438097ceb5b41d7de",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_2_2_r1_2_robolectric_r1_i2",
        artifact = "org.robolectric:android-all-instrumented:4.2.2_r1.2-robolectric-r1-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "e42c38bf6f96c2cd19fa36918eaac254c82b7fd65d892588c4dfe1776f0b1f5a",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_1_2_r1_robolectric_r1_i2",
        artifact = "org.robolectric:android-all-instrumented:4.1.2_r1-robolectric-r1-i2",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "73f7654a4333049c0020ae9f5f249bb41da51e1a998728650450d2831fcf2c9b",
        licenses = ["notice"],
    )
