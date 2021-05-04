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
nnoremap <leader>c :set nu!<CR><bar>:set rnu!<CR>
nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :Git commit<CR>

call plug#begin('~/.vim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-fugitive'
Plug 'gruvbox-community/gruvbox'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
call plug#end()

colorscheme gruvbox
set background=dark
highlight Normal guibg=None

" Compe configs
set completeopt=menuone,noselect
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true
let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.kotlin_language_server.setup{}
require'lspconfig'.tsserver.setup{}

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules", ".git", "__pycache__"}
  }
}
EOF

