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
      map('n', '<leader>x', '<Cmd>BufferClose<CR>', { desc = 'Close Tab' })
    end,
    opts = {
      animation = false,
      auto_hide = 0,
      clickable = false,
      icons = {
        button = '',
        -- Enables / disables diagnostic symbols
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
          [vim.diagnostic.severity.WARN] = { enabled = false },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        gitsigns = {
          added = { enabled = true, icon = '+' },
          changed = { enabled = true, icon = '~' },
          deleted = { enabled = true, icon = '-' },
        },
        filetype = {
          -- Sets the icon's highlight group.
          -- If false, will use nvim-web-devicons colors
          custom_colors = false,

          -- Requires `nvim-web-devicons` if `true`
          enabled = true,
        },
        separator = { left = '▎', right = '' },

        separator_at_end = true,

        modified = { button = '●' },
        pinned = { button = '', filename = true },

        preset = 'default',
      },
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
