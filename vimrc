" Colin Mills .vimrc 
" Date: 2015/05/27 
" A .vimrc that is a clean slate
" Took strong inspiration from http:://github.com/skwp/dotfiles/blob/master/vimrc  

" Use vim settings instead of vi.
set nocompatible


" **** General Configuration ****
"set number                     " I like line number
set backspace=indent,eol,start " Make backspaces work as intended
set history=1000               " Make sure we remember history
set showcmd                    " I do like to see the commands I am running.
set showmode                   " I like to see the mode I am running in
set gcr=a:blinkon0             " No cursor blink
set visualbell                 " Audio hurts the ears
set autoread                   " Reload changes outside of vim
set hidden                     " Let buffers work correctly.

" Set the mapleader to space
let mapleader="<Space>"

" **** Backups and Swaps   ****
set noswapfile
set nobackup
set nowb


" **** Syntax Highlighting **** 
"syntax on                      " Syntax on
filetype plugin on             " Determine by filetype which syntax to use 

" **** Indentation ****
set autoindent                 
set smartindent 	      
set smarttab
set shiftwidth=4 
set softtabstop=4
set tabstop=4
set expandtab
set nowrap
set linebreak


" **** Searching ****
set incsearch
set ignorecase
set smartcase


" **** Keybindings ****
inoremap jj <Esc>
















