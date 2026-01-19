return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-context",
			{ "lewis6991/ts-install.nvim", opts = { auto_install = true } },
		},
		build = ":TSUpdate",
		init = function()
			vim.g.loaded_nvim_treesitter = 1
		end,
	},
}
