return {
  {
    'williamboman/mason.nvim',
    build = ':MasonUpdate',
    dependencies = {
      'WhoIsSethDaniel/mason-tool-installer.nvim',
    },

    opts = {},
  },
}
