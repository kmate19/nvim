return {
  'craftzdog/solarized-osaka.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd.colorscheme 'solarized-osaka'
  end,
}
