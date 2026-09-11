Snacks = Snacks

return {
	"folke/snacks.nvim",
	priority = 999,
	lazy = false,
	enabled = false,
	-- TODO: check out the picker to replace telescope
	opts = {
		bigfile = { enabled = false },
		rename = { enabled = true },
		notifier = { enabled = true },
		styles = {
			notification = {
				wo = { wrap = true },
			},
		},
		quickfile = { enabled = true },
		statuscolumn = { enabled = true },
	},
	init = function()
		vim.api.nvim_create_autocmd("User", {
			pattern = "OilActionsPost",
			callback = function(event)
				if event.data.actions.type == "move" then
					Snacks.rename.on_rename_file(event.data.actions.src_url, event.data.actions.dest_url)
				end
			end,
		})
	end,
	keys = {
		{
			"<leader>nh",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Show hist",
		},
		{
			"<leader>x",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete Buffer",
		},
		{
			"<leader>gB",
			function()
				Snacks.gitbrowse()
			end,
			desc = "Git Browse",
		},
		{
			"<leader>gb",
			function()
				Snacks.git.blame_line()
			end,
			desc = "Detailed Git Blame",
		},
		{
			"<leader>gf",
			function()
				Snacks.lazygit.log_file()
			end,
			desc = "Lazygit Current File History",
		},
		{
			"<leader>gg",
			function()
				Snacks.lazygit()
			end,
			desc = "Lazygit",
		},
		{
			"<leader>gl",
			function()
				Snacks.lazygit.log()
			end,
			desc = "Lazygit Log (cwd)",
		},
	},
}
