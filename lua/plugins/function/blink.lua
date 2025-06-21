return {
  'saghen/blink.cmp',
  dependencies = 'L3MON4D3/LuaSnip',
  version = '*',
  build = 'cargo build --release',
  ---@module 'blink.cmp'
  opts = {
    snippets = {
      preset = 'luasnip',
    },

    keymap = { preset = 'enter' },

    completion = {
      list = {
        max_items = 60,
        selection = {
          preselect = function(ctx)
            return ctx.mode ~= 'cmdline' and not require('blink.cmp').snippet_active { direction = 1 }
          end,
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 0,
      },
    },

    signature = {
      enabled = true,
      trigger = {
        show_on_keyword = true,
        show_on_insert = true,
      },
    },

    fuzzy = { implementation = 'rust' },

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
      default = { 'snippets', 'lsp', 'path', 'buffer' },
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
