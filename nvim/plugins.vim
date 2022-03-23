filetype off
call plug#begin('~/.plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-vinegar'
Plug 'hoob3rt/lualine.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-dap-python'

call plug#end()
filetype plugin indent on
