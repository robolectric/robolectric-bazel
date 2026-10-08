load("@rules_java//java:java_import.bzl", "java_import")
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

alias(
    name = "android-all",
    actual = "@robolectric_config//:android-all",
    visibility = ["//visibility:public"],
)

alias(
    name = "android-all-jars",
    actual = "@robolectric_config//:android-all-jars",
)

alias(
    name = "android-all-jars-filegroup",
    actual = "@robolectric_config//:android-all-jars-filegroup",
)

alias(
    name = "properties",
    actual = "@robolectric_config//:properties",
    visibility = ["//visibility:public"],
)

alias(
    name = "robolectric-deps.properties",
    actual = "@robolectric_config//:robolectric-deps.properties",
    visibility = ["//visibility:public"],
)

py_binary(
    name = "gen-deps",
    srcs = ["gen-deps.py"],
)
