# robolectric-bazel

This project provides build rules for integrating Robolectric into Bazel
projects.

## Releases

<a href="https://github.com/robolectric/robolectric-bazel/releases/latest"><img src="https://img.shields.io/github/v/release/robolectric/robolectric-bazel?display_name=tag&label=Latest%20Stable%20Release"/></a>
<br/>

## Installation

Follow instructions in the release notes from the release you use:
<https://github.com/robolectric/robolectric-bazel/releases>

## Usage

In your `android_local_test` targets in the BUILD files, depend on the
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

## Publishing Releases

A new release can be published by just pushing a tag.

Once the tag is pushed, GitHub Actions will build, test, and publish a release to both GitHub releases and the BCR.

Example:
```console
git tag 4.11.1
git push origin 4.11.1
```
