return {
  'ray-x/lsp_signature.nvim',
  event = 'VeryLazy',
  opts = {
    handler_opts = {
      border = 'none',
    },
    doc_lines = 0,
    floating_window_off_y = function()
      return -2
    end,
    hint_enable = false, -- doesnt work well with copilot when on the same line, and i cant make it never be on the same line, so i just disable it
    toggle_key = '<C-k>',
  },
  config = function(_, opts)
    require('lsp_signature').setup(opts)
  end,
}
