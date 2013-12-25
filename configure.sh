#!/usr/bin/env zsh

trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT

set -e

DOTFILES_ROOT="`pwd`"

info () {
  printf "  [ \033[00;34m..\033[0m ] $1"
}

user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

link_files () {
  ln -s $1 $2
  success "linked $1 to $2"
}

add_to_path () {
  export PATH=$1:$PATH
  success "added $1 to PATH"
}

# Add bin to the path
dest="$HOME/.bin"
link_files "$DOTFILES_ROOT/bin/" $dest
add_to_path $dest

