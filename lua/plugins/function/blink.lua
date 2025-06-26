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
        -- limit max items to 60 to reduce performance issues, and realistically you wont need more than 60 items anyways
        max_items = 60,
        selection = {
          -- dont preselect items in cmdline as i accept suggestions with enter so it would be annoying to have a preselected item
          preselect = function(ctx)
            return ctx.mode ~= 'cmdline' and not require('blink.cmp').snippet_active { direction = 1 }
          end,
        },
      },
      -- show documentation in a floating window
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 0,
      },
    },

    -- auto show function signatures on insert mode
    signature = {
      enabled = true,
      trigger = {
        show_on_keyword = true,
        show_on_insert = true,
      },
    },

    -- only use rust binary for fuzzy matching
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
          -- disable suggestions for ! commands in cmdline as they freeze nvim up when a lot of things are in path
          enabled = function()
            return vim.fn.getcmdtype() ~= ':' or not vim.fn.getcmdline():match "^[%%0-9,'<>%-]*!"
          end,
        },
      },
    },
  },
  opts_extend = { 'sources.default' },
}
