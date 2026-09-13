"""Assert setup failures in Bazel's analysis-test environment."""

load("@bazel_skylib//lib:unittest.bzl", "analysistest", "asserts")
load("//bazel:extensions.bzl", extension_testing = "testing")
load("//bazel:robolectric.bzl", repository_testing = "testing")

def _setup_impl(ctx):
    # Run the production validation during analysis so expect_failure can capture it.
    root = struct(
        is_root = True,
        tags = struct(configure = [
            struct(versions = ctx.attr.versions)
            for _ in range(ctx.attr.configure_count)
        ]),
    )
    versions = extension_testing.configured_versions([root])
    repository_testing.selected_versions(versions)
    return []

_setup = rule(
    implementation = _setup_impl,
    attrs = {
        "configure_count": attr.int(default = 1),
        "versions": attr.string_list(),
    },
)

def _setup_failure_test_impl(ctx):
    env = analysistest.begin(ctx)
    asserts.expect_failure(env, ctx.attr.message)
    return analysistest.end(env)

_setup_failure_test = analysistest.make(
    _setup_failure_test_impl,
    expect_failure = True,
    attrs = {"message": attr.string()},
)

def repository_setup_test_suite(name):
    """Tests unknown versions and duplicate root configuration.

    Args:
        name: Name of the test suite.
    """
    tests = []
    for case, count, versions, message in [
        ("unknown_version", 1, ["unknown"], "Unknown Robolectric version"),
        ("duplicate_configuration", 2, [], "Only one Robolectric configure tag"),
    ]:
        subject = name + "_" + case
        _setup(
            name = subject,
            configure_count = count,
            versions = versions,
            tags = ["manual"],
        )
        test = subject + "_test"
        _setup_failure_test(
            name = test,
            target_under_test = ":" + subject,
            message = message,
        )
        tests.append(":" + test)
    native.test_suite(name = name, tests = tests)
