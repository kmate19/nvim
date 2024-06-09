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
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  --These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
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
        "codelldb",
        "go-debug-adapter",
        "netcoredbg",
        "chrome-debug-adapter",
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
