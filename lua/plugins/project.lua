return {
	"ahmedkhalf/project.nvim",
	dependencies = {
		-- still need vim rooter, since project.nvim only changes dir after entering a file in the project, and it doesn't count the oil buffer as a file
		"airblade/vim-rooter",
	},
	config = function()
		require("project_nvim").setup()
		require("telescope").load_extension("projects")
	end,
}
