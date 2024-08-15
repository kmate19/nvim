return {

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      -- Move to previous/next
      map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
      map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
      map('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      animation = false,
      -- insert_at_start = true,
      -- …etc.
    },
  },

  --     'akinsho/bufferline.nvim',
  --     dependencies = { 'nvim-tree/nvim-web-devicons' },
  --     config = function()
  --       require('bufferline').setup {
  --         options = {
  --           themeable = true,
  --           diagnostics = 'nvim_lsp',
  --           diagnostics_indicator = function(count, level)
  --             local icon = level:match 'error' and ' ' or ' '
  --             return ' ' .. icon .. count
  --           end,
  --         },
  --       }
  --       local map = vim.api.nvim_set_keymap
  --       local opts = { noremap = true, silent = true }
  --
  --       -- Move to previous/next
  --       map('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', opts)
  --       map('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', opts)
  --       map('n', '<leader>x', '<Cmd>bd<CR>', opts)
  --     end,
  --   },
}
