filetype on
execute pathogen#infect()
filetype plugin indent on

set nocompatible
syntax on

set modelines=0

set tabstop=2
set expandtab
set shiftwidth=2
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set laststatus=2
set undofile
set number

" open below and right for splits, more natural
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" disable arror keys in execute mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Use silver surfer for global find
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e