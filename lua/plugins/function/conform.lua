return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      css = { 'prettier' },
      html = { 'prettier' },
      typescriptreact = { 'prettier' },
      javascriptreact = { 'prettier' },
    },

    -- can cause issues if file is formatted too slowly
    -- but is non blocking
    async = true,

    format_on_save = {
      timeout = 500,
      lsp_fallback = true,
    },
  },
}
