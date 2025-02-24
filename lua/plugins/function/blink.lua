return {
  'saghen/blink.cmp',
  dependencies = 'L3MON4D3/LuaSnip',
  version = '*',
  build = 'cargo build --release',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    snippets = {
      preset = 'luasnip',
      -- expand = function(snippet)
      --   require('luasnip').lsp_expand(snippet)
      -- end,
      --
      -- active = function(filter)
      --   if filter and filter.direction then
      --     return require('luasnip').jumpable(filter.direction)
      --   end
      --   return require('luasnip').in_snippet()
      -- end,
      --
      -- jump = function(direction)
      --   require('luasnip').jump(direction)
      -- end,
    },
    -- 'default' for mappings similar to built-in completion
    -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
    -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
    -- See the full "keymap" documentation for information on defining your own keymap.
    keymap = { preset = 'enter' },

    completion = {
      accept = { auto_brackets = { enabled = true } },
      list = {
        selection = {
          preselect = function(ctx)
            return ctx.mode ~= 'cmdline' and not require('blink.cmp').snippet_active { direction = 1 }
          end,
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 250,
        treesitter_highlighting = true,
      },
    },

    signature = {
      enabled = true,
    },

    appearance = {
      -- Sets the fallback highlight groups to nvim-cmp's highlight groups
      -- Useful for when your theme doesn't support blink.cmp
      -- Will be removed in a future release
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
    },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        cmdline = {
          enabled = function()
            return vim.fn.getcmdtype() ~= ':' or not vim.fn.getcmdline():match "^[%%0-9,'<>%-]*!"
          end,
        },
      },
    },
  },
  opts_extend = { 'sources.default' },
}
