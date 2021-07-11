lua << EOF

local ts_config = require('nvim-treesitter.configs')

ts_config.setup {
    ensure_installed = {
        'javascript',
        'typescript',
        'tsx',
        'vue',
        'html',
        'css',
        'scss',
        'bash',
        'lua',
        'json',
        'python',
        'php',
        'cpp',
        'c',
    },
    highlight = {
        enable = true,
        use_languagetree = true
    }
}

EOF
