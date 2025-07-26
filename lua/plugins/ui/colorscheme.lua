return {
  {
    'craftzdog/solarized-osaka.nvim',
    priority = 1000,
    lazy = false,
  },

  {
    'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    name = 'rose-pine',
  },

  {
    'slugbyte/lackluster.nvim',
    lazy = false,
    priority = 1000,
  },

  {
    'shaunsingh/nord.nvim',
    lazy = false,
    priority = 1000,
  },

  {
    'metalelf0/base16-black-metal-scheme',
    lazy = false,
    priority = 1000,
    config = function()
      local enabled = false

      if not enabled then
        return
      end

      vim.cmd.colorscheme 'base16-black-metal-venom'

      -- change some hl groups to my liking
      vim.api.nvim_set_hl(0, 'Comment', {
        fg = '#4a2103',
      })
      vim.api.nvim_set_hl(0, 'String', {
        fg = '#a210e6',
      })
    end,
  },

  {
    'xiyaowong/transparent.nvim',
  },
}
