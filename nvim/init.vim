source ~/.vimrc

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'gruvbox-community/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
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

" Telescope mappings
nnoremap <leader>p <cmd>Telescope git_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fw <cmd>Telescope grep_string<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
require('telescope')
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

source ~/.config/nvim/lsp-config.vim
