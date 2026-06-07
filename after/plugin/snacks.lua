require("snacks").setup({
    explorer     = { enabled = true },
    bigfile      = { enabled = true },
    indent       = { enabled = false },
    input = {
        enabled = true,
        icon = " ",

        win = {
            style = "input",
            border = "rounded",

            keys = {
                i_esc = { "<esc>", { "cmp_close", "cancel" }, mode = "i", expr = true },
            },

            position = "float",
            relative = "cursor",
            width = 40,
            backdrop = false,
        }
    },
    picker = {
        sources = {
            explorer = {
                layout = {
                    auto_hide = { "input" },
                },
            },
        },
    },
    quickfile    = { enabled = true },
    statuscolumn = { enabled = true },
    words        = { enabled = true },
    bufdelete    = { enabled = true },
    terminal = {
        enabled = true,
        win = {
            -- style = "float",
            -- width = 0.85,
            -- height = 0.60,
            -- border = "rounded"
            title = "Terminal",
        },
    },
})


local map = vim.keymap.set

map("n", "<leader>f", function() require("snacks").picker.smart() end, { desc = "Find Files" })
map("n", "<leader>/", function() require("snacks").picker.grep() end, { desc = "Grep (Find Text)" })
map("n", "<leader>b", function() require("snacks").picker.buffers() end, { desc = "Open Buffers" })
map("n", "<leader>e",  function() require("snacks").explorer() end, { desc = "File Explrer(FileTree)" })

map("n", "<leader>gg", function() require("snacks").lazygit() end, { desc = "LazyGit" })
map("n", "<A-w>", function() require("snacks").bufdelete() end, { desc = "Close Buffer" })
map("n", "<leader>n", function() require("snacks").notifier.show_history() end, { desc = "Notifications History" })
map({ "n", "t" }, "<A-/>", function() require("snacks").terminal.toggle() end, { desc = "Toggle Terminal" })

map("n", "gd", function() require("snacks").picker.lsp_definitions() end, { desc = "Goto Definition" })
map("n", "gi", function() require("snacks").picker.lsp_implementations() end, { desc = "Goto implenetation" })
map("n", "gr", function() require("snacks").picker.lsp_references() end, { desc = "References" })
