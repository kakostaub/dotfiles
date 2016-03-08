set nocompatible               

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'Raimondi/delimitMate'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'pangloss/vim-javascript'
"Plug 'nathanaelkane/vim-indent-guides'
call plug#end()

filetype plugin indent on
syntax on
set shiftwidth=2 softtabstop=2 expandtab
set history=200
set autoindent
set clipboard+=unnamed
set clipboard=unnamed
set number
set ruler
set showmatch
set matchtime=3
set wrap
set ignorecase
set smartcase
set incsearch
set hlsearch
set wrapscan
set showcmd
set autoread
set nobackup
set noswapfile
set iminsert=0
set imsearch=-1
set backspace=start,eol,indent
set guifont=Consolas:h11
set laststatus=2
set ttyfast
set lazyredraw
set splitbelow
set splitright
set cursorline

" highlight on double-click
map <2-LeftMouse> *

" vim-airline setting
let g:airline#extensions#tabline#enabled = 1

" delimitMate setting
let delimitMate_expand_cr = 1
