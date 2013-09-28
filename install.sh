#!/bin/bash
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
mkdir ~/.vim/_backup
mkdir ~/.vim/_temp
ln -s ~/.vim/.vimrc ~/.vimrc
vim +BundleInstall +qall

cd bundle/jedi-vim
git submodule update --init
