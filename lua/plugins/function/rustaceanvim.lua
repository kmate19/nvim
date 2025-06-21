return {
  -- TODO: check in the future maybe
  'mrcjkb/rustaceanvim',
  version = '^6', -- Recommended
  lazy = false, -- This plugin is already lazy
  enabled = false,
  config = function()
    vim.g.rustaceanvim = {
      enable_clippy = false,
    }
  end,
}
