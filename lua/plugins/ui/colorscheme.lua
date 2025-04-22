return {
  'sainnhe/sonokai',
  priority = 1000,
  lazy = false,
  config = function()
    vim.g.sonokai_style = 'espresso'
    vim.cmd.colorscheme 'sonokai'
  end,
}
