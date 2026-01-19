return {
	"ahmedkhalf/project.nvim",
	dependencies = {
		-- still need vim rooter, since project.nvim only changes dir after entering a file in the project, and it doesn't count the oil buffer as a file
		--
		-- update:
		-- has a terrible perf issue on windows when opening a directory, this comes from the s:activate function and specifically the use of
		-- the isdirectory() function, which is very slow on windows (maybe it has to do with the oil:// scheme?)
		-- { "airblade/vim-rooter" },
	},
	config = function()
		require("project_nvim").setup()
		require("telescope").load_extension("projects")
	end,
}
