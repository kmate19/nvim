return {
	"lewis6991/gitsigns.nvim",
	init = function()
		vim.keymap.set("n", "<leader>gb", "<CMD>Gitsigns blame_line<CR>")
	end,
}
