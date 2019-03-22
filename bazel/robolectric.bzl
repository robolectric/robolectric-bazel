def android_all_jars():
    native.maven_jar(
        name = "org_robolectric_android_all_9_robolectric_4913185_2",
        artifact = "org.robolectric:android-all:9-robolectric-4913185-2",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_8_1_0_robolectric_4611349",
        artifact = "org.robolectric:android-all:8.1.0-robolectric-4611349",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_8_0_0_r4_robolectric_r1",
        artifact = "org.robolectric:android-all:8.0.0_r4-robolectric-r1",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_7_1_0_r7_robolectric_r1",
        artifact = "org.robolectric:android-all:7.1.0_r7-robolectric-r1",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_7_0_0_r1_robolectric_r1",
        artifact = "org.robolectric:android-all:7.0.0_r1-robolectric-r1",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_6_0_1_r3_robolectric_r1",
        artifact = "org.robolectric:android-all:6.0.1_r3-robolectric-r1",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_5_1_1_r9_robolectric_r2",
        artifact = "org.robolectric:android-all:5.1.1_r9-robolectric-r2",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_5_0_2_r3_robolectric_r0",
        artifact = "org.robolectric:android-all:5.0.2_r3-robolectric-r0",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_4_4_r1_robolectric_r2",
        artifact = "org.robolectric:android-all:4.4_r1-robolectric-r2",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_4_3_r2_robolectric_r1",
        artifact = "org.robolectric:android-all:4.3_r2-robolectric-r1",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_4_2_2_r1_2_robolectric_r1",
        artifact = "org.robolectric:android-all:4.2.2_r1.2-robolectric-r1",
    )

    native.maven_jar(
        name = "org_robolectric_android_all_4_1_2_r1_robolectric_r1",
        artifact = "org.robolectric:android-all:4.1.2_r1-robolectric-r1",
    )

# The following dependencies were calculated from:
#
# generate_workspace --artifact=org.robolectric:robolectric:4.0.2 --repositories=https://central.maven.org/maven2/ --repositories=https://jcenter.bintray.com --repositories=https://maven.google.com


