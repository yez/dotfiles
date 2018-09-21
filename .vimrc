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
set nocursorline
set ttyfast
set ruler
set statusline+=%F
set laststatus=2
set number
set hlsearch

" allow copying to system clipboard
set clipboard=unnamedplus

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

" use dispatch to run async
let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" json formatter
command Jformat execute ":%!python -m json.tool"

" convenience mapping for spec running
map <Leader>s :call RunCurrentSpecFile()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" yanking and pasting to/from system clipboard
map <Leader>y "*y
map <Leader>P "*p
map <Leader>Y ggVG"*y

" do not fold markdown
let g:vim_markdown_folding_disabled = 1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_enable_highlighting = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { "mode" : "active" }

let g:CommandTTraverseSCM='pwd'
" bind K to grep word under cursor
nnoremap K :Ack! "\b<C-R><C-W>\b"<CR>:cw<CR>
