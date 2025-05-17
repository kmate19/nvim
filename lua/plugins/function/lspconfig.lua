return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'mason-org/mason.nvim', config = true },
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
        pyright = {},
        omnisharp = {},
        astro = {},
        zls = {},
        svelte = {},
        clangd = {},
        gopls = {},
        ts_ls = {},
        jsonls = {},
        stylua = {},
        volar = {},
        prettierd = {},
        lua_ls = {},
      }

      local ensure_installed = vim.tbl_keys(servers or {})

      require('mason').setup()

      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {}

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

      local handle = io.popen 'npm root -g'
      local package_path = ''

      if handle == nil then
        vim.notify('Npm root not found, vue language server for ts wont work', vim.log.levels.WARN)
      else
        local global_root = handle:read('*a'):gsub('%s+$', '')
        handle:close()

        local package_name = '@vue/typescript-plugin'
        package_path = global_root .. '/' .. package_name
        local ts_plugin_handle = io.open(package_path)

        if ts_plugin_handle == nil then
          vim.notify('@vue/typescript-plugin not found, trying to install', vim.log.levels.WARN)
          vim.system(
            { 'npm', 'install', '-g', '@vue/typescript-plugin' },
            { text = true }, -- get stdout/stderr as text
            function(obj) -- callback when the job ends
              if obj.code == 0 then
                vim.notify('✅ Installed @vue/typescript-plugin globally', vim.log.levels.INFO)
              else
                vim.notify(('❌ npm install failed (exit %d):\n%s'):format(obj.code, obj.stderr), vim.log.levels.ERROR)
              end
            end
          )
        else
          ts_plugin_handle:close()
        end
      end

      vim.lsp.config('ts_ls', {
        init_options = {
          plugins = {
            {
              name = '@vue/typescript-plugin',
              location = package_path,
              languages = { 'javascript', 'typescript', 'vue' },
            },
          },
        },
        filetypes = {
          'javascriptreact',
          'typescriptreact',
          'typescript',
          'javascript',
          'vue',
        },
      })
    end,
  },
}
