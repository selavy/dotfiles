#!/bin/sh

fpath=$(readlink -f gdbinit)
echo "Installing $fpath"
ln -f -s $fpath ~/.gdbinit
