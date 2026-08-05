local group = vim.api.nvim_create_augroup("DisableMiniCompletion", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
    group = group,
    pattern = "*",
    callback = function()
        if vim.bo.buftype == "prompt" or vim.bo.filetype == "snacks_picker_input" then
            vim.b.minicompletion_disable = true
        end
    end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "sonokai",
    callback = function()
        -- Erros (Vermelho)
        vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ff757f", bold = true })
        vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#ff757f" })
        vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = "#ff757f" })
        vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#ff757f" })

        -- Alertas / Avisos como o Ruff (Amarelo)
        vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ffc777", bold = true })
        vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#ffc777" })
        vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { fg = "#ffc777" })
        vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#ffc777" })
    end,
})
