#!/bin/sh

mk_symlink () {
    FPATH=$(readlink -f ./$1)
    echo "Installing $1"
    ln -f -s $FPATH ~/.config/nvim/$1
}


mkdir -p ~/.config/nvim/
mk_symlink "init.vim"
mk_symlink "local_init.vim"
mk_symlink "local_bundles.vim"

echo "Installing plugins"
vim +PlugInstall +qall
rc=$?
if [ $rc -ne 0 ]; then
	echo "Error install plugins!"
fi
exit $rc
