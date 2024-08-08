return {
  'windwp/nvim-ts-autotag',
  opts = {},
  ft = {
    'javascript',
    'javascripreact',
    'typescript',
    'typescripreact',
    'html',
  },
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
