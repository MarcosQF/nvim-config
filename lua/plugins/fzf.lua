vim.pack.add({ 'https://github.com/ibhagwan/fzf-lua' })

require('fzf-lua').setup({
    winopts = {
        backdrop = 100,
        border = "rounded",
    },
    keymap = {
        builtin = {
            ["<Esc>"] = "hide",
        },
        fzf = {
            ["tab"] = "down",
            ["shift-tab"] = "up",
        },
    },
})

vim.keymap.set("n", "<leader>f", function()
    require("fzf-lua").files()
end, { desc = "Fzf-Lua: Find files" })

vim.keymap.set("n", "<leader>/", function()
    require("fzf-lua").live_grep()
end, { desc = "Fzf-Lua: Live grep (Search text)" })

vim.keymap.set("n", "<leader>ca", function()
  require('fzf-lua').lsp_code_actions({
    winopts = {
      relative = "cursor",
      width = 0.6,
      height = 0.4,
    }
  })
end, { desc = "FZF Code Actions" })
