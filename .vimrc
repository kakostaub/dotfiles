if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/syntastic'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'pangloss/vim-javascript', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundleLazy 'Raimondi/delimitMate', {'autoload':{'filetypes':['javascript']}}
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

" highlight on double-click
map <2-LeftMouse> *

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
