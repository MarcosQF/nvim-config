require('inc_rename').setup()

vim.keymap.set("n", "<leader>cr", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "LSP: [R]e[N]ame (IncRename)" })
