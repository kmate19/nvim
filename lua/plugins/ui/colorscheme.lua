return {
  -- 'morhetz/gruvbox',
  -- priority = 1000,
  -- lazy = false,
  -- init = function()
  --   vim.cmd 'colorscheme gruvbox'
  -- end,
  -- 'rose-pine/neovim',
  -- name = 'rose-pine',
  -- priority = 1000,
  -- lazy = false,
  -- opts = {
  --   styles = {
  --     transparency = true,
  --   },
  -- },
  -- init = function()
  --   vim.cmd 'colorscheme rose-pine'
  -- end,
  'olivercederborg/poimandres.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('poimandres').setup {
      -- leave this setup function empty for default config
      -- or refer to the configuration section
      -- for configuration options
      disable_background = true,
    }
  end,

  -- optionally set the colorscheme within lazy config
  init = function()
    vim.cmd 'colorscheme poimandres'
  end,
}
