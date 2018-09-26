#!/bin/bash

set -e

source common.sh

cecho $white "Testing ..."

RESULT="$(./test/test.cake.out)"
[[ "$RESULT" = "True" ]] || die "Test failed"

cecho $green "Test succeeded."
