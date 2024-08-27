return {
  'nvim-tree/nvim-tree.lua',
  event = 'VeryLazy',
  lazy = true,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {}
    vim.keymap.set('n', '<leader>nvt', vim.cmd.NvimTreeToggle)
  end,
}
