return {
  'lewis6991/gitsigns.nvim',
  opts = {
    current_line_blame = true,
    numhl = true,
    current_line_blame_opts = {
      -- maybe dont auto show in the future make this a keybind
      delay = 0,
    },
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '-' },
      topdelete = { text = '‾' },
      changedelete = { text = '~-' },
      untracked = { text = '/' },
    },
    signs_staged = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '-' },
      topdelete = { text = '‾' },
      changedelete = { text = '~-' },
      untracked = { text = '/' },
    },
  },
}
