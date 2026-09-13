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

[
    alias(
        name = name,
        actual = "@robolectric_config//:" + name,
        visibility = ["//visibility:public"] if name in [
            "android-all",
            "properties",
            "robolectric-deps.properties",
        ] else None,
    )
    for name in [
        "android-all",
        "android-all-jars",
        "android-all-jars-filegroup",
        "properties",
        "robolectric-deps.properties",
    ]
]

py_binary(
    name = "gen-deps",
    srcs = ["gen-deps.py"],
)
