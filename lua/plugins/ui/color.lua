return {
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
    init = function()
      vim.cmd.colorscheme 'solarized-osaka'
    end,
  },
}
