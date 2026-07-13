require("mini.completion").setup()
require("mini.icons").setup()
require("mini.snippets").setup(
	{
		mappings = {
			expand = "<C-n>",

			jump_next = "<C-l>",
			jump_prev = "<C-h>",
			stop = "<C-c>",
		},
	}
)
