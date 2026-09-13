# End-user smoke tests

These are standalone consumer modules, following
[bazel-contrib/rules-template](https://github.com/bazel-contrib/rules-template/tree/main/e2e/smoke).
Each uses `local_path_override` to test this checkout as an external dependency.
The root `.bazelignore` excludes them; run Bazel inside each module:

```sh
(cd e2e/smoke && bazel test //...)
(cd e2e/subset && bazel test //...)
(cd e2e/empty && bazel test //...)
```

- `smoke`: no configuration includes every catalog runtime, even when a dependency
  tries to supply its own configuration. `DefaultRuntimesTest` runs a real
  `android_local_test` on every supported SDK through `Config.ALL_SDKS`.
  Also used by BCR presubmit.
- `subset`: selects Android 14 and 15, with a different repository alias from
  rules_android. Runs actual `android_local_test` cases on both SDKs using
  rules_android's default properties-file label, without patching rules_android.
- `empty`: explicitly selects no runtimes and still builds valid empty properties.
  Its `android_local_test` asserts that requesting SDK 34 fails with the specific
  missing-runtime error, since no Android runtime is available.
- `dependency`: a fixture used by smoke and subset; its configuration must be ignored.

Every consumer tests the exact runtime jar names in `android-all`'s `DefaultInfo`
runfiles and the exact properties keys, and checks that every properties entry
resolves to an existing jar in the test's runfiles. The subset's expected list is
independent of the configuration, so adding or dropping a requested runtime fails.

CI runs these modules on Linux and macOS with Bazel 8.7 and 9.2, alongside the
existing default rules_android example. The subset and empty modules override
excluded runtimes with a repository rule that fails if fetched. This checks lazy
fetching through Bazel itself and works even with a warm repository cache.

`bazel test //tests:repository_setup_tests` in the root module checks unknown
versions and duplicate configuration with Skylib's `analysistest` and
`asserts.expect_failure`. It invokes the same validation helpers used by the
module extension during analysis, where Bazel can capture the expected failures.
No test launches a nested Bazel process or inspects Bazel's cache directories.
