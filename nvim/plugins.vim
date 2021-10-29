filetype off
call plug#begin('~/.plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TsUpdate' }
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'rhysd/vim-clang-format'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-vinegar'
Plug 'tomasiser/vim-code-dark'
Plug 'gabrielelana/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'hoob3rt/lualine.nvim'
call plug#end()
filetype plugin indent on
