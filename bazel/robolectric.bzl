load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def robolectric_repositories():
    jvm_maven_import_external(
        name = "org_robolectric_android_all_11_robolectric_6757853",
        artifact = "org.robolectric:android-all:11-robolectric-6757853",
        server_urls = ["https://repo1.maven.org/maven2"],
        artifact_sha256 = "62f577ca49f62f0da5d6a2a839d80ef377054b9ccd14811035593bf351295b31",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_10_robolectric_5803371",
        artifact = "org.robolectric:android-all:10-robolectric-5803371",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "a0ad701eedd47bdaefbac1c2cc80dd400c0adea3cccd8a3ad286f79da1ca294c",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_9_robolectric_4913185_2",
        artifact = "org.robolectric:android-all:9-robolectric-4913185-2",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "cf4aed5e458deb48ddc0ca92fc25156e6f478d9d5c1d948cdd1817a67ee11b32",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_8_1_0_robolectric_4611349",
        artifact = "org.robolectric:android-all:8.1.0-robolectric-4611349",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "01b3364bc0b4ca099929aa4d818529c7ec05e18b9e4c1e667f99955b16ae19b4",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_8_0_0_r4_robolectric_r1",
        artifact = "org.robolectric:android-all:8.0.0_r4-robolectric-r1",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "3707dc100381e3bbcc57b85255fd313ae20875fc65cf3130c47e86f044ad77f0",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_7_1_0_r7_robolectric_r1",
        artifact = "org.robolectric:android-all:7.1.0_r7-robolectric-r1",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "6eb4a8049ff343cace89469441215ee14a1ee90295059729ece51821c078248d",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_7_0_0_r1_robolectric_r1",
        artifact = "org.robolectric:android-all:7.0.0_r1-robolectric-r1",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "567bfa3cd3a8c9c5ca736bd86b3f90ff4d6a7ba333b9cfea6ff7d81924f90ce9",
        licenses = ["notice"]
    )


    jvm_maven_import_external(
        name = "org_robolectric_android_all_6_0_1_r3_robolectric_r1",
        artifact = "org.robolectric:android-all:6.0.1_r3-robolectric-r1",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "a2d84271c5f033b1d082741a02f37a2d043120c0c09e5854e97ece9c3bb11d31",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_5_1_1_r9_robolectric_r2",
        artifact = "org.robolectric:android-all:5.1.1_r9-robolectric-r2",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "edced221f686f89ad592b3354bb7fbfeca8537268298cc0d8a2b0b62e740316a",
        licenses = ["notice"]
    )


    jvm_maven_import_external(
        name = "org_robolectric_android_all_5_0_2_r3_robolectric_r0",
        artifact = "org.robolectric:android-all:5.0.2_r3-robolectric-r0",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "5e63d4c7f2c691afed648bf0675e0b0a76d19f0e23d93705f4faf9ed3b2734de",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_4_4_r1_robolectric_r2",
        artifact = "org.robolectric:android-all:4.4_r1-robolectric-r2",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "5c68ab0a11d6f46e303505e75da62215f45b6a46ff7877441a31d527899359f9",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_4_3_r2_robolectric_r1",
        artifact = "org.robolectric:android-all:4.3_r2-robolectric-r1",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "c3ffdc8a561682b1ae89c94b1d074575f4ccae92c34a7d8c25b819e0828e3495",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_4_2_2_r1_2_robolectric_r1",
        artifact = "org.robolectric:android-all:4.2.2_r1.2-robolectric-r1",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "a6c478c3dd8d6f06c0fb9652ed48539e225934f5433a3268dc0053b24ccfe7a2",
        licenses = ["notice"]
    )

    jvm_maven_import_external(
        name = "org_robolectric_android_all_4_1_2_r1_robolectric_r1",
        artifact = "org.robolectric:android-all:4.1.2_r1-robolectric-r1",
        server_urls = ["https://repo1.maven.org/maven2", "https://jcenter.bintray.com"],
        artifact_sha256 = "99c9629f0dc47e20e3a44eec61cabd09a74a98f315c534edfe82c1952057c313",
        licenses = ["notice"]
    )
