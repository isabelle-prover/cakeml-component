#!/bin/bash

set -e

source "$(dirname "$0")/common.sh"

cecho $white "Checking cleanliness of working directory ..."

git diff --exit-code > /dev/null
git diff --cached --exit-code > /dev/null
[[ -z "$(git ls-files --exclude-standard --others)" ]]

cecho $green "Working directory clean"

VERSION="$(git describe --tags --always)"
PACKAGE="cakeml-$VERSION.tar.gz"

cecho $white "Packaging $PACKAGE ..."

FILES=(
  "bin/x86_64-darwin/cake"
  "bin/x86_64-linux/cake"
  "basis_ffi.c"
  "LICENSE"
  "NOTICE"
  "README"
  "etc/settings"
)

tar --transform "s,^,cakeml-$VERSION/," -czf "$PACKAGE" "${FILES[@]}"

cecho $green "Done."
