-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking.",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
