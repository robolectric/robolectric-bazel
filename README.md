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

### Selecting Android versions

By default, `android-all` includes every instrumented Android version in
`DEFAULT_AVAILABLE_VERSIONS` in `bazel/robolectric.bzl`. To download and include
only a subset, add this to your root `MODULE.bazel` (use `@robolectric` instead
of `@rules_robolectric` if that is your `bazel_dep` repository name):

```python
robolectric = use_extension("@rules_robolectric//bazel:extensions.bzl", "robolectric_repository_extensions")
robolectric.configure(versions = [
    "14-robolectric-10818077-i7",
    "15-robolectric-13954326-i7",
])
```

No additional `use_repo` is needed. The existing `//bazel:android-all` and
`//bazel:properties` labels, including references from `rules_android`, use
this selection. Configure at most once; dependency modules' configuration is
ignored so the root controls the selection. An empty list includes no Android
jars. Unknown versions fail during setup. Tests must use an included SDK;
set `@Config(sdk = ...)` or `robolectric.enabledSdks` as appropriate. Selecting
jars does not change Robolectric's test SDK selection.

No update or patch to `rules_android` is needed. Its `@robolectric` labels and
your chosen `bazel_dep(repo_name = ...)` alias resolve to the same
`rules_robolectric` module. Configure the extension above in the root module;
the variable holding it can be named `robolectric_repo` or any other name.

Existing per-version repository and import labels remain available for
compatibility. Excluded jars are not fetched by the aggregate targets, but an
explicit dependency on one (or fetching all repositories) can still fetch it.
The existing `robolectric_repositories()` macro also accepts `versions = [...]`
with the same meaning; its no-argument behavior is unchanged.

## Testing

Run `bazel test //...` for repository tests. The standalone consumer modules in
[`e2e/`](e2e/README.md) cover default, subset, and empty runtime selections,
including exact runtime assertions and unmodified `rules_android` integration.

## Updating Android Versions

`update-versions.py` walks `org.robolectric:android-all-instrumented` on Maven
Central and rewrites `bazel/robolectric.bzl` in place: it bumps the version and
sha256 of any Android API group that has a newer release, and inserts new
entries for any numeric API newer than the highest one currently listed.

```console
./update-versions.py            # apply updates
./update-versions.py --dry-run  # preview without writing
```

## Publishing Releases

A new release can be published by just pushing a tag.

Once the tag is pushed, GitHub Actions will build, test, and publish a release to both GitHub releases and the BCR.

Example:
```console
git tag 4.11.1
git push origin 4.11.1
```
