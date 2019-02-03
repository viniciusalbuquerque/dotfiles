execute pathogen#infect()
set number
set relativenumber
set showmatch
set cursorline

set hlsearch
set smartcase
set ignorecase
set incsearch
nnoremap <silent> <C-l> :nohl <CR>

set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set ruler
highlight ColorColumn ctermbg=magenta
call matchadd('colorColumn', '\%71v', 100)

set laststatus=2
set noshowmode
set timeoutlen=1000 ttimeoutlen=0

syntax enable

map <C-n> :NERDTreeToggle <CR>

map <C-t> :tabnew <CR>
map <F2> :bprevious<CR>
map <F3> :bnext<CR>

let g:hardtime_default_on = 1
