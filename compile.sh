#!/bin/bash

set -e

source common.sh

INPUT="$1"
OUTPUT="$2"

[ -n "$INPUT" ] || die "No input specified"

if [ -z "$2" ]; then
  OUTPUT="$(dirname "$INPUT")/$(basename "$INPUT" .ml).out"
  if [ "$OUTPUT" = "$INPUT" ]; then
    die "No output specified and could not guess output file"
  else
    cecho $yellow "No output specified, using \`$OUTPUT'"
  fi
fi

mktemp() {
  python -c 'from tempfile import NamedTemporaryFile; print(NamedTemporaryFile(suffix=".S", delete=False).name)'
}

COMPILER_DIR="$(dirname "$0")"
CAKE_OUTPUT="$(mktemp)"

cecho $white "Compiling \`$INPUT' ..."

CAKE_ERR="$("$COMPILER_DIR/cake" 2>&1 < "$INPUT" > "$CAKE_OUTPUT")"

if [ -n "$CAKE_ERR" ]; then
  echo "$CAKE_ERR"
  die "CakeML failed"
fi

cecho $white "Linking ..."

gcc -o "$OUTPUT" "$COMPILER_DIR/basis_ffi.c" "$CAKE_OUTPUT"

cecho $green "Done."
