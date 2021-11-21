load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def robolectric_repositories():
    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_12_robolectric_7732740_i3",
        artifact = "org.robolectric:android-all-instrumented:12-robolectric-7732740-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "966eb54954297f4c182383ab2cc80a338082f3fe4e0a0508f0fa9f46ba81f2b9",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_11_robolectric_6757853_i3",
        artifact = "org.robolectric:android-all-instrumented:11-robolectric-6757853-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "0fe41631d86237dd23170468278401ace1a8d98ad4d71ae870d68912d6e4496d",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_10_robolectric_5803371_i3",
        artifact = "org.robolectric:android-all-instrumented:10-robolectric-5803371-i3",
        artifact_sha256 = "f9d96ce2753aed6f2187fe8f917b735578c01fd3799165e16127d79cb738f66d",
        server_urls = ["https://repo1.maven.org/maven2"],
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_9_robolectric_4913185_2_i3",
        artifact = "org.robolectric:android-all-instrumented:9-robolectric-4913185-2-i3",
        artifact_sha256 = "8b55e68cf516788e00c8d69052961f7ef9c6301bdd48936ab083626eefa546c5",
        server_urls = ["https://repo1.maven.org/maven2"],
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_8_1_0_robolectric_4611349_i3",
        artifact = "org.robolectric:android-all-instrumented:8.1.0-robolectric-4611349-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "b9bd2d2bb93c1f148b96046fa61b17eb4cfd757b73e32936bd4aa11da6cceb5d",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_8_0_0_r4_robolectric_r1_i3",
        artifact = "org.robolectric:android-all-instrumented:8.0.0_r4-robolectric-r1-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "0c0d6dc554e24e1031c1e983780f813f542110caa6ee3b315af6d5e4c0289371",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_7_1_0_r7_robolectric_r1_i3",
        artifact = "org.robolectric:android-all-instrumented:7.1.0_r7-robolectric-r1-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "f21a852a0f5422860c1df1f863d9b6acfe1495192cf05714f06943d5b183e2da",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_7_0_0_r1_robolectric_r1_i3",
        artifact = "org.robolectric:android-all-instrumented:7.0.0_r1-robolectric-r1-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "8ab52831d572bcc1b134e15e0d9fb5c00089ea298b4461ab589768f52fec5309",
        licenses = ["notice"],
    )


    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_6_0_1_r3_robolectric_r1_i3",
        artifact = "org.robolectric:android-all-instrumented:6.0.1_r3-robolectric-r1-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "f5398708cc84f3aed1d27382028c69e5a983e434194d186e0737aacb3dc94e51",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_5_1_1_r9_robolectric_r2_i3",
        artifact = "org.robolectric:android-all-instrumented:5.1.1_r9-robolectric-r2-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "b5a8cef7d9ea5b183d04d7d574fb1d8074c318957de74aae6cd751866f1ca682",
        licenses = ["notice"],
    )


    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_5_0_2_r3_robolectric_r0_i3",
        artifact = "org.robolectric:android-all-instrumented:5.0.2_r3-robolectric-r0-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "bb97d66cf64970bc7fd6bccd74e379f6cdba84c35fe98cee82c0b538f686a6ab",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_4_r1_robolectric_r2_i3",
        artifact = "org.robolectric:android-all-instrumented:4.4_r1-robolectric-r2-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "91857c835d5f1891f0432d6e874664603fd07ee20445372168ff2055996279b8",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_3_r2_robolectric_r1_i3",
        artifact = "org.robolectric:android-all-instrumented:4.3_r2-robolectric-r1-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "1dadb1b115c3b3b3228a08ade1b7b7230451ea4d49014886eaf702cc0412fe19",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_2_2_r1_2_robolectric_r1_i3",
        artifact = "org.robolectric:android-all-instrumented:4.2.2_r1.2-robolectric-r1-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "5ee56bb40cabd25d8cc9b8c233e3f5ced5d4df611a93d148278bdc4f768a42d5",
        licenses = ["notice"],
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_instrumented_4_1_2_r1_robolectric_r1_i3",
        artifact = "org.robolectric:android-all-instrumented:4.1.2_r1-robolectric-r1-i3",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "6c75f2b9423aa9c35761d2c5aefcd352ca8569b6a81b3bbae5ccb471f39f255d",
        licenses = ["notice"],
    )
