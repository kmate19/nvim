return {
  {
    'echasnovski/mini.nvim',
    dependencies = { 'echasnovski/mini.icons', opts = {} },
    config = function()
      require('mini.surround').setup()
      require('mini.pairs').setup()
      require('mini.statusline').setup()
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
          return require('ts_context_commentstring.internal').calculate_commentstring() or vim.bo.commentstring
        end,
      },
    },
  },
}
