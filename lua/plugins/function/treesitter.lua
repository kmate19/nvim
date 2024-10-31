return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {},
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = {
          -- misc
          'json',
          'yaml',
          'regex',

          -- languages
          'lua',
          'html',
          'css',
          'vue',
          'javascript',
          'jsdoc',
          'typescript',
          'tsx',
          'python',

          'c',
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
