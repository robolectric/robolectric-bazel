"""Smoke tests shared by the standalone end-user modules in e2e/."""

load("@bazel_skylib//lib:unittest.bzl", "analysistest", "asserts")
load("@bazel_skylib//rules:build_test.bzl", "build_test")
load("@rules_python//python:py_test.bzl", "py_test")

def _runtime_selection_test_impl(ctx):
    env = analysistest.begin(ctx)
    target = analysistest.target_under_test(env)
    jars = [
        file.basename
        for file in target[DefaultInfo].default_runfiles.files.to_list()
        if file.basename.startswith("android-all-instrumented-")
    ]
    asserts.equals(
        env,
        sorted(["android-all-instrumented-%s.jar" % version for version in ctx.attr.versions]),
        sorted(jars),
    )
    return analysistest.end(env)

_runtime_selection_test = analysistest.make(
    _runtime_selection_test_impl,
    attrs = {"versions": attr.string_list()},
)

def runtime_selection_tests(versions, robolectric = "@robolectric", package = "bazel", name_prefix = ""):
    """Checks buildability, exact runtime runfiles, and the dependency properties.

    Args:
        versions: The exact instrumented versions expected by the consumer.
        robolectric: The apparent repository name containing the runtime targets.
        package: Package containing the runtime targets; empty for generated repos.
        name_prefix: Prefix distinguishing multiple selections in one consumer.
    """
    android_all = robolectric + "//" + package + ":android-all"
    properties = robolectric + "//" + package + ":properties"
    build_test(
        name = name_prefix + "smoke_test",
        targets = [android_all, properties],
    )
    _runtime_selection_test(
        name = name_prefix + "runtime_selection_test",
        target_under_test = android_all,
        versions = versions,
    )
    py_test(
        name = name_prefix + "properties_test",
        srcs = [Label(":properties_test.py")],
        main = "properties_test.py",
        args = ["$(rootpath %s)" % properties] + versions,
        data = [android_all, properties],
    )
