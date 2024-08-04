return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        default_file_explorer = true,
        columns = {
          'icon',
          'size',
        },
      }
    end,
  },
}
