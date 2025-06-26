return {
  {
    -- TODO: replace with snacks picker sometime
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
      vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope Search Buffers' })
    end,
  },
}
