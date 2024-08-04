local M = vim.keymap

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
M.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
M.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- open oil
M.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory with Oil.' })

-- quick command mode in normal mode
M.set('n', ';', ':')
