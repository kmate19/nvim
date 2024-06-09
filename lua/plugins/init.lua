return {
  {
    "airblade/vim-rooter",
    lazy = false,
    config = function()
      vim.cmd [[
        let g:rooter_cd_cmd = "tcd"
        let g:rooter_change_directory_for_non_project_files = "current"
        let g:rooter_silent_chdir = 1
      ]]
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  --{
  --  "mfussenegger/nvim-dap",
  --  depedencies = {
  --    "rcarriga/nvim-dap-ui",
  --    "theHamstra/nvim-dap-virtual-text",
  --    "mrcjkb/rustaceanvim",
  --  },
  --  config = function()
  --    local dap = require "dap"
  --    local dapui = require "dapui"
  --    local rustacean = require "rustaceanvim"
  --    local path = vim.fn.stdpath "data"
  --    rustacean.server.on_attach = require("nvchad.configs.lspconfig").on_attach
  --    require("dap").setup()
  --    require("dapui").setup()

  --    dap.adapters.codelldb = {
  --      type "server",
  --      -- host = "127.0.0.1",
  --      port = "13000",
  --      executable = {
  --        command = path + "/mason/bin/codelldb",
  --        args = { "--port", "13000" },
  --      },
  --    }

  --    dap.adapters.coreclr = {
  --      type = "executable",
  --      command = path + "/netcoredbg",
  --      args = { "--interpreter=vscode" },
  --    }
  --  end,
  --},

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        --[LSP]
        "taplo",
        "yaml-language-server",
        "json-lsp",
        -- "nil",
        "lua-language-server",
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "csharp-language-server",
        "zls",
        "clangd",
        "cmake-language-server",
        "gopls",
        "rust-analyzer",
        --[DAP]
        -- "codelldb",
        -- try dedicated
        -- "go-debug-adapter",
        -- doesnt work on macos without another package
        -- "netcoredbg",
        -- try dedicated
        -- "chrome-debug-adapter"],
        --[LINTER]
        --[FORMATTER]
        "prettier",
        "stylua",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        --[vim/etc]
        "vim",
        "vimdoc",
        "json",
        "yaml",
        "toml",
        "nix",
        "cmake",
        --[high level]
        "lua",
        "html",
        "css",
        "javascript",
        "jsdoc",
        "typescript",
        "c_sharp",
        --[low level]
        "c",
        "cpp",
        "rust",
        "zig",
        "go",
      },
    },
  },
}
