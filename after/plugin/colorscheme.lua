require("tokyonight").setup({
	transparent = true,
	styles = {
		sidebars = "transparent",
		floats = "transparent",
	},
})

vim.g.sonokai_style = 'andromeda'
vim.g.sonokai_transparent_background = '2'
vim.g.sonokai_enable_italic = true
vim.g.sonokai_float_style = 'blend'

-- vim.cmd.colorscheme("tokyonight-moon")
vim.cmd.colorscheme('sonokai')
