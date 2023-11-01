# robolectric-bazel

This project provides build rules for integrating Robolectric into Bazel
projects.

## Releases

<a href="https://github.com/robolectric/robolectric-bazel/releases/latest"><img src="https://img.shields.io/github/v/release/robolectric/robolectric-bazel?display_name=tag&label=Latest%20Stable%20Release"/></a>
<br/>

## Usage

### Bzlmod (MODULE.bazel)

```Python
bazel_dep(name = "rules_robolectric", version = "4.11")

bazel_dep(name = "rules_jvm_external", version = "5.3")
maven = use_extension("@rules_jvm_external//:extensions.bzl", "maven")
maven.install(
    artifacts = [
        "org.robolectric:robolectric:4.11",
    ],
    repositories = [
        "https://maven.google.com",
        "https://repo1.maven.org/maven2",
    ],
)
use_repo(maven, "maven")
```

### Workspace

Add the `robolectric` and `rules_jvm_external` repositories in your WORKSPACE file:

```python
http_archive(
    name = "robolectric",
    urls = ["https://github.com/robolectric/robolectric-bazel/archive/refs/tags/4.11.tar.gz"],
    strip_prefix = "robolectric-bazel-4.11",
    sha256 = "get the sha256 from github releases",
)
load("@robolectric//bazel:robolectric.bzl", "robolectric_repositories")
robolectric_repositories()

http_archive(
    name = "rules_jvm_external",
    strip_prefix = "rules_jvm_external-5.3",
    sha256 = "d31e369b854322ca5098ea12c69d7175ded971435e55c18dd9dd5f29cc5249ac",
    url = "https://github.com/bazelbuild/rules_jvm_external/releases/download/5.3/rules_jvm_external-5.3.tar.gz",
)
load("@rules_jvm_external//:defs.bzl", "maven_install")
maven_install(
    artifacts = [
        "org.robolectric:robolectric:4.11",
    ],
    repositories = [
        "https://maven.google.com",
        "https://repo1.maven.org/maven2",
    ],
)
```

### And Finally

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
