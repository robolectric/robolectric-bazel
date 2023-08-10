import sys


def getKey(jar):
    group_and_artifact = "org.robolectric\:android-all-instrumented\:"
    # Given:
    # 1. "external/org_robolectric_android_all_instrumented_4_1_2_r1_robolectric_r1/jar/android-all-instrumented-4.1.2_r1-robolectric-r1.jar"
    # 2. "external/rules_robolectric~override~robolectric_repository_extensions~org_robolectric_android_all_instrumented_10_robolectric_5803371_i4/jar/android-all-instrumented-10-robolectric-5803371-i4.jar"
    # We want "4.1.2_r1-robolectric-r1.jar"
    version = jar.split("android-all-instrumented-")[1][:-4]
    return group_and_artifact + version


def getValue(jar):
    # Given:
    # 1. "external/org_robolectric_android_all_instrumented_4_1_2_r1_robolectric_r1/jar/android-all-instrumented-4.1.2_r1-robolectric-r1.jar"
    # 2. "external/rules_robolectric~override~robolectric_repository_extensions~org_robolectric_android_all_instrumented_10_robolectric_5803371_i4/jar/android-all-instrumented-10-robolectric-5803371-i4.jar"
    # We want "../../org_robolectric_android_all_instrumented_4_1_2_r1_robolectric_r1/jar/android-all-instrumented-4.1.2_r1-robolectric-r1.jar"
    return jar.replace("external/", "../../")


def main(argv):
    for jar in argv[1:]:
        # e.g.
        # org.robolectric\:android-all-instrumented\:4.1.2_r1-robolectric-r1.jar=../../org_robolectric_android_all_instrumented_4_1_2_r1_robolectric_r1/jar/android-all-instrumented-4.1.2_r1-robolectric-r1.jar
        print("%s=%s" % (getKey(jar), getValue(jar)))


if __name__ == "__main__":
    main(sys.argv)
