local M = vim.keymap

-- Clear highlights on search when pressing <Esc> in normal mode
M.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
M.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- quick command mode in normal mode
M.set('n', ';', ':')
