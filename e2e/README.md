# End-user smoke tests

These are standalone consumer modules, following
[bazel-contrib/rules-template](https://github.com/bazel-contrib/rules-template/tree/main/e2e/smoke).
Each uses `local_path_override` to test this checkout as an external dependency.
The root `.bazelignore` excludes them; run Bazel inside each module:

```sh
(cd e2e/smoke && bazel test //...)
(cd e2e/subset && bazel test //...)
```

- `smoke`: uses the default configuration, including every catalog runtime.
  `DefaultRuntimesTest` runs an `android_local_test` on every supported SDK
  through `Config.ALL_SDKS`.
  Also used by BCR presubmit.
- `subset`: selects Android 14 and 15, with a different repository alias from
  rules_android. Runs actual `android_local_test` cases on both SDKs using
  rules_android's default properties-file label, without patching rules_android.
  Also defines independent Android 14 and Android 15 repositories and runs an
  Android test against each generated library and properties file in the same
  Bazel invocation.

CI runs these modules on Linux and macOS with Bazel 8.7 and 9.2, alongside the
existing default rules_android example.

`bazel test //tests:repository_setup_tests` in the root module checks unknown
versions and duplicate configuration with Skylib's `analysistest` and
`asserts.expect_failure`. It invokes the same validation helpers used by the
module extension during analysis, where Bazel can capture the expected failures.
No test launches a nested Bazel process or inspects Bazel's cache directories.
