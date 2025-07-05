#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

# Set by GH actions, see
# https://docs.github.com/en/actions/learn-github-actions/environment-variables#default-environment-variables
readonly TAG=${GITHUB_REF_NAME}
# The prefix is chosen to match what GitHub generates for source archives.
# This guarantees that users can easily switch from a released artifact to a source archive
# with minimal differences in their code (e.g. strip_prefix remains the same)
readonly PREFIX="robolectric-bazel-${TAG}"
readonly ARCHIVE="${PREFIX}.tar.gz"

# NB: configuration for 'git archive' is in /.gitattributes
git archive --format=tar --prefix=${PREFIX}/ ${TAG} | gzip > $ARCHIVE
SHA=$(shasum -a 256 $ARCHIVE | awk '{print $1}')

# The stdout of this program will be used as the top of the release notes for this release.
cat << EOF
### Bzlmod (MODULE.bazel)

> If using Bazel 6, make sure you set the \`--enable_bzlmod\` flag

\`\`\`starlark
bazel_dep(name = "rules_robolectric", version = "${TAG}")

bazel_dep(name = "rules_jvm_external", version = "6.7")
maven = use_extension("@rules_jvm_external//:extensions.bzl", "maven")
maven.install(
    artifacts = [
        "org.robolectric:robolectric:${TAG}",
    ],
    repositories = [
        "https://maven.google.com",
        "https://repo1.maven.org/maven2",
    ],
)
use_repo(maven, "maven")
\`\`\`

### Workspace

Add the \`robolectric\` and \`rules_jvm_external\` repositories in your WORKSPACE file:

\`\`\`starlark
http_archive(
    name = "robolectric",
    sha256 = "${SHA}",
    strip_prefix = "${PREFIX}",
    urls = ["https://github.com/robolectric/robolectric-bazel/releases/download/${TAG}/${ARCHIVE}"],
)
EOF

awk 'f;/--SNIP--/{f=1}' examples/simple/WORKSPACE
echo "\`\`\`"
