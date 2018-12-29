#!/bin/sh

FPATH=$(readlink -f ./tmux.conf)
echo "Creating symlink ~/.tmux.conf -> $FPATH"
ln -f -s $FPATH ~/.tmux.conf
