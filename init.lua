-- these need to come first
vim.g.mapleader = ' '
vim.g.localleader = ' '

vim.opt.termguicolors = true
vim.g.have_nerd_font = true

require 'opts'
require 'mappings'
require 'autocmds'
require 'macros'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

local disabled_plugins = function()
  local disabled_plugins = {
    'gzip',
    'tarPlugin',
    'tutor',
    'zipPlugin',
  }

  if vim.fn.has 'macunix' == 1 then
    table.insert(disabled_plugins, 'netrwPlugin')
  else
    vim.keymap.set('n', '-', '<CMD>Ex<CR>', { desc = 'Open parent directory with Netrw.' })
  end

  return disabled_plugins
end

require('lazy').setup {
  spec = {
    { 'LazyVim/LazyVim' },

    -- import = 'lazyvim.plugins',

    { import = 'plugins.function' },
    { import = 'plugins.ui' },
  },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false,
  },
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = disabled_plugins(),
    },
  },
}

-- Set colorscheme based on time of day
vim.cmd.colorscheme 'kanagawa-dragon'
