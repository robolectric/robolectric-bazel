load("@rules_java//java:java_import.bzl", "java_import")
load("@rules_java//java:java_library.bzl", "java_library")
load("@rules_python//python:py_binary.bzl", "py_binary")
load(":robolectric.bzl", "DEFAULT_AVAILABLE_VERSIONS")

package(
    default_visibility = [
        "//tests:__subpackages__",
    ],
)

[
    java_import(
        name = "import_" + v.name,
        jars = ["@{}//file".format(v.name)],
        visibility = [
            ":__pkg__",
            "//tests:__subpackages__",
        ],
    )
    for v in DEFAULT_AVAILABLE_VERSIONS
]

_ANDROID_ALL_JARS = ["import_{}".format(v.name) for v in DEFAULT_AVAILABLE_VERSIONS]

java_library(
    name = "android-all",
    data = [":robolectric-deps.properties"] + _ANDROID_ALL_JARS,
    visibility = ["//visibility:public"],
)

java_library(
    name = "android-all-jars",
    exports = _ANDROID_ALL_JARS,
)

filegroup(
    name = "android-all-jars-filegroup",
    srcs = _ANDROID_ALL_JARS,
)

genrule(
    name = "properties",
    srcs = [":android-all-jars-filegroup"],
    outs = ["robolectric-deps.properties"],
    cmd = "$(location :gen-deps) $(locations :android-all-jars-filegroup) > $@",
    tools = [":gen-deps"],
    visibility = ["//visibility:public"],
)

py_binary(
    name = "gen-deps",
    srcs = ["gen-deps.py"],
)
