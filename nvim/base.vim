filetype plugin indent on
" commonly used files
set title
let mapleader=","
set ruler
set nocompatible
set relativenumber
set number
set hidden
set path+=**
set wildmenu
syntax on
set cursorline
set backspace=indent,eol,start

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set nobackup
set noswapfile

set fileformats=unix,dos,mac

nnoremap <Leader>b :buffers<CR>:buffer<Space>
"nnoremap <Leader>f :NERDTreeToggle<CR>
"noremap <c-p> :<C-u>Files<CR>
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

set shortmess+=c

set nowritebackup
set cmdheight=2
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent smartindent
set path=.,**
