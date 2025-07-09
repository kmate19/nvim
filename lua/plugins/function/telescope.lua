return {
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -DCMAKE_POLICY_VERSION_MINIMUM=3.5 -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
  },
  {
    -- TODO: replace with snacks picker sometime
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
    config = function()
      local t = require 'telescope'
      t.setup {
        pickers = {
          colorscheme = {
            enable_preview = true,
          },
          find_files = {
            theme = 'dropdown',
          },
          live_grep = {
            theme = 'dropdown',
          },
          buffers = {
            theme = 'dropdown',
          },
        },
      }
      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope Search Files' })
      vim.keymap.set('n', '<leader>w', builtin.live_grep, { desc = 'Telescope Live Grep' })
      vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope Search Buffers' })
      require('telescope').load_extension 'fzf'
    end,
  },
}
