return {

  {
    'kevinm6/kurayami.nvim',
  },

  {
    'shaunsingh/nord.nvim',
  },

  {
    'ofirgall/ofirkai.nvim',
  },

  -- {
  --   'craftzdog/solarized-osaka.nvim',
  --   priority = 1000,
  --   opts = {
  --     transparent = false,
  --   },
  -- },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
