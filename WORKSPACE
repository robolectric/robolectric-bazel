workspace(name = "robolectric")

load("//bazel:robolectric.bzl", "robolectric_repositories")

robolectric_repositories()

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "buildifier_prebuilt",
    sha256 = "b3fd85ae7e45c2f36bce52cfdbdb6c20261761ea5928d1686edc8873b0d0dad0",
    strip_prefix = "buildifier-prebuilt-5.1.0",
    url = "http://github.com/keith/buildifier-prebuilt/archive/5.1.0.tar.gz",
)

load("@buildifier_prebuilt//:deps.bzl", "buildifier_prebuilt_deps")

buildifier_prebuilt_deps()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load("@buildifier_prebuilt//:defs.bzl", "buildifier_prebuilt_register_toolchains")

buildifier_prebuilt_register_toolchains()
