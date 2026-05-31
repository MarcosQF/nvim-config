require("blink.cmp").setup({
	completion = {
		menu = {
			border = "rounded",
		},
		documentation = {
			auto_show = false,
			window = { border = "rounded" },
		},
		list = {
			selection = {
				preselect = false,
				auto_insert = true,
			},
		},
	},

	keymap = {
		preset = "enter",
	},

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},

	fuzzy = {
		implementation = "lua",
	},
})
