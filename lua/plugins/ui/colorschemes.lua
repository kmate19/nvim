return {

  -- {
  --   'kevinm6/kurayami.nvim',
  -- },
  --
  -- {
  --   'shaunsingh/nord.nvim',
  -- },
  --
  -- {
  --   'ofirgall/ofirkai.nvim',
  -- },

  -- {
  --   'craftzdog/solarized-osaka.nvim',
  --   priority = 1000,
  --   opts = {
  --     transparent = false,
  --   },
  -- },

  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  -- },

  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    config = function()
      require('nightfox').setup {
        options = {
          styles = {
            comments = 'italic',
            constants = 'bold,italic,underline',
            keywords = 'bold',
            types = 'italic,bold',
          },
        },
        groups = {
          all = {
            -- Lsp Hover highlights
            LspReferenceWrite = { bg = '#333838', style = 'italic,undercurl,bold' },
            LspReferenceRead = { style = 'italic,undercurl,bold' },
            LspReferenceText = { style = 'italic,undercurl,bold' },
            -- Parentheses matching highlights
            MatchParen = { bg = '#7b7d7d', style = 'bold' },
          },
        },
      }
    end,
    init = function()
      vim.cmd.colorscheme 'carbonfox'
    end,
  },
}
