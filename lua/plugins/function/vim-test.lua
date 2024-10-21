return {
  'vim-test/vim-test',
  enabled = false,
  dependencies = { 'preservim/vimux' },
  config = function()
    vim.cmd "let test#strategy = 'vimux'"
  end,
  keys = {
    { '<leader>t', '<cmd>TestNearest<CR>' },
    { '<leader>T', '<cmd>TestFile<CR>' },
    { '<leader>a', '<cmd>TestSuite<CR>' },
    { '<leader>l', '<cmd>TestLast<CR>' },
    { '<leader>g', '<cmd>TestVisit<CR>' },
  },
}
