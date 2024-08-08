return {

  {
    'kevinm6/kurayami.nvim',
    priority = 1000,
  },

  {
    'shaunsingh/nord.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'nord'
    end,
  },

  {
    'ofirgall/ofirkai.nvim',
    priority = 1000,
  },

  {
    'craftzdog/solarized-osaka.nvim',
    priority = 1000,
    opts = {
      transparent = false,
    },
  },

  {
    'catppuccin/nvim',
    priority = 1000,
    name = 'catppuccin',
  },
}
