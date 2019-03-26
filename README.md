# robolectric-bazel

This project provides build rules for integrating Robolectric into Bazel
projects.

## Usage

### After v4.0.1

Add the `robolectric` and `rules_jvm_external` repositories in your WORKSPACE file:

```python
http_archive(
    name = "robolectric",
    urls = ["https://github.com/robolectric/robolectric-bazel/archive/4.1.tar.gz"],
    strip_prefix = "robolectric-bazel-4.1",
)
load("@robolectric//bazel:robolectric.bzl", "robolectric_repositories")
robolectric_repositories()

http_archive(
    name = "rules_jvm_external",
    strip_prefix = "rules_jvm_external-1.1"
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/1.1.zip",
)
load("@rules_jvm_external//:defs.bzl", "maven_install")
maven_install(
    artifacts = [
        "org.robolectric:robolectric:4.2",
    ],
    repositories = [
        "https://maven.google.com",
        "https://repo1.maven.org/maven2",
    ],
)
```

Then, in your `android_local_test` targets in the BUILD files, depend on the
Robolectric targets:

```python
android_local_test(
    name = "greeter_activity_test",
    srcs = ["GreeterTest.java"],
    manifest = "TestManifest.xml",
    test_class = "com.example.bazel.GreeterTest",
    deps = [
        ":greeter_activity",
        "@maven//:org_robolectric_robolectric",
        "@robolectric//bazel:android-all",
    ],
)
```

### Before v4.0.1

See [Robolectric Getting
Started](http://robolectric.org/getting-started/#building-with-bazel) for usage
instructions.

To update BUILD, and robolectric.bazel for a new version of Robolectric use
[bazel's generate
workspace](https://docs.bazel.build/versions/master/generate-workspace.html)
tool.

```bash
 bazel run //generate_workspace -- \
    --artifact=org.robolectric:robolectric:4.0.2 \
    --repositories=https://central.maven.org/maven2 \
    --repositories=https://jcenter.bintray.com \
    --repositories=https://maven.google.com
```

Copy the generated_maven_jars() function from the generated
generate_workspace.bzl to robolectric.bzl.
