#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

# Set by GH actions, see
# https://docs.github.com/en/actions/learn-github-actions/environment-variables#default-environment-variables
TAG=${GITHUB_REF_NAME}
VERSION=${TAG:1}
SHA=${GITHUB_SHA}

# The prefix is chosen to match what GitHub generates for source archives
PREFIX="go_link-$VERSION"
ARCHIVE="$PREFIX.tar.gz"
git archive --format=tar --prefix=${PREFIX}/ ${TAG} | gzip > $ARCHIVE

cat << EOF
## Setup Instructions

Add the following to your \`MODULE.bazel\` file to install go_link:

\`\`\`starlark
bazel_dep(name = "go_link", version = "$VERSION")
git_override(
    module_name = "go_link",
    remote = "https://github.com/zaccari/go_link.git",
    commit = "$SHA",
)
\`\`\`

Note, go_link requires bzlmod, WORKSPACE mode is no longer supported.
EOF