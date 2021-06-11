source ~/.vimrc

call plug#begin('~/.vim/plugged')
" Plug 'tpope/vim-fugitive'
Plug 'gruvbox-community/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
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

" Compe configs
luafile ~/.config/nvim/compe-config.lua
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

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
EOF

source ~/.config/nvim/telescope-config.vim
source ~/.config/nvim/lsp-config.vim
source ~/.config/nvim/lspsaga-config.vim
