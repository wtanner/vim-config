set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'

call vundle#end()

filetype on
filetype plugin indent on

autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType python map <buffer> <F5> :w<cr>:!python %<cr>

" Key mappings
" Map CTRL-s as save, independent of mode
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>

" Timestamp mapping
noremap <leader>s a <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
noremap <leader>d a<C-R>=strftime("%Y-%m-%d")<CR><Esc>

set mouse=a
set number		" line numbers
set ai                  " auto indenting
set cursorline
set si
set wrap
set history=100         " keep 100 lines of history
syntax on               " syntax highlighting
set incsearch
set autoindent

set laststatus=2
set foldmethod=indent
set foldlevel=99

" no error bells
set noerrorbells
