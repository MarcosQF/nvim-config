vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 'l',     api.node.open.edit,                    opts('Abrir'))
  vim.keymap.set('n', '<CR>',  api.node.open.edit,                    opts('Abrir'))
  vim.keymap.set('n', 'o',     api.node.open.edit,                    opts('Abrir'))
  vim.keymap.set('n', 'h',     api.node.navigate.parent_close,        opts('Fechar Diretório'))
  vim.keymap.set('n', 'v',     api.node.open.vertical,                opts('Abrir em Vsplit'))
  vim.keymap.set('n', '<A-h>', api.tree.toggle_hidden_filter,         opts('Alternar Ocultos (Dotfiles)'))
end

require("nvim-tree").setup({
  on_attach = my_on_attach,

  view = {
    width = 40,
    side = "left",
  },

  update_focused_file = {
    enable = true,
  },

  git = {
    enable = true,
    ignore = true,
  },

  filters = {
    dotfiles = true,
  },

  renderer = {
    root_folder_label = ":t",
    group_empty = false,
    icons = {
      show = {
        git = false,
      },
    },
  },
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer", silent = true })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { link = "NvimTreeFolderName" })
