return {
  {
    'craftzdog/solarized-osaka.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      -- vim.cmd.colorscheme 'solarized-osaka'
    end,
  },

  {
    'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    name = 'rose-pine',
    config = function()
      -- vim.cmd 'colorscheme rose-pine'
    end,
  },

  {
    'slugbyte/lackluster.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      -- vim.cmd.colorscheme 'lackluster'
    end,
  },

  {
    'shaunsingh/nord.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      -- Set the colorscheme to nord
      vim.cmd.colorscheme 'nord'
    end,
  },
}
