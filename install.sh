#!/bin/sh

die() { echo "$*" 1>&2 ; exit 1; }

install() {
    cd $1 && ./setup-$1.sh && cd .. or die "Failed to install $1 setup!"
}

install vim
install tmux
install git
