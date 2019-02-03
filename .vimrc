execute pathogen#infect()
set number
set relativenumber
set showmatch
set cursorline

set hlsearch
set smartcase
set ignorecase
set incsearch

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

nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
vnoremap <up>    <nop>
vnoremap <down>  <nop>
vnoremap <left>  <nop>
vnoremap <right> <nop>

map <C-t> :tabnew <CR>

let g:hardtime_default_on = 1
