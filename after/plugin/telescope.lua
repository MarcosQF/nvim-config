local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
        sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
			},
			width = 0.8,
		},
		mappings = {
			i = {
				["<S-Tab>"] = require("telescope.actions").move_selection_previous,
				["<Tab>"] = require("telescope.actions").move_selection_next,
			},
		},
	},
	pickers = {
		find_files = {
			hidden = true,
			no_ignore = true,
		},
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})

telescope.load_extension("ui-select")

vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>bb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>n", "<cmd>Noice telescope<cr>", { desc = "Noice History Telescope" })
