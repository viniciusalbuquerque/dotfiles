set nocompatible
syntax on

" set notimeout ttimeout ttimeoutlen=200

set showcmd
set number
set relativenumber
set cursorline
set showmatch
set nowrap

set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4

set ruler

set laststatus=2
set noshowmode

let mapleader = " "
map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>e :Ex<CR>

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark
