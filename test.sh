#!/bin/bash

set -e

source "$(dirname "$0")/common.sh"

cecho $white "Testing ..."

RESULT="$(./test/test.cake.out)"
[[ "$RESULT" = "hi" ]] || die "Test failed"

cecho $green "Test succeeded."
