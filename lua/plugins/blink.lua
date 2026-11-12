return {
	"saghen/blink.cmp",
	dependencies = {
		"saghen/blink.lib",
		-- optional: provides snippets for the snippet source
		"rafamadriz/friendly-snippets",
	},
	build = function()
		-- build the fuzzy matcher, optionally add a timeout to `pwait(timeout_ms)`
		-- you can use `gb` in `:Lazy` to rebuild the plugin as needed
		require("blink.cmp").build():pwait()
	end,

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "enter" },

		completion = {
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 0,
			},
			menu = {
				draw = {
					columns = { { "label", "label_description", gap = 1 }, { "kind" } },
				},
			},
			list = {
				-- limit max items to 60 to reduce performance issues, and realistically you wont need more than 60 items anyways
				max_items = 60,
			},
		},

		signature = {
			enabled = true,
			trigger = {
				show_on_keyword = true,
				show_on_insert = true,
			},
			window = {
				direction_priority = { "s", "n" },
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				cmdline = {
					-- disable suggestions for ! commands in cmdline as they freeze nvim up when a lot of things are in path
					enabled = function()
						return vim.fn.getcmdtype() ~= ":" or not vim.fn.getcmdline():match("^[%%0-9,'<>%-]*!")
					end,
				},
			},
		},

		fuzzy = { implementation = "rust" },
	},
}
