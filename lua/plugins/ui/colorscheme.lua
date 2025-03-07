return {
  'vague2k/vague.nvim',
  priority = 1000,
  lazy = false,
  init = function()
    vim.cmd.colorscheme 'vague'
  end,
}
