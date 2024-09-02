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

    async = true,

    format_on_save = {
      timeout = 500,
      lsp_fallback = true,
    },
  },
}
