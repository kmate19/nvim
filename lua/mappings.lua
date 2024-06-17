require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local ls = require "luasnip"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "KM", "<cmd>execute 'Man ' .. expand('<cword>')<CR>", { desc = "open man page for symbol" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

map({ "i", "s" }, "<c-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

map({ "i", "s" }, "<c-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })
