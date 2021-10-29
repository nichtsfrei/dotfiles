filetype off
call plug#begin('~/.plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'gabrielelana/vim-markdown'
Plug 'godlygeek/tabular'
call plug#end()
filetype plugin indent on
