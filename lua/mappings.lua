local M = vim.keymap

-- move lines up and down in visual mode
M.set('v', 'J', ":m '>+1<CR>gv=gv")
M.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Clear highlights on search when pressing <Esc> in normal mode
M.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- ability to replace text without copying
M.set('x', '<leader>p', [["_dP]])
-- Diagnostic keymaps
M.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- quick command mode in normal mode
M.set('n', ';', ':')

-- black hole register for c, r and x so its not annoying
M.set('n', 'x', '"_x')
M.set('n', 'c', '"_c')
M.set('n', 'r', '"_r')

-- center things
-- M.set('n', 'J', 'mzJ`z')
M.set('n', '<C-d>', '<C-d>zz')
M.set('n', '<C-u>', '<C-u>zz')
-- M.set('n', 'n', 'nzzzv')
-- M.set('n', 'N', 'Nzzzv')

-- tmux
M.set('n', '<C-h>', '<cmd>wincmd h<CR>')
M.set('n', '<C-j>', '<cmd>wincmd j<CR>')
M.set('n', '<C-k>', '<cmd>wincmd k<CR>')
M.set('n', '<C-l>', '<cmd>wincmd l<CR>')
