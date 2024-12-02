return {
  -- 'morhetz/gruvbox',
  -- priority = 1000,
  -- lazy = false,
  -- init = function()
  --   vim.cmd 'colorscheme gruvbox'
  -- end,
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000,
  --   init = function()
  --     vim.cmd 'colorscheme catppuccin-mocha'
  --   end,
  -- },
  {
    'nyoom-engineering/oxocarbon.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd 'colorscheme oxocarbon'
    end,
  },
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
}
