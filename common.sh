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
