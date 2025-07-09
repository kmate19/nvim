return {
  {
    'echasnovski/mini.nvim',
    dependencies = {
      'echasnovski/mini.icons',
      config = function()
        require('mini.icons').setup()
        ---@diagnostic disable-next-line
        MiniIcons.mock_nvim_web_devicons()
      end,
    },
    config = function()
      require('mini.surround').setup()
      require('mini.pairs').setup()
      -- try without statusline for a bit
      -- require('mini.statusline').setup()
      require('mini.tabline').setup {
        vim.keymap.set('n', '<Tab>', ':bnext<CR>'),
        vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>'),
      }
    end,
  },
  {
    'echasnovski/mini.comment',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    event = 'VeryLazy',
    opts = {
      options = {
        custom_commentstring = function()
          -- this is for ts comments in frameworks that have templates in the same file, like vue
          return require('ts_context_commentstring.internal').calculate_commentstring() or vim.bo.commentstring
        end,
      },
    },
  },
}
