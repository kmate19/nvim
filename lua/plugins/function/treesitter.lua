return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'vim',
        'vimdoc',
        'json',
        'yaml',
        'toml',
        'cmake',

        'lua',
        'html',
        'css',
        'javascript',
        'jsdoc',
        'typescript',
        'c_sharp',

        'c',
        'cpp',
        'rust',
        'zig',
        'go',
      },
    },
  },
}
