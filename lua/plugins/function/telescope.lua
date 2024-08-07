return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
    config = function()
      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,
  },
}
