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
}
