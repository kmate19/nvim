return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
  ---@module 'render-markdown'
  opts = {
    file_types = { 'markdown' },
    overrides = {
      buftype = {
        nofile = {
          render_modes = false,
          padding = { highlight = 'NormalFloat' },
          sign = { enabled = false },
        },
      },
    },
  },
}
