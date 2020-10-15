set nocompatible
filetype off

filetype plugin indent on

" **** GVim Configuration ****
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" Set the font
set guifont=:s:h16

set t_Co=256

" **** General Configuration ****
colorscheme monokai-pro
set guifont=Source_Code_Pro:h18

set backspace=indent,eol,start " Make backspaces work as intended
set history=1000               " Make sure we remember history
set showcmd                    " I do like to see the commands I am running.
set showmode                   " I like to see the mode I am running in
set gcr=a:blinkon0             " No cursor blink
set visualbell                 " Audio hurts the ears
set autoread                   " Reload changes outside of vim
set hidden                     " Let buffers work correctly.
set number
set tw=10000
set nowrap

" Set the mapleader to space
let mapleader="\<Space>"

" **** Backups and Swaps   ****
set noswapfile
set nobackup
set nowb

" **** Syntax Highlighting **** 
set encoding=utf-8
set fileencoding=utf-8

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
set tw=100000


" *80*** Searching ****
set incsearch
set ignorecase
set smartcase

" **** Keyindings ****
inoremap jj <Esc>

" **** Leader Keybindings ****
nnoremap <Leader>w :w<CR>   " A way to write using leaders and the w
nnoremap <Leader>wq :wq<CR> " Same for writing and quitting.


fu! RenameIdentifier()
    redraw
    let currentIdentifier = expand("<cword>")
    let msg = 'Enter what you want to change ' . currentIdentifier . ' with: '
    let change = input(msg)
    let cmd = "%s/" . currentIdentifier . "/" . change . "/g"
    let shouldExec = input('Should we execute' . cmd . ' (y/n): ')

    redraw
    if shouldExec == 'y'
        execute cmd
    else
        echo 'Did not exec cmd ' . cmd
    endif

endfunction

" **** Split Management ****

" Remap all the keys for easy moving around
set splitbelow
set splitright
"" *************************

" Lightline
" **********
set laststatus=2

" **** Remaps ****
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

noremap <Leader>vsp  :vsp<CR> " Vertical Split
noremap <Leader>hsp  :hsp<CR> " Vertical Split

nnoremap <Leader>r :source %<CR>
nnoremap <Leader>re :call RenameIdentifier()<CR>

nnoremap <Leader>ss :set spell<CR>
nnoremap <Leader>nss :set nospell<CR>

nnoremap <Leader>icd :pu=strftime('%c')<CR>

