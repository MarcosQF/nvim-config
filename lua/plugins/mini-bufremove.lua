vim.pack.add({ 'https://github.com/nvim-mini/mini.bufremove' })
require('mini.bufremove').setup()

vim.keymap.set('n', '<A-w>', function()
    require('mini.bufremove').delete(0, false)
end, { desc = "Close buffer" })

vim.keymap.set('n', '<leader>bo', function()
    local current = vim.api.nvim_get_current_buf()

    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.api.nvim_buf_is_valid(buf) and buf ~= current then
            require('mini.bufremove').delete(buf, false)
        end
    end
end, { desc = "Close [O]ther buffers" })
