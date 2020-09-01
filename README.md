# robolectric-bazel

This project provides build rules for integrating Robolectric into Bazel
projects.

## Usage

Add the `robolectric` and `rules_jvm_external` repositories in your WORKSPACE file:

```python
http_archive(
    name = "robolectric",
    urls = ["https://github.com/robolectric/robolectric-bazel/archive/4.4.tar.gz"],
    strip_prefix = "robolectric-bazel-4.4",
)
load("@robolectric//bazel:robolectric.bzl", "robolectric_repositories")
robolectric_repositories()

http_archive(
    name = "rules_jvm_external",
    strip_prefix = "rules_jvm_external-3.1"
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/3.1.zip",
)
load("@rules_jvm_external//:defs.bzl", "maven_install")
maven_install(
    artifacts = [
        "org.robolectric:robolectric:4.4",
    ],
    repositories = [
        "https://maven.google.com",
        "https://repo1.maven.org/maven2",
    ],
)
```

Then, in your `android_local_test` targets in the BUILD files, depend on the
Robolectric targets `@maven//:org_robolectric_robolectric` and
`@robolectric//bazel:android-all`:

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
