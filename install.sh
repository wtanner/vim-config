#!/bin/bash
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
mkdir ~/.vim/_backup
mkdir ~/.vim/_temp
ln -s ~/.vim/.vimrc ~/.vimrc
vim +BundleInstall +qall

# jedi-vim requires installation of Jedi
cd bundle/jedi-vim
git submodule update --init

# command-t compilation required
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
