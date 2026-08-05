require("mini.completion").setup({
    delay = {
        completion = 10,
        info = 2000000,
        signature = 2000000,
    },
    window = {
        info = { border = "none" },
        signature = { border = "none" },
    },
})
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
