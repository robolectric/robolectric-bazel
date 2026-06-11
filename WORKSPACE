workspace(name = "robolectric")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_java",
    sha256 = "1b30698d89dccd9dc01b1a4ad7e9e5c6e669cdf1918dbb050334e365b40a1b5e",
    urls = [
        "https://github.com/bazelbuild/rules_java/releases/download/8.16.1/rules_java-8.16.1.tar.gz",
    ],
)

load("@rules_java//java:rules_java_deps.bzl", "rules_java_dependencies")

rules_java_dependencies()

# note that the following line is what is minimally required from protobuf for the java rules
# consider using the protobuf_deps() public API from @com_google_protobuf//:protobuf_deps.bzl
load("@com_google_protobuf//bazel/private:proto_bazel_features.bzl", "proto_bazel_features")  # buildifier: disable=bzl-visibility

proto_bazel_features(name = "proto_bazel_features")

# register toolchains
load("@rules_java//java:repositories.bzl", "rules_java_toolchains")

rules_java_toolchains()

load("//bazel:robolectric.bzl", "robolectric_repositories")

robolectric_repositories()

http_archive(
    name = "bazel_skylib",
    sha256 = "9f38886a40548c6e96c106b752f242130ee11aaa068a56ba7e56f4511f33e4f2",
    url = "https://github.com/bazelbuild/bazel-skylib/releases/download/1.6.1/bazel-skylib-1.6.1.tar.gz",
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

http_archive(
    name = "buildifier_prebuilt",
    sha256 = "478f8a4b40af0ffd09e4823062a0ea28fda4247236f1059324b783202e0dd4d4",
    strip_prefix = "buildifier-prebuilt-8.5.1",
    url = "http://github.com/keith/buildifier-prebuilt/archive/8.5.1.tar.gz",
)

load("@buildifier_prebuilt//:deps.bzl", "buildifier_prebuilt_deps")

buildifier_prebuilt_deps()

load("@buildifier_prebuilt//:defs.bzl", "buildifier_prebuilt_register_toolchains")

buildifier_prebuilt_register_toolchains()

http_archive(
    name = "rules_python",
    sha256 = "690e0141724abb568267e003c7b6d9a54925df40c275a870a4d934161dc9dd53",
    strip_prefix = "rules_python-0.40.0",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.40.0/rules_python-0.40.0.tar.gz",
)

load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()
