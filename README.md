vim-config
==========

There are two branches of this repository: "simple" and "complex". "simple" uses default vim 7.4.x properties and colorschemes, while "complex" includes add-ons such as command-t and vimwiki.

## Steps to clone and setup this vim-config

	cd ~
	git clone git://github.com/wtanner/vim-config.git ./.vim
    	cd ~/.vim

        simple:
          done!
 
        complex:
	./install.sh

## Steps used create the "complex" vim-config repository:

1. Initialize the repo
2. Add submodules
3. Setup vundle
4. Create a .vimrc file

### 1. Intitials the repo

	mkdir ~/.vim/
	mkdir ~/.vim/{autoload,bundle}
	cd ~/.vim/
	git init

### 2. Add submodules

	git submodule add https://github.com/gmarik/vundle.git bundle/vundle
	git submodule init
	git submodule update
	git submodule foreach git submodule init
	git submodule foreach git submodule update