def generated_maven_jars():
  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.apache.maven:maven-settings:jar:2.2.1 got requested version
  # org.apache.maven:maven-artifact-manager:jar:2.2.1 got requested version
  # org.apache.maven:maven-error-diagnostics:jar:2.2.1 got requested version
  # org.apache.maven:maven-profile:jar:2.2.1 got requested version
  # org.apache.maven:maven-project:jar:2.2.1 got requested version
  # org.apache.maven:maven-plugin-registry:jar:2.2.1 got requested version
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_container_default",
      artifact = "org.codehaus.plexus:plexus-container-default:1.0-alpha-9-stable-1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "94aea3010e250a334d9dab7f591114cd6c767458",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  native.maven_jar(
      name = "org_apache_maven_maven_error_diagnostics",
      artifact = "org.apache.maven:maven-error-diagnostics:2.2.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "e81bb342d7d172f23d108dc8fa979a1facdcde8e",
  )


  # org.robolectric:utils:jar:4.0.2 got requested version
  # org.robolectric:sandbox:jar:4.0.2 got requested version
  # org.robolectric:shadows-framework:jar:4.0.2 got requested version
  # org.robolectric:robolectric:jar:4.0.2
  # org.robolectric:junit:jar:4.0.2 got requested version
  # org.robolectric:resources:jar:4.0.2 got requested version
  native.maven_jar(
      name = "org_robolectric_annotations",
      artifact = "org.robolectric:annotations:4.0.2",
      repository = "https://jcenter.bintray.com/",
      sha1 = "85fe30eba3d9500615ede75f8a692a8e90ebcbff",
  )


  # com.google.android.apps.common.testing.accessibility.framework:accessibility-test-framework:jar:2.1
  native.maven_jar(
      name = "com_google_protobuf_protobuf_java",
      artifact = "com.google.protobuf:protobuf-java:2.6.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "d9521f2aecb909835746b7a5facf612af5e890e8",
  )


  # org.robolectric:robolectric:jar:4.0.2
  native.maven_jar(
      name = "androidx_test_monitor",
      artifact = "androidx.test:monitor:1.1.0",
      repository = "https://maven.google.com/",
  )


  # org.ow2.asm:asm-commons:jar:7.0 got requested version
  # org.ow2.asm:asm-tree:jar:7.0 got requested version
  # org.robolectric:sandbox:jar:4.0.2
  native.maven_jar(
      name = "org_ow2_asm_asm",
      artifact = "org.ow2.asm:asm:7.0",
      repository = "https://jcenter.bintray.com/",
      sha1 = "d74d4ba0dee443f68fb2dcb7fcdb945a2cd89912",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.apache.maven:maven-project:jar:2.2.1 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_artifact_manager",
      artifact = "org.apache.maven:maven-artifact-manager:2.2.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "ec355b913c34d37080810f98e3f51abecbe1572b",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_file",
      artifact = "org.apache.maven.wagon:wagon-file:1.0-beta-6",
      repository = "https://jcenter.bintray.com/",
      sha1 = "6c53633505460caf49d2660de1e24744d915afb9",
  )


  # org.apache.maven:maven-artifact-manager:jar:2.2.1
  native.maven_jar(
      name = "org_apache_maven_maven_repository_metadata",
      artifact = "org.apache.maven:maven-repository-metadata:2.2.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "98f0c07fcf1eeb213bef8d9316a9935184084b06",
  )


  # org.robolectric:robolectric:jar:4.0.2
  native.maven_jar(
      name = "org_robolectric_junit",
      artifact = "org.robolectric:junit:4.0.2",
      repository = "https://jcenter.bintray.com/",
      sha1 = "145a91e70af0c310830725ef37b7b202ca1b990d",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.apache.maven:maven-settings:jar:2.2.1 got requested version
  # org.apache.maven:maven-profile:jar:2.2.1 got requested version
  # org.apache.maven:maven-project:jar:2.2.1 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_model",
      artifact = "org.apache.maven:maven-model:2.2.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "c0a1c17436ec3ff5a56207c031d82277b4250a29",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.apache.maven:maven-artifact-manager:jar:2.2.1 got requested version
  # org.apache.maven:maven-project:jar:2.2.1 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_artifact",
      artifact = "org.apache.maven:maven-artifact:2.2.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "23600f790d4dab2cb965419eaa982e3e84c428f8",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_http_lightweight",
      artifact = "org.apache.maven.wagon:wagon-http-lightweight:1.0-beta-6",
      repository = "https://jcenter.bintray.com/",
      sha1 = "b3815078570c3b1f0667e123d59717c6b726c6c2",
  )


  # org.robolectric:sandbox:jar:4.0.2 got requested version
  # org.robolectric:annotations:jar:4.0.2
  # org.robolectric:junit:jar:4.0.2 got requested version
  native.maven_jar(
      name = "org_robolectric_shadowapi",
      artifact = "org.robolectric:shadowapi:4.0.2",
      repository = "https://jcenter.bintray.com/",
      sha1 = "093ac412550c18147f765479adb01dc077bd78f2",
  )


  # org.robolectric:shadows-framework:jar:4.0.2
  native.maven_jar(
      name = "com_almworks_sqlite4java_sqlite4java",
      artifact = "com.almworks.sqlite4java:sqlite4java:0.282",
      repository = "https://jcenter.bintray.com/",
      sha1 = "745a7e2f35fdbe6336922e0d492c979dbbfa74fb",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.apache.maven:maven-settings:jar:2.2.1 got requested version
  # org.apache.maven:maven-profile:jar:2.2.1 got requested version
  # org.apache.maven:maven-project:jar:2.2.1 got requested version
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_interpolation",
      artifact = "org.codehaus.plexus:plexus-interpolation:1.11",
      repository = "https://jcenter.bintray.com/",
      sha1 = "ad9dddff6043194904ad1d2c00ff1d003c3915f7",
  )


  # org.apache.maven.wagon:wagon-http-lightweight:jar:1.0-beta-6
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_http_shared",
      artifact = "org.apache.maven.wagon:wagon-http-shared:1.0-beta-6",
      repository = "https://jcenter.bintray.com/",
      sha1 = "ccd70d7e0d8c085e648a83f072da06ca9a53be94",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  native.maven_jar(
      name = "org_apache_maven_maven_project",
      artifact = "org.apache.maven:maven-project:2.2.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "8239e98c16f641d55a4ad0e0bab0aee3aff8933f",
  )


  # com.google.android.apps.common.testing.accessibility.framework:accessibility-test-framework:jar:2.1
  native.maven_jar(
      name = "org_hamcrest_hamcrest_library",
      artifact = "org.hamcrest:hamcrest-library:1.3",
      repository = "https://jcenter.bintray.com/",
      sha1 = "4785a3c21320980282f9f33d0d1264a69040538f",
  )


  # androidx.test:monitor:aar:1.1.0
  native.maven_jar(
      name = "androidx_annotation_annotation",
      artifact = "androidx.annotation:annotation:1.0.0",
      repository = "https://maven.google.com/",
      sha1 = "45599f2cd5965ac05a1488fa2a5c0cdd7c499ead",
  )


  # org.robolectric:shadows-framework:jar:4.0.2 got requested version
  # org.robolectric:robolectric:jar:4.0.2
  native.maven_jar(
      name = "org_robolectric_resources",
      artifact = "org.robolectric:resources:4.0.2",
      repository = "https://jcenter.bintray.com/",
      sha1 = "60865d27446b2be462382e35dbd8a4fa9f591455",
  )


  # org.robolectric:robolectric:jar:4.0.2
  native.maven_jar(
      name = "org_robolectric_shadows_framework",
      artifact = "org.robolectric:shadows-framework:4.0.2",
      repository = "https://jcenter.bintray.com/",
      sha1 = "3bf4e4e4c8379dde73e95a15577ea48c799d9ac8",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3 got requested version
  # org.robolectric:robolectric:jar:4.0.2
  native.maven_jar(
      name = "org_apache_ant_ant",
      artifact = "org.apache.ant:ant:1.8.0",
      repository = "https://jcenter.bintray.com/",
      sha1 = "7b456ca6b93900f96e58cc8371f03d90a9c1c8d1",
  )


  # org.robolectric:shadows-framework:jar:4.0.2
  native.maven_jar(
      name = "com_ibm_icu_icu4j",
      artifact = "com.ibm.icu:icu4j:53.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "786d9055d4ca8c1aab4a7d4ac8283f973fd7e41f",
  )


  # org.robolectric:robolectric:jar:4.0.2
  native.maven_jar(
      name = "org_apache_maven_maven_ant_tasks",
      artifact = "org.apache.maven:maven-ant-tasks:2.1.3",
      repository = "https://jcenter.bintray.com/",
      sha1 = "b09be554228d66d208e5fef5266844aacf443abc",
  )


  # org.codehaus.plexus:plexus-container-default:jar:1.0-alpha-9-stable-1
  # org.apache.maven:maven-repository-metadata:jar:2.2.1 wanted version 1.5.15
  # org.apache.maven:maven-settings:jar:2.2.1 wanted version 1.5.15
  # org.apache.maven:maven-ant-tasks:jar:2.1.3 wanted version 1.5.15
  # org.apache.maven:maven-artifact-manager:jar:2.2.1 wanted version 1.5.15
  # org.apache.maven.wagon:wagon-provider-api:jar:1.0-beta-6 wanted version 1.4.2
  # org.apache.maven:maven-model:jar:2.2.1 wanted version 1.5.15
  # org.apache.maven:maven-artifact:jar:2.2.1 wanted version 1.5.15
  # org.apache.maven:maven-plugin-registry:jar:2.2.1 wanted version 1.5.15
  # org.apache.maven:maven-profile:jar:2.2.1 wanted version 1.5.15
  # org.apache.maven:maven-project:jar:2.2.1 wanted version 1.5.15
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_utils",
      artifact = "org.codehaus.plexus:plexus-utils:1.0.4",
      repository = "https://jcenter.bintray.com/",
      sha1 = "60783e4623f2e44063cf2d43d9fbacb2816855c2",
  )


  # org.apache.maven.wagon:wagon-http-shared:jar:1.0-beta-6
  native.maven_jar(
      name = "nekohtml_xercesMinimal",
      artifact = "nekohtml:xercesMinimal:1.9.6.2",
      repository = "https://jcenter.bintray.com/",
      sha1 = "0d1c5e063683a0e6f77cd5f051a9d4af48346fa6",
  )


  # org.apache.ant:ant:jar:1.8.0
  native.maven_jar(
      name = "org_apache_ant_ant_launcher",
      artifact = "org.apache.ant:ant-launcher:1.8.0",
      repository = "https://jcenter.bintray.com/",
      sha1 = "08b53ba16fa62fb1034da8f1de200ddc407c8381",
  )


  # org.robolectric:shadows-framework:jar:4.0.2
  native.maven_jar(
      name = "com_google_android_apps_common_testing_accessibility_framework_accessibility_test_framework",
      artifact = "com.google.android.apps.common.testing.accessibility.framework:accessibility-test-framework:2.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "c2d6267c3ad0435ddf9e27a94a0e0af4ca3fdfbb",
  )


  # org.hamcrest:hamcrest-library:jar:1.3 got requested version
  # com.google.android.apps.common.testing.accessibility.framework:accessibility-test-framework:jar:2.1
  native.maven_jar(
      name = "org_hamcrest_hamcrest_core",
      artifact = "org.hamcrest:hamcrest-core:1.3",
      repository = "https://jcenter.bintray.com/",
      sha1 = "42a25dc3219429f0e5d060061f71acb49bf010a0",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3 got requested version
  # org.apache.maven:maven-project:jar:2.2.1
  native.maven_jar(
      name = "org_apache_maven_maven_settings",
      artifact = "org.apache.maven:maven-settings:2.2.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "2236ffe71fa5f78ce42b0f5fc22c54ed45f14294",
  )


  # org.apache.maven.wagon:wagon-http-shared:jar:1.0-beta-6 got requested version
  # org.apache.maven.wagon:wagon-http-lightweight:jar:1.0-beta-6 got requested version
  # org.apache.maven:maven-artifact-manager:jar:2.2.1
  # org.apache.maven:maven-ant-tasks:jar:2.1.3 got requested version
  # org.apache.maven.wagon:wagon-file:jar:1.0-beta-6 got requested version
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_provider_api",
      artifact = "org.apache.maven.wagon:wagon-provider-api:1.0-beta-6",
      repository = "https://jcenter.bintray.com/",
      sha1 = "3f952e0282ae77ae59851d96bb18015e520b6208",
  )


  # org.apache.maven:maven-project:jar:2.2.1
  native.maven_jar(
      name = "org_apache_maven_maven_plugin_registry",
      artifact = "org.apache.maven:maven-plugin-registry:2.2.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "72a24b7775649af78f3986b5aa7eb354b9674cfd",
  )


  # org.apache.maven:maven-project:jar:2.2.1
  native.maven_jar(
      name = "org_apache_maven_maven_profile",
      artifact = "org.apache.maven:maven-profile:2.2.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "3950071587027e5086e9c395574a60650c432738",
  )


  # org.apache.maven:maven-artifact-manager:jar:2.2.1
  native.maven_jar(
      name = "backport_util_concurrent_backport_util_concurrent",
      artifact = "backport-util-concurrent:backport-util-concurrent:3.1",
      repository = "https://jcenter.bintray.com/",
      sha1 = "682f7ac17fed79e92f8e87d8455192b63376347b",
  )


  # org.ow2.asm:asm-commons:jar:7.0
  # org.ow2.asm:asm-analysis:jar:7.0 got requested version
  native.maven_jar(
      name = "org_ow2_asm_asm_tree",
      artifact = "org.ow2.asm:asm-tree:7.0",
      repository = "https://jcenter.bintray.com/",
      sha1 = "29bc62dcb85573af6e62e5b2d735ef65966c4180",
  )


  # org.robolectric:sandbox:jar:4.0.2
  native.maven_jar(
      name = "org_ow2_asm_asm_commons",
      artifact = "org.ow2.asm:asm-commons:7.0",
      repository = "https://jcenter.bintray.com/",
      sha1 = "478006d07b7c561ae3a92ddc1829bca81ae0cdd1",
  )


  # org.ow2.asm:asm-commons:jar:7.0
  native.maven_jar(
      name = "org_ow2_asm_asm_analysis",
      artifact = "org.ow2.asm:asm-analysis:7.0",
      repository = "https://jcenter.bintray.com/",
      sha1 = "4b310d20d6f1c6b7197a75f1b5d69f169bc8ac1f",
  )


  # org.robolectric:junit:jar:4.0.2
  # org.robolectric:robolectric:jar:4.0.2 got requested version
  native.maven_jar(
      name = "org_robolectric_sandbox",
      artifact = "org.robolectric:sandbox:4.0.2",
      repository = "https://jcenter.bintray.com/",
      sha1 = "51429643ffa87b3dffa8efcdc0a323d584bd659b",
  )


  native.maven_jar(
      name = "org_robolectric_robolectric",
      artifact = "org.robolectric:robolectric:4.0.2",
      repository = "https://jcenter.bintray.com/",
      sha1 = "69d49494c7b22ca4af18c0d2a248b76fd971d730",
  )


  # org.robolectric:resources:jar:4.0.2 got requested version
  # org.robolectric:sandbox:jar:4.0.2
  native.maven_jar(
      name = "com_google_guava_guava",
      artifact = "com.google.guava:guava:20.0",
      repository = "https://jcenter.bintray.com/",
      sha1 = "89507701249388e1ed5ddcf8c41f4ce1be7831ef",
  )


  # org.robolectric:robolectric:jar:4.0.2
  native.maven_jar(
      name = "org_bouncycastle_bcprov_jdk15on",
      artifact = "org.bouncycastle:bcprov-jdk15on:1.52",
      repository = "https://jcenter.bintray.com/",
      sha1 = "88a941faf9819d371e3174b5ed56a3f3f7d73269",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.codehaus.plexus:plexus-container-default:jar:1.0-alpha-9-stable-1 got requested version
  native.maven_jar(
      name = "classworlds_classworlds",
      artifact = "classworlds:classworlds:1.1-alpha-2",
      repository = "https://jcenter.bintray.com/",
      sha1 = "05adf2e681c57d7f48038b602f3ca2254ee82d47",
  )


  # org.robolectric:robolectric:jar:4.0.2 got requested version
  # org.robolectric:shadows-framework:jar:4.0.2 got requested version
  # org.robolectric:resources:jar:4.0.2 got requested version
  # org.robolectric:sandbox:jar:4.0.2
  native.maven_jar(
      name = "org_robolectric_utils",
      artifact = "org.robolectric:utils:4.0.2",
      repository = "https://jcenter.bintray.com/",
      sha1 = "81089716c38250441358df5ec862b604b0009d1f",
  )

  native.maven_jar(
        name = "nekohtml_nekohtml",
        artifact = "nekohtml:nekohtml:1.9.6.2",
        sha1 = "2d960be7b62ae6622dbbbe49ab4ffdc609f85c80",
        repository = "http://central.maven.org/maven2/",
    )


def robolectric_repositories():
    android_all_jars()
    generated_maven_jars()

