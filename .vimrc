"Vim-Plug Setup
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
call plug#end()


"Base setup
set shell=sh
set nocompatible
set number
set laststatus=2
set visualbell
set encoding=utf-8
set nowrap
set cursorline
set ruler
set showmatch
set history=100
set undolevels=100 

"Indention settings
set autoindent
set smartindent
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"Search settings
set incsearch
set hlsearch
set ignorecase

"Key mapping
let mapleader=" "
map <f2> :w! <CR>
map <f3> :source ~/.vimrc<CR>
map <leader>r :let @/ = ""<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"Color-scheme/file specific syntax highlighting
syntax on
filetype on
filetype plugin indent on
set t_Co=256
set background=dark
colorscheme onedark

"Javascript syntax highlighting spec
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

"Auto-completes css
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
"Startify bookmark files
let g:startify_bookmarks = [ '.vimrc' ]
