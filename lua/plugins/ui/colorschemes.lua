return {

  {
    'kevinm6/kurayami.nvim',
    event = 'VimEnter',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'kurayami' -- this is enough to initialize and load plugin
    end,
  },

  -- {
  --   '0xstepit/flow.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     require('flow').setup {
  --       fluo_color = 'pink', --  Fluo color: pink, yellow, orange, or green.
  --       mode = 'normal', -- Intensity of the palette: normal, bright, desaturate, or dark. Notice that dark is ugly!
  --       aggressive_spell = false, -- Display colors for spell check.
  --     }
  --
  --     vim.cmd 'colorscheme flow'
  --   end,
  -- },

  -- {
  --   'craftzdog/solarized-osaka.nvim',
  --   opts = {
  --     transparent = false,
  --   },
  -- },
  --
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  -- },
}
