return {

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>')
      vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>')
      vim.keymap.set('n', '<leader>x', '<Cmd>BufferClose<CR>', { desc = 'Close Tab' })
    end,
    opts = {
      animation = false,
      auto_hide = 0,
      clickable = false,
      icons = {
        button = '',
        -- Enables / disables diagnostic symbols
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'E' },
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

        modified = { button = '.' },
        pinned = { button = '', filename = true },

        preset = 'default',
      },
    },
  },
}
