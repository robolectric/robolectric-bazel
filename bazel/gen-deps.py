import sys
def getKey(jar):
    group_and_artifact = "org.robolectric\:android-all\:"
    # Given "external/org_robolectric_android_all_4_1_2_r1_robolectric_r1/jar/android-all-4.1.2_r1-robolectric-r1.jar"
    # We want "4.1.2_r1-robolectric-r1.jar"
    version = jar.split("android-all-")[1][:-4]
    return group_and_artifact + version

def getValue(jar):
    # Given "external/org_robolectric_android_all_4_1_2_r1_robolectric_r1/jar/android-all-4.1.2_r1-robolectric-r1.jar"
    # We want "../../org_robolectric_android_all_4_1_2_r1_robolectric_r1/jar/android-all-4.1.2_r1-robolectric-r1.jar"
    return "../../" + jar[jar.index("org_robolectric"):]

def main(argv):
    for jar in argv[1:]:
        # e.g.
        # org.robolectric\:android-all\:4.1.2_r1-robolectric-r1.jar=../../org_robolectric_android_all_4_1_2_r1_robolectric_r1/jar/android-all-4.1.2_r1-robolectric-r1.jar
        print("%s=%s" % (getKey(jar), getValue(jar)))

if __name__ == "__main__":
    main(sys.argv)
