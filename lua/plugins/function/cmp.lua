return {
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/cmp-nvim-lsp', opts = {} },
  --   'hrsh7th/cmp-buffer',
  { 'saadparwaiz1/cmp_luasnip' },
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    opts = {},
    config = function()
      local cmp = require 'cmp'
      cmp.setup {
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        completion = { completeopt = 'menu,menuone,noinsert' },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert {
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm { select = false }, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

          ['<Down>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif require('luasnip').expand_or_jumpable() then
              vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
            else
              fallback()
            end
          end, { 'i', 's' }),

          ['<Up>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif require('luasnip').jumpable(-1) then
              vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
            else
              fallback()
            end
          end, { 'i', 's' }),
        },

        sources = cmp.config.sources {
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
          { name = 'path' },
        }, --   { --   { name = 'buffer' }, -- }
      }

      -- if i want to use git plugin in the future petertriho/cmp-git

      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' },
        }, {
          { name = 'cmdline' },
        }),
        matching = { disallow_symbol_nonprefix_matching = false },
      })
    end,
  },
}
