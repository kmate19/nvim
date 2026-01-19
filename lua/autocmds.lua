-- highlight line on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	desc = "Enable tree sitter when entering buffer (not properly auto enabled on some files etc)",
	group = vim.api.nvim_create_augroup("enable-ts", { clear = true }),
	callback = function(args)
		-- this can error out on some filetypes, so we use pcall
		pcall(vim.treesitter.start, args.buf)
	end,
})
