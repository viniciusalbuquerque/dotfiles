set nocompatible
syntax on

set nu
set rnu

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

set nowrap

set laststatus=2

set showmode
set showcmd
set hidden

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

set signcolumn=yes
set colorcolumn=80

set updatetime=50

set cursorline

set list listchars=tab:»·,trail:·,nbsp:·

nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap ; :
inoremap jj <esc>

let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>e :Ex<CR>
nnoremap <leader>z :set nu!<CR><bar>:set rnu!<CR>
nnoremap <leader>r :%s///gc<left><left><left>

nnoremap <leader>. :cn<enter>
nnoremap <leader>, :cp<enter>
nnoremap <leader>/ :ccl<enter>
