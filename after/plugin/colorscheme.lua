require("rose-pine").setup(
    {
        highlight_groups = {
            Visual = {
                -- bg = "#4e1a3a",
                bg = "#2f4f4f", -- Dark Slate Gray, excelente para leitura
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
