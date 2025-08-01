return {
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { { 'nvim-treesitter/nvim-treesitter-context', opts = { mode = 'cursor' } } },
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
          'svelte',
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

        highlight = {
          enable = true,
        },

        indent = {
          enable = true,
        },
      }
    end,
  },
}
