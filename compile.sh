#!/bin/bash

set -e

# <https://coderwall.com/p/v_fh4w/easy-bash-color-output>
black=0; red=1; green=2; yellow=3; blue=4; pink=5; cyan=6; white=7;
cecho() {
  local _color=$1; shift
  echo -e "$(tput setaf $_color)$(tput bold)$@$(tput sgr0)"
}

die() {
  cecho $red "$1"
  exit 1
}

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

COMPILER_DIR="$(dirname "$0")"

cecho $white "Building the compiler ..."

make -C "$COMPILER_DIR" cake

CAKE_OUTPUT="$(mktemp --suffix=.S)"

cecho $white "Compiling \`$INPUT' ..."

CAKE_ERR="$("$COMPILER_DIR/cake" 2>&1 < "$INPUT" > "$CAKE_OUTPUT")"

if [ -n "$CAKE_ERR" ]; then
  echo "$CAKE_ERR"
  die "CakeML failed"
fi

cecho $white "Linking ..."

gcc -o "$OUTPUT" -static "$COMPILER_DIR/basis_ffi.c" "$CAKE_OUTPUT"

cecho $green "Done."
