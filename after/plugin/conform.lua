require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
  },
})


vim.keymap.set({ "n", "v" }, "<leader>cf", function()
  require("conform").format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  })
end, { desc = "Format with Conform" })
