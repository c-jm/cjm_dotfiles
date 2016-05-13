" Colin Mills .vimrc 
" Date: 2015/05/27 
"
" A .vimrc that is a clean slate
" Took strong inspiration from http:://github.com/skwp/dotfiles/blob/master/vimrc  

" Source Oother Files
so ~/.vim/plugins.vim

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


set t_Co=256

" **** General Configuration ****
colorscheme gruvbox
set backspace=indent,eol,start " Make backspaces work as intended
set history=1000               " Make sure we remember history
set showcmd                    " I do like to see the commands I am running.
set showmode                   " I like to see the mode I am running in
set gcr=a:blinkon0             " No cursor blink
set visualbell                 " Audio hurts the ears
set autoread                   " Reload changes outside of vim
set hidden                     " Let buffers work correctly.
set number
set relativenumber

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
set tw=100


" *80*** Searching ****
set incsearch
set ignorecase
set smartcase


" Aliases
command! -nargs=0 Sw w!sudo tee % > /dev/null

" **** Keyindings ****
inoremap jj <Esc>

" **** Leader Keybindings ****
nnoremap <Leader>w :w<CR>   " A way to write using leaders and the w
nnoremap <Leader>wq :wq<CR> " Same for writing and quitting.

nnoremap <Leader>ev :vsp $MYVIMRC <CR> " A way to be able to open my vimrc
nnoremap <Leader>el :vsp $HOME/.vim/plugins.vim <CR> " A way to be able to open my vimrc

"" **** Split Management ****

" Remap all the keys for easy moving around
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

noremap <Leader>vp  :vsp<CR> " Vertical Split
nnoremap <Leader>sp  :sp<CR>  " Vertical Split


"**** Ultisnips ****"
let  g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    
let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips/"



