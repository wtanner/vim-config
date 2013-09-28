set nocompatible
filetype off

" Setup Vundle to manage vim plugins from .vimrc
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" install bundles to ~/.vim/bundle
Bundle 'gmarik/vundle'
Bundle 'git://git.wincent.com/command-t.git'

" install snipmate and related dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'

Bundle 'fs111/pydoc.vim' " pydoc
Bundle 'fholgado/minibufexpl.vim' " minibufexpl

filetype on
filetype plugin indent on

" Key mappings
" Map CTRL-s as save, independent of mode
let mapleader=","	" remap leader

" remap window movement keys
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>



set mouse=a
set number		" line numbers
set ai                  " auto indenting
set si
set wrap
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
set autoindent

set foldmethod=indent
set foldlevel=99

" no error bells
set noerrorbells

set nosmartindent

" set CTAGS path
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif
