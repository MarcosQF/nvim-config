vim.pack.add({ 'https://github.com/akinsho/bufferline.nvim' })

local bufferline = require("bufferline")

bufferline.setup({
    options = {
        mode = "buffers",
        close_command = function(n) require("mini.bufremove").delete(n, false) end,
        right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
        indicator = { style = 'underline' },
        offsets = {
            {
                filetype = "neo-tree",
                text = "File Explorer",
                text_align = "center",
            }
        }
    }
})

vim.keymap.set('n', 'H', '<cmd>BufferLineCyclePrev<cr>', { desc = "Prev Buffer" })
vim.keymap.set('n', 'L', '<cmd>BufferLineCycleNext<cr>', { desc = "Next Buffer" })
