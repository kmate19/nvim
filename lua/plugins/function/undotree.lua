return {
  {
    'mbbill/undotree',
    opts = {},
    config = function()
      vim.keymap.set('n', '<leader>U', function()
        vim.cmd.UndotreeToggle()
        vim.cmd.UndotreeFocus()
      end)
    end,
  },
}
