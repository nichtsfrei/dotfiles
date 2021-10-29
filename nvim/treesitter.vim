lua << EOF
  local tsc = require 'nvim-treesitter.configs'
  tsc.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = false,
        disable = {},
    },
    ensure_installed = {
        "c",
        "cmake",
        "go",
        "gomod",
        "fish",
        "json",
        "html",
        "scss",
        "lua",
        "python",
        "rust",
        "toml",
        "vim",
        "yaml"
    },
}
    
EOF
