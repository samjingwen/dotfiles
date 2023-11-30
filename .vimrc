let mapleader=' '

set number
set relativenumber

set scrolloff=8

set ignorecase
set smartcase

set hlsearch
set incsearch

vmap J :m '>+1<CR>gv=gv
vmap K :m '<-2<CR>gv=gv

nmap U <C-R>

" clear search highlight
nmap <silent> <C-l> :nohl<CR><C-l>

" Don't use Ex mode, use Q for formatting.
map Q gq
 
