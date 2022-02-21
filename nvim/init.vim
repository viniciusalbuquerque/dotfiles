source ~/.vimrc

call plug#begin('~/.vim/plugged')
" Plug 'tpope/vim-fugitive'
Plug 'gruvbox-community/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
call plug#end()

colorscheme gruvbox
set background=dark
highlight Normal guibg=None

" Cmp configs
luafile ~/.config/nvim/cmp-config.lua

lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.kotlin_language_server.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.gopls.setup{}
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}
EOF

source ~/.config/nvim/telescope-config.vim
source ~/.config/nvim/lsp-config.vim
source ~/.config/nvim/lspsaga-config.vim
