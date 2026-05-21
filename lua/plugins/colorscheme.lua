vim.pack.add({
	{
		src = "https://github.com/rose-pine/neovim",
		name = "rose-pine",
	},
})

require("rose-pine").setup(
    {
        highlight_groups = {
            Visual = {
                bg = "#4e1a3a",
                fg = "NONE",
                inherit = false
            },
            Comment = { fg = "#9da8b3", italic = true },
        },
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
    }
)

vim.cmd("colorscheme rose-pine")
