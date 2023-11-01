#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

# Set by GH actions, see
# https://docs.github.com/en/actions/learn-github-actions/environment-variables#default-environment-variables
readonly TAG=${GITHUB_REF_NAME}
# The prefix is chosen to match what GitHub generates for source archives.
# This guarantees that users can easily switch from a released artifact to a source archive
# with minimal differences in their code (e.g. strip_prefix remains the same)
readonly PREFIX="roboelectric-bazel-${TAG}"
readonly ARCHIVE="${PREFIX}.tar.gz"

# NB: configuration for 'git archive' is in /.gitattributes
git archive --format=tar --prefix=${PREFIX}/ ${TAG} | gzip > $ARCHIVE
SHA=$(shasum -a 256 $ARCHIVE | awk '{print $1}')

# The stdout of this program will be used as the top of the release notes for this release.
cat << EOF
Installation
------------

Instructions appear in the [README](https://github.com/robolectric/robolectric-bazel/tree/${TAG}#usage)
EOF
