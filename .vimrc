if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'bling/vim-airline'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

syntax on
colorscheme darkblue
set shiftwidth=4 softtabstop=4 expandtab
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

" vim-airline setting
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
