-- these need to come first
vim.g.mapleader = ' '
vim.g.localleader = ' '

vim.opt.termguicolors = true
vim.g.have_nerd_font = true

require 'opts'
require 'mappings'
require 'autocmds'
require 'macros'

vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    local arg = vim.fn.argv(0)
    vim.notify(arg, 1, {})
    if arg and vim.fn.isdirectory(arg) == 1 then
      local target_dir = vim.fn.fnamemodify(arg, ':p:h')
      vim.cmd('cd ' .. vim.fn.fnameescape(target_dir))
    end
  end,
})

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
      disabled_plugins = {
        'gzip',
        'netrwPlugin',
        'tarPlugin',
        'tutor',
        'zipPlugin',
      },
    },
  },
}

-- Set colorscheme based on time of day
vim.cmd.colorscheme 'gruvbox'
