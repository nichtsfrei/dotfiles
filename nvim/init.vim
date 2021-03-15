filetype off
call plug#begin('~/.plugged')
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'psf/black', { 'branch': 'stable' }
call plug#end()
filetype plugin indent on
" commonly used files
let mapleader=","
set ruler
set nocompatible
set relativenumber
set number
set hidden
set path+=**
set wildmenu
command! MakeTags !ctags -R .
set background=dark
syntax on
set cursorline
colorscheme my_dark_theme 
set backspace=indent,eol,start

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set nobackup
set noswapfile

set fileformats=unix,dos,mac

nnoremap <Leader>b :buffers<CR>:buffer<Space>
nnoremap <Leader>f :NERDTreeToggle<CR>
noremap <c-p> :<C-u>Files<CR>
" Nerdtree
let NERDTreeHijackNetrw=1
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

set nowritebackup
set cmdheight=2

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> Q :call CocActionAsync('doQuickfix')<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
set statusline^=%{coc#status()}
" auto header
let g:header_auto_add_header = 0
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent smartindent
set path=.,**