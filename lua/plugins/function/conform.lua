return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      css = { 'prettier' },
      rust = { 'rustfmt', lsp_format = 'fallback' },
      html = { 'prettier' },
      typescriptreact = { 'prettier' },
      javascriptreact = { 'prettier' },
      typescript = { 'prettier' },
      javascript = { 'prettier' },
    },

    -- can cause issues if file is formatted too slowly
    -- but is non blocking
    -- async = true,

    format_on_save = {
      timeout_ms = 500, -- 1 second timeout
      lsp_fallback = true,
    },
  },
}
