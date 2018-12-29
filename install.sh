#!/bin/sh

die() { echo "$*" 1>&2 ; exit 1; }

./vim/setup-vim.sh or die "Failed to install neovim setup!"
