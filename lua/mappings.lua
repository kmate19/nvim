require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "KM", "<cmd>execute 'Man ' .. expand('<cword>')<CR>", { desc = "open man page for symbol" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
