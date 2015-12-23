" Colin Mills .vimrc 
" Date: 2015/05/27 
" A .vimrc that is a clean slate
" Took strong inspiration from http:://github.com/skwp/dotfiles/blob/master/vimrc  

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins 
Plugin 'gmarik/Vundle.vim'
Plugin 'mikewest/vimroom'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Bundle 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

" **** GVim Configuration ****
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" Set the font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" **** General Configuration ****
colorscheme hipster
set backspace=indent,eol,start " Make backspaces work as intended
set history=1000               " Make sure we remember history
set showcmd                    " I do like to see the commands I am running.
set showmode                   " I like to see the mode I am running in
set gcr=a:blinkon0             " No cursor blink
set visualbell                 " Audio hurts the ears
set autoread                   " Reload changes outside of vim
set hidden                     " Let buffers work correctly.


" **** Disable Commenting **** "
autocmd BufNewFile,BufRead * setlocal formatoptions-=cor

" Set the mapleader to space
let mapleader="\<Space>"

" **** Backups and Swaps   ****
set noswapfile
set nobackup
set nowb


" **** Syntax Highlighting **** 
syntax on                      " Syntax on
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


" **** Keyindings ****
inoremap jj <Esc>

" **** Leader Keybindings ****
nnoremap <Leader>w :w<CR>   " A way to write using leaders and the w
nnoremap <Leader>wq :wq<CR> " Same for writing and quitting.

nnoremap <Leader>id :r!echo $DATE<CR> " Insert the date into a file
nnoremap <Leader>it :r!echo $TIME<CR> " Insert the time into a file

nnoremap <Leader>in :r!echo $NAME<CR> " Insert my name into a file
nnoremap <Leader>ie :r!echo $EMAIL<CR> " Insert my email into a file

noremap <Leader>bsp :vsp<CR> " Vertical Split
nnoremap <Leader>sp  :sp<CR>  " Vertical Split

