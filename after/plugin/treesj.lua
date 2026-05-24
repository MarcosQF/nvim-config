local tsj = require("treesj")

tsj.setup({
	use_default_keymaps = false,
	check_syntax_error = true,
	max_join_length = 120,
	on_convert = function()
		require("conform").format({ bufnr = 0 })
	end,
})

vim.keymap.set("n", "<leader>m", tsj.toggle, { desc = "TreeSJ Toggle" })
