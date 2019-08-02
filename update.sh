#!/bin/bash

set -e

source "$(dirname "$0")/common.sh"

JOB="$1"

if [ -z "$JOB" ]; then
  die "No job number specified"
fi

cecho $white "Downloading artifact from job number $JOB"

curl -s "https://cakeml.org/regression/artefacts/$JOB/cake-x64-64.tar.gz" | tar xzf - --strip=1 cake-x64-64/basis_ffi.c cake-x64-64/cake.S
xz -f --keep cake.S
