return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'mason-org/mason.nvim', config = true },
      'saghen/blink.cmp',
      'mason-org/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
    opts = {},
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
        callback = function(event)
          local map = function(keys, func, desc)
            vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end

          map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')

          map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')

          map('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')

          map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')

          map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')

          map('<leader>tt', require('telescope.builtin').diagnostics, '[T]oggle [T]agbar')

          map('E', vim.diagnostic.open_float, 'Open diagnostic float')

          map('K', vim.lsp.buf.hover, 'Open diagnostic float')

          map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')

          map('<leader>a', vim.lsp.buf.code_action, '[C]ode [A]ction')

          map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

          local client = vim.lsp.get_client_by_id(event.data.client_id)

          if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
            map('<leader>th', function()
              vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
            end, '[T]oggle Inlay [H]ints')
          end
        end,
      })

      local servers = {
        html = {},
        tailwindcss = {},
        cssls = {},
        omnisharp = {},
        astro = {},
        zls = {},
        svelte = {},
        clangd = {},
        gopls = {},
        ts_ls = {},
        jsonls = {},
        stylua = {},
        -- vue setup needs to be remade
        -- vue_ls = {},
        prettierd = {},
        lua_ls = {},
      }

      -- manual lsp configs
      --
      -- lua lsp config
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            completion = {
              callSnippet = 'Replace',
            },
            diagnostics = { globals = { 'vim' } },
            workspace = {
              library = { vim.env.VIMRUNTIME },
              checkThirdParty = false,
            },
            telemetry = {
              enable = false,
            },
          },
        },
      })

      -- svelte
      -- stolen from https://github.com/SylvanFranklin/.config/blob/main/nvim/lua/sylvanfranklin/plugins/lsp.lua
      vim.lsp.config('svelte', {
        settings = {
          ['svelte'] = {
            on_attach = function(client, _)
              vim.api.nvim_create_autocmd('BufWritePost', {
                pattern = { '*.js', '*.ts' },
                callback = function(ctx)
                  -- this bad boy updates imports between svelte and ts/js files
                  client.notify('$/onDidChangeTsOrJsFile', { uri = ctx.match })
                end,
              })
            end,
          },
        },
      })

      -- MANUALLY MANAGED
      -- rust lsp config
      vim.lsp.config('rust_analyzer', {
        -- remove ra-multiplex for now cause it just causes more issues than it solves
        -- cmd = vim.lsp.rpc.connect('127.0.0.1', 27631),
        settings = {
          ['rust-analyzer'] = {
            cargo = { features = 'all' },
            check = {
              command = 'clippy',
            },
            diagnostics = {
              styleLints = {
                enable = true,
              },
            },
            -- lspMux = {
            --   version = '1',
            --   method = 'connect',
            --   server = 'rust-analyzer',
            -- },
          },
        },
      })
      vim.lsp.enable 'rust_analyzer'

      -- ts_ls config but im p sure this is broken rn
      vim.lsp.config('ts_ls', {
        -- vue setup needs to be remade
        -- init_options = {
        --   plugins = {
        --     {
        --       name = '@vue/typescript-plugin',
        --       location = '',
        --       languages = { 'javascript', 'typescript', 'vue' },
        --     },
        --   },
        -- },
        filetypes = {
          'javascriptreact',
          'typescriptreact',
          'typescript',
          'javascript',
          -- vue setup needs to be remade
          -- 'vue',
        },
      })

      local ensure_installed = vim.tbl_keys(servers or {})

      require('mason').setup()

      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {}
    end,
  },
}
