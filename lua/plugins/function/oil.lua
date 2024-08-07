return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        default_file_explorer = true,
        columns = {
          'icon',
          'size',
        },
      }
      -- open oil
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory with Oil.' })
    end,
  },
}
