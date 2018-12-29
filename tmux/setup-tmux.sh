#!/bin/sh

FPATH=$(readlink -f ./tmux.conf)
echo "Installing ~/.tmux.conf"
ln -f -s $FPATH ~/.tmux.conf
