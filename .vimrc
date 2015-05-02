" Basic Vimrc

" Vundle "
set nocompatible

filetype off 

" Call the vundle function
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Install my own plugins

" Install colour related plugins
Plugin 'vim-scripts/xoria256.vim'
Plugin 'altercation/vim-colors-solarized'

" Vim Markdown 
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc-after'

" Vim Autopairs
Plugin 'jiangmiao/auto-pairs' 

" Supertab
Plugin 'ervandew/supertab'

" Ultisnips 
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" End the vundle function
call vundle#end()
filetype plugin indent off


" Basic Options "

filetype plugin on " Set to detect filetype 
set ruler " Turn on column and character number
set wildmenu "Smart completion of vim commands
set showcmd " Show the command
set showmode 


" Searching
set ignorecase
set smartcase
set incsearch
set nohlsearch

" Parentheses 
set showmatch 

" Turn off auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o



" Turn off error sounds
set noerrorbells
set novisualbell
set tm=500


" Colours and Fonts "
syntax enable
set background=dark
colorscheme solarized
"
" Files and backups "
set nobackup
set nowb
set noswapfile


" Tabs and such "
set expandtab
set smarttab

" Tab and Shift Width
set shiftwidth=4
set tabstop=4

"Linebreak
set lbr

" Text Width and Colour Column
set textwidth=80
set colorcolumn=+1



" Auto and smart ident with wrap
set si
set ai
set wrap




" PLUGINS 

" Ultisnips

" Setter up
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"KEYMAPPINGS"
"____________"



" NO OPERATION
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>




" Convience Keys 

" Indentation
map <F7> mzgg=G'z<CR>


" Set bn (buffer-next) and bp(buffer-previous) to C-n and C-p
noremap <C-n> :bn<CR>
noremap <C-p> :bp<CR>
inoremap jj <Esc>  


" Leader 
let mapleader = "\<Space>"

" Leader Commands

" Save
nnoremap <Leader>w :w<CR>

" Quit
nnoremap <leader>q :q!<CR>

" Save and quit
nnoremap <Leader>wq :wq<CR>


" Open your .vimrc
nnoremap <Leader>vrc :e ~/.vimrc<CR>


" Toggle Mappings "

" Turn on and off highlighted searching
nnoremap <silent> <Leader>n :set invhls hls ?<CR>

" Turn on and off wrap
nnoremap <silent> <Leader>tw :set invwrap wrap ?<CR>

" Turn on and off number
nnoremap <silent> <Leader>tn :set invnumber number ?<CR>
