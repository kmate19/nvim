return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			{
				"nvim-treesitter/nvim-treesitter-context",

				config = function()
					local tsctx = require("treesitter-context")

					tsctx.disable()

					vim.keymap.set("n", "<leader>tsc", "<cmd>TSContext toggle<CR>")
				end,
			},
			{ "lewis6991/ts-install.nvim", opts = { auto_install = true } },
		},
		build = ":TS update",
		init = function()
			vim.g.loaded_nvim_treesitter = 1
		end,
	},
}
