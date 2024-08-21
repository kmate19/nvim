return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {},
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = {
          'vim',
          'vimdoc',
          'json',
          'yaml',
          'toml',
          'cmake',
          'bash',
          'regex',

          'lua',
          'html',
          'css',
          'javascript',
          'jsdoc',
          'typescript',
          'tsx',
          'c_sharp',

          'c',
          'cpp',
          'rust',
          'zig',
          'go',
        },
        sync_install = false,
        auto_install = true,
        indent = {
          enable = true,
        },
      }
    end,
  },
}
