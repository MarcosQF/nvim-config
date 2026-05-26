vim.g.netrw_banner = 0

vim.opt.winbar = " %t %m"

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.fillchars:append { eob = " " }
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 8

vim.lsp.document_color.enable(true, nil, { style = "virtual" })

vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.inccommand = "split"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.laststatus = 3

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.clipboard:append("unnamedplus")

vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.o.cmdheight = 0

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = 'Highlight when yanking',
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Native autocomplete
-- vim.o.autocomplete = false
-- vim.o.pumblend = 10
-- vim.o.pumheight = 15
-- vim.o.pumborder = 'rounded'
-- vim.o.completeopt = 'menu,menuone,noselect'

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 4,
    source = "if_many",
  },

  signs = false, -- show on gutter
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
})
