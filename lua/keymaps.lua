vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Select entire file content
vim.keymap.set("n", "vig", "ggVG", { desc = "Select all file" })

-- smooth move arround
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Centered scroll up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Centered scroll down" })
vim.keymap.set("n", "G", "Gzz", { desc = "Centered go last line" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search, cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search, cursor centered" })

-- Move between windows using Ctrl + hjkl
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- save file
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")

-- add exec permission to the file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Quit or close current buffer quickly
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>", { desc = "[Q]uit [Q]uickly (close buffer)" })

-- Clear search highlights using Esc
vim.keymap.set("n", "<esc>", "<cmd>noh<cr>")

-- Quick jumps to start (gh) and end (gl) of line
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "0")
vim.keymap.set("v", "gl", "$")
vim.keymap.set("v", "gh", "0")

-- Keeping the cursor centered.
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll downwards" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll upwards" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next result" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous result" })

-- Icremental selection
vim.keymap.set({ "n", "x" }, "<A-o>", function()
	require("vim.treesitter._select").select_parent(vim.v.count1)
end, { desc = "Expand Treesitter selection (Parent/Outside)" })

vim.keymap.set("x", "<A-i>", function()
	require("vim.treesitter._select").select_child(vim.v.count1)
end, { desc = "Shrink Treesitter selection (Child/Inside)" })

-- Native autocomplete
vim.keymap.set("i", "<Tab>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-n>"
	else
		return "<Tab>"
	end
end, { expr = true, desc = "Next autocomplete suggestion" })

vim.keymap.set("i", "<S-Tab>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-p>"
	else
		return "<S-Tab>"
	end
end, { expr = true, desc = "Previous autocomplete suggestion" })

vim.keymap.set("i", "<CR>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-y>"
	else
		return "<CR>"
	end
end, { expr = true, desc = "Accept autocomplete suggestion" })

-- LSP & DIAGNOSTICS
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show Documentation" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- Resize Windoes
vim.keymap.set({ "n", "t" }, "<A-.>", "<cmd>resize +2<CR>", { desc = "Aumentar altura (+2)" })
vim.keymap.set({ "n", "t" }, "<A-,>", "<cmd>resize -2<CR>", { desc = "Diminuir altura (-2)" })
vim.keymap.set("n", "gm", "`", { noremap = true, desc = "Go to mark" })
