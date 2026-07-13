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
