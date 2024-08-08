return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    opts = {},
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    config = function()
      require('oil').setup {
        default_file_explorer = true,
        columns = {
          'icon',
        },
      }
      -- open oil
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory with Oil.' })
    end,
  },
}
