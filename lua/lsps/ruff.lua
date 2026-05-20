vim.lsp.config.ruff = {
    init_options = {
        settings = {
            args = {
                "--line-length=80",
                "--select=E,F,UP,I",
                "--ignore=E501",
            },
        }
    },

    on_attach = function(client, bufnr)
        client.server_capabilities.hoverProvider = false
    end
}
