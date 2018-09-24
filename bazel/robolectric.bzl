def android_all_jars():
    native.maven_jar(
        name = "org_robolectric_android_all_9_robolectric_4799589",
        artifact = "org.robolectric:android-all:9-robolectric-4799589",
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
# generate_workspace --artifact=org.robolectric:robolectric:4.0-alpha-3 --repositories=http://central.maven.org/maven2/
#
# see https://docs.bazel.build/versions/master/generate-workspace.html

def robolectric_maven_dependencies():
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
      repository = "http://central.maven.org/maven2/",
      sha1 = "94aea3010e250a334d9dab7f591114cd6c767458",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  native.maven_jar(
      name = "org_apache_maven_maven_error_diagnostics",
      artifact = "org.apache.maven:maven-error-diagnostics:2.2.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "e81bb342d7d172f23d108dc8fa979a1facdcde8e",
  )


  # org.robolectric:junit:jar:4.0-alpha-3 got requested version
  # org.robolectric:utils:jar:4.0-alpha-3 got requested version
  # org.robolectric:robolectric:jar:4.0-alpha-3
  # org.robolectric:sandbox:jar:4.0-alpha-3 got requested version
  # org.robolectric:resources:jar:4.0-alpha-3 got requested version
  # org.robolectric:shadows-framework:jar:4.0-alpha-3 got requested version
  native.maven_jar(
      name = "org_robolectric_annotations",
      artifact = "org.robolectric:annotations:4.0-alpha-3",
      repository = "http://central.maven.org/maven2/",
      sha1 = "7fa41f0d3ec2dae9b4b66f7ba8e946e7b634aa85",
  )


  # com.google.android.apps.common.testing.accessibility.framework:accessibility-test-framework:jar:2.1
  native.maven_jar(
      name = "com_google_protobuf_protobuf_java",
      artifact = "com.google.protobuf:protobuf-java:2.6.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "d9521f2aecb909835746b7a5facf612af5e890e8",
  )


  # org.ow2.asm:asm-tree:jar:5.0.1 got requested version
  # org.robolectric:sandbox:jar:4.0-alpha-3
  native.maven_jar(
      name = "org_ow2_asm_asm",
      artifact = "org.ow2.asm:asm:5.0.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "2fd56467a018aafe6ec6a73ccba520be4a7e1565",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.apache.maven:maven-project:jar:2.2.1 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_artifact_manager",
      artifact = "org.apache.maven:maven-artifact-manager:2.2.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "ec355b913c34d37080810f98e3f51abecbe1572b",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_file",
      artifact = "org.apache.maven.wagon:wagon-file:1.0-beta-6",
      repository = "http://central.maven.org/maven2/",
      sha1 = "6c53633505460caf49d2660de1e24744d915afb9",
  )


  # org.apache.maven:maven-artifact-manager:jar:2.2.1
  native.maven_jar(
      name = "org_apache_maven_maven_repository_metadata",
      artifact = "org.apache.maven:maven-repository-metadata:2.2.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "98f0c07fcf1eeb213bef8d9316a9935184084b06",
  )


  # org.robolectric:robolectric:jar:4.0-alpha-3
  native.maven_jar(
      name = "org_robolectric_junit",
      artifact = "org.robolectric:junit:4.0-alpha-3",
      repository = "http://central.maven.org/maven2/",
      sha1 = "5db41001e6d160c94885052a7f757bc660aabc4b",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.apache.maven:maven-settings:jar:2.2.1 got requested version
  # org.apache.maven:maven-profile:jar:2.2.1 got requested version
  # org.apache.maven:maven-project:jar:2.2.1 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_model",
      artifact = "org.apache.maven:maven-model:2.2.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "c0a1c17436ec3ff5a56207c031d82277b4250a29",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.apache.maven:maven-artifact-manager:jar:2.2.1 got requested version
  # org.apache.maven:maven-project:jar:2.2.1 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_artifact",
      artifact = "org.apache.maven:maven-artifact:2.2.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "23600f790d4dab2cb965419eaa982e3e84c428f8",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_http_lightweight",
      artifact = "org.apache.maven.wagon:wagon-http-lightweight:1.0-beta-6",
      repository = "http://central.maven.org/maven2/",
      sha1 = "b3815078570c3b1f0667e123d59717c6b726c6c2",
  )


  # org.robolectric:junit:jar:4.0-alpha-3 got requested version
  # org.robolectric:sandbox:jar:4.0-alpha-3 got requested version
  # org.robolectric:annotations:jar:4.0-alpha-3
  native.maven_jar(
      name = "org_robolectric_shadowapi",
      artifact = "org.robolectric:shadowapi:4.0-alpha-3",
      repository = "http://central.maven.org/maven2/",
      sha1 = "9726386869d4807b2907d6f8fbc714a43d842eb3",
  )


  # org.robolectric:shadows-framework:jar:4.0-alpha-3
  native.maven_jar(
      name = "com_almworks_sqlite4java_sqlite4java",
      artifact = "com.almworks.sqlite4java:sqlite4java:0.282",
      repository = "http://central.maven.org/maven2/",
      sha1 = "745a7e2f35fdbe6336922e0d492c979dbbfa74fb",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.apache.maven:maven-settings:jar:2.2.1 got requested version
  # org.apache.maven:maven-profile:jar:2.2.1 got requested version
  # org.apache.maven:maven-project:jar:2.2.1 got requested version
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_interpolation",
      artifact = "org.codehaus.plexus:plexus-interpolation:1.11",
      repository = "http://central.maven.org/maven2/",
      sha1 = "ad9dddff6043194904ad1d2c00ff1d003c3915f7",
  )


  # org.apache.maven.wagon:wagon-http-lightweight:jar:1.0-beta-6
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_http_shared",
      artifact = "org.apache.maven.wagon:wagon-http-shared:1.0-beta-6",
      repository = "http://central.maven.org/maven2/",
      sha1 = "ccd70d7e0d8c085e648a83f072da06ca9a53be94",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  native.maven_jar(
      name = "org_apache_maven_maven_project",
      artifact = "org.apache.maven:maven-project:2.2.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "8239e98c16f641d55a4ad0e0bab0aee3aff8933f",
  )


  # com.google.android.apps.common.testing.accessibility.framework:accessibility-test-framework:jar:2.1
  native.maven_jar(
      name = "org_hamcrest_hamcrest_library",
      artifact = "org.hamcrest:hamcrest-library:1.3",
      repository = "http://central.maven.org/maven2/",
      sha1 = "4785a3c21320980282f9f33d0d1264a69040538f",
  )


  # org.robolectric:robolectric:jar:4.0-alpha-3
  # org.robolectric:shadows-framework:jar:4.0-alpha-3 got requested version
  native.maven_jar(
      name = "org_robolectric_resources",
      artifact = "org.robolectric:resources:4.0-alpha-3",
      repository = "http://central.maven.org/maven2/",
      sha1 = "ba0bc6d3856a283df395ba1c6f3cc3b7259fe0a8",
  )


  # org.robolectric:robolectric:jar:4.0-alpha-3
  native.maven_jar(
      name = "org_robolectric_shadows_framework",
      artifact = "org.robolectric:shadows-framework:4.0-alpha-3",
      repository = "http://central.maven.org/maven2/",
      sha1 = "097ab8f89a68874b059b425deea38c07f6cfa025",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3 got requested version
  # org.robolectric:robolectric:jar:4.0-alpha-3
  native.maven_jar(
      name = "org_apache_ant_ant",
      artifact = "org.apache.ant:ant:1.8.0",
      repository = "http://central.maven.org/maven2/",
      sha1 = "7b456ca6b93900f96e58cc8371f03d90a9c1c8d1",
  )


  # org.robolectric:shadows-framework:jar:4.0-alpha-3
  native.maven_jar(
      name = "com_ibm_icu_icu4j",
      artifact = "com.ibm.icu:icu4j:53.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "786d9055d4ca8c1aab4a7d4ac8283f973fd7e41f",
  )


  # org.robolectric:robolectric:jar:4.0-alpha-3
  native.maven_jar(
      name = "org_apache_maven_maven_ant_tasks",
      artifact = "org.apache.maven:maven-ant-tasks:2.1.3",
      repository = "http://central.maven.org/maven2/",
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
      repository = "http://central.maven.org/maven2/",
      sha1 = "60783e4623f2e44063cf2d43d9fbacb2816855c2",
  )


  # org.apache.ant:ant:jar:1.8.0
  native.maven_jar(
      name = "org_apache_ant_ant_launcher",
      artifact = "org.apache.ant:ant-launcher:1.8.0",
      repository = "http://central.maven.org/maven2/",
      sha1 = "08b53ba16fa62fb1034da8f1de200ddc407c8381",
  )


  # org.robolectric:shadows-framework:jar:4.0-alpha-3
  native.maven_jar(
      name = "com_google_android_apps_common_testing_accessibility_framework_accessibility_test_framework",
      artifact = "com.google.android.apps.common.testing.accessibility.framework:accessibility-test-framework:2.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "c2d6267c3ad0435ddf9e27a94a0e0af4ca3fdfbb",
  )


  # org.hamcrest:hamcrest-library:jar:1.3 got requested version
  # com.google.android.apps.common.testing.accessibility.framework:accessibility-test-framework:jar:2.1
  native.maven_jar(
      name = "org_hamcrest_hamcrest_core",
      artifact = "org.hamcrest:hamcrest-core:1.3",
      repository = "http://central.maven.org/maven2/",
      sha1 = "42a25dc3219429f0e5d060061f71acb49bf010a0",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3 got requested version
  # org.apache.maven:maven-project:jar:2.2.1
  native.maven_jar(
      name = "org_apache_maven_maven_settings",
      artifact = "org.apache.maven:maven-settings:2.2.1",
      repository = "http://central.maven.org/maven2/",
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
      repository = "http://central.maven.org/maven2/",
      sha1 = "3f952e0282ae77ae59851d96bb18015e520b6208",
  )


  # org.apache.maven:maven-project:jar:2.2.1
  native.maven_jar(
      name = "org_apache_maven_maven_plugin_registry",
      artifact = "org.apache.maven:maven-plugin-registry:2.2.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "72a24b7775649af78f3986b5aa7eb354b9674cfd",
  )


  # org.apache.maven:maven-project:jar:2.2.1
  native.maven_jar(
      name = "org_apache_maven_maven_profile",
      artifact = "org.apache.maven:maven-profile:2.2.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "3950071587027e5086e9c395574a60650c432738",
  )


  # org.apache.maven:maven-artifact-manager:jar:2.2.1
  native.maven_jar(
      name = "backport_util_concurrent_backport_util_concurrent",
      artifact = "backport-util-concurrent:backport-util-concurrent:3.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "682f7ac17fed79e92f8e87d8455192b63376347b",
  )


  # org.ow2.asm:asm-commons:jar:5.0.1
  native.maven_jar(
      name = "org_ow2_asm_asm_tree",
      artifact = "org.ow2.asm:asm-tree:5.0.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "1b1e6e9d869acd704056d0a4223071a511c619e6",
  )


  # org.robolectric:sandbox:jar:4.0-alpha-3
  native.maven_jar(
      name = "org_ow2_asm_asm_commons",
      artifact = "org.ow2.asm:asm-commons:5.0.1",
      repository = "http://central.maven.org/maven2/",
      sha1 = "7b7147a390a93a14d2edfdcf3f7b0e87a0939c3e",
  )


  # org.robolectric:junit:jar:4.0-alpha-3
  # org.robolectric:robolectric:jar:4.0-alpha-3 got requested version
  native.maven_jar(
      name = "org_robolectric_sandbox",
      artifact = "org.robolectric:sandbox:4.0-alpha-3",
      repository = "http://central.maven.org/maven2/",
      sha1 = "974ad306faa066b901c01d37ec8f9857448de463",
  )


  native.maven_jar(
      name = "org_robolectric_robolectric",
      artifact = "org.robolectric:robolectric:4.0-alpha-3",
      repository = "http://central.maven.org/maven2/",
      sha1 = "86bcb0fe82e89e69bd665aac039b20b2d620db14",
  )


  # org.robolectric:sandbox:jar:4.0-alpha-3
  # org.robolectric:resources:jar:4.0-alpha-3 got requested version
  native.maven_jar(
      name = "com_google_guava_guava",
      artifact = "com.google.guava:guava:20.0",
      repository = "http://central.maven.org/maven2/",
      sha1 = "89507701249388e1ed5ddcf8c41f4ce1be7831ef",
  )


  # org.robolectric:robolectric:jar:4.0-alpha-3
  native.maven_jar(
      name = "org_bouncycastle_bcprov_jdk15on",
      artifact = "org.bouncycastle:bcprov-jdk15on:1.52",
      repository = "http://central.maven.org/maven2/",
      sha1 = "88a941faf9819d371e3174b5ed56a3f3f7d73269",
  )


  # org.apache.maven:maven-ant-tasks:jar:2.1.3
  # org.codehaus.plexus:plexus-container-default:jar:1.0-alpha-9-stable-1 got requested version
  native.maven_jar(
      name = "classworlds_classworlds",
      artifact = "classworlds:classworlds:1.1-alpha-2",
      repository = "http://central.maven.org/maven2/",
      sha1 = "05adf2e681c57d7f48038b602f3ca2254ee82d47",
  )


  # org.robolectric:sandbox:jar:4.0-alpha-3
  # org.robolectric:resources:jar:4.0-alpha-3 got requested version
  # org.robolectric:robolectric:jar:4.0-alpha-3 got requested version
  # org.robolectric:shadows-framework:jar:4.0-alpha-3 got requested version
  native.maven_jar(
      name = "org_robolectric_utils",
      artifact = "org.robolectric:utils:4.0-alpha-3",
      repository = "http://central.maven.org/maven2/",
      sha1 = "713b9612c1a1263bb510c853611770894aff2272",
  )


def robolectric_repositories():
    android_all_jars()
    robolectric_maven_dependencies()
