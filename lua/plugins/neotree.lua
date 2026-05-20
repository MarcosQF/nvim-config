vim.pack.add({
    'https://github.com/nvim-neo-tree/neo-tree.nvim',
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/MunifTanjim/nui.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons', -- Optional
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('neo-tree').setup({
    close_if_last_window = false,
    enable_git_status = true,
    popup_border_style = "rounded",

    window = {
        position = "left",
        width = 35,
        mapping_options = {
            noremap = true,
            nowait = true,
        },
        mappings = {
            ["l"]    = "open",
            ["<CR>"] = "open",
            ["o"]    = "open",
            ["h"]    = "close_node",
            ["v"]    = "open_vsplit",
            ["<A-h>"] = "toggle_hidden",
        },
    },

    filesystem = {
        group_empty_dirs = true,
        hijack_netrw_behavior = "open_default",

        filtered_items = {
            visible = false,
            hide_dotfiles = true,
            hide_gitignored = true,
        },
    },
})

vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle File Explorer", silent = true })
