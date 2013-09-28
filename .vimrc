set nocompatible
filetype off

" Setup Vundle to manage vim plugins from .vimrc
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" install bundles to ~/.vim/bundle
Bundle 'gmarik/vundle'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'davidhalter/jedi-vim'
Bundle 'ervandew/supertab.git'
Bundle 'fs111/pydoc.vim' 
Bundle 'fholgado/minibufexpl.vim'
Bundle 'bling/vim-airline'

filetype on
filetype plugin indent on

autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType python map <buffer> <f5> :w<cr>:!python %<cr>

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

set laststatus=2
set foldmethod=indent
set foldlevel=99

" no error bells
set noerrorbells

set nosmartindent

let g:SuperTabDefaultCompletionType = "context"

" set CTAGS path
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif
