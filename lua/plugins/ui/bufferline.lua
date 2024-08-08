return {
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('bufferline').setup {
        options = {
          themeable = true,
          diagnostics = 'nvim_lsp',
          diagnostics_indicator = function(count, level)
            local icon = level:match 'error' and ' ' or ' '
            return ' ' .. icon .. count
          end,
        },
      }
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      -- Move to previous/next
      map('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', opts)
      map('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', opts)
      map('n', '<leader>x', '<Cmd>bd<CR>', opts)
    end,
  },
}
