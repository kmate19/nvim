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
    'rebelot/kanagawa.nvim',
    config = function()
      -- Default options:
      require('kanagawa').setup {
        compile = true, -- enable compiling the colorscheme
        -- undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = { italic = true },
        keywordStyle = { bold = true },
        statementStyle = { bold = true },
        typeStyle = { italic = true, bold = true },
        transparent = true, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {
            -- Lsp Hover highlights
            LspReferenceWrite = { bg = '#333838', bold = true, underline = true },
            LspReferenceRead = { bg = '#333838', bold = true, underline = true },
            LspReferenceText = { bg = '#333838', bold = true, underline = true },
            -- Parentheses matching highlights
            MatchParen = { bg = '#7b7d7d', bold = true },
          }
        end,
        theme = 'wave', -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = 'wave', -- try "dragon" !
          light = 'lotus',
        },
      }

      -- setup must be called before loading
      vim.cmd 'colorscheme kanagawa'
    end,
  },

  -- {
  --   'EdenEast/nightfox.nvim',
  --   priority = 1000,
  --   config = function()
  --     require('nightfox').setup {
  --       options = {
  --         styles = {
  --           comments = 'italic',
  --           constants = 'bold,italic,underline',
  --           keywords = 'bold',
  --           types = 'italic,bold',
  --         },
  --       },
  --       groups = {
  --         all = {
  --           -- Lsp Hover highlights
  --           LspReferenceWrite = { bg = '#333838', style = 'italic,undercurl,bold' },
  --           LspReferenceRead = { style = 'italic,undercurl,bold' },
  --           LspReferenceText = { style = 'italic,undercurl,bold' },
  --           -- Parentheses matching highlights
  --           MatchParen = { bg = '#7b7d7d', style = 'bold' },
  --         },
  --       },
  --     }
  --   end,
  --   init = function()
  --     vim.cmd.colorscheme 'carbonfox'
  --   end,
  -- },
}
