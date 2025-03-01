return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' },
    opts = {},
    config = function()
      local t = require 'telescope'
      t.setup {
        pickers = {
          colorscheme = {
            enable_preview = true,
          },
        },
      }
      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope Search Files' })
      vim.keymap.set('n', '<leader>w', builtin.live_grep, { desc = 'Telescope Live Grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope Search Buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope Help Tags' })
      vim.keymap.set('n', '<leader>fc', builtin.colorscheme, { desc = 'Telescope p Tags' })
    end,
  },
}
