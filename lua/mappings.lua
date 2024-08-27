local M = vim.keymap

-- Clear highlights on search when pressing <Esc> in normal mode
M.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
M.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- quick command mode in normal mode
M.set('n', ';', ':')

-- black hole register for c and x
M.set('n', 'x', '"_x')
M.set('n', 'c', '"_c')
M.set('n', 'r', '"_r')

-- center things
M.set('n', 'J', 'mzJ`z')
M.set('n', '<C-d>', '<C-d>zz')
M.set('n', '<C-u>', '<C-u>zz')
M.set('n', 'n', 'nzzzv')
M.set('n', 'N', 'Nzzzv')

--tmux
M.set('n', '<C-h>', '<cmd>wincmd h<CR>')
M.set('n', '<C-j>', '<cmd>wincmd j<CR>')
M.set('n', '<C-k>', '<cmd>wincmd k<CR>')
M.set('n', '<C-l>', '<cmd>wincmd l<CR>')
