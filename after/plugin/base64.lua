require("base46").setup({
	transparency = true,
    hl_override = {
		Visual = {
            bg = "#45475a",
            fg = "NONE",
		},
	},
})

vim.cmd.colorscheme("base46-catppuccin")
