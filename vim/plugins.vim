
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins 
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'alvan/vim-closetag'
Plugin 'pangloss/vim-javascript'
Plugin 'fatih/vim-go'
Plugin 'w0ng/vim-hybrid'


" Pandoc
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

" Ultisnips
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"*** TPope ****"
Plugin 'tpope/vim-vinegar'



call vundle#end()
filetype plugin indent on


