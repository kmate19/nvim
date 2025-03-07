return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      css = { 'prettierd' },
      html = { 'prettierd' },
      typescriptreact = { 'prettierd' },
      javascriptreact = { 'prettierd' },
      typescript = { 'prettierd' },
      javascript = { 'prettierd' },
    },

    -- can cause issues if file is formatted too slowly
    -- but is non blocking
    async = true,

    format_on_save = {
      lsp_fallback = true,
    },
  },
}
