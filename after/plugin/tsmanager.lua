require("tree-sitter-manager").setup({
    ensure_installed = {
        "python",
        "lua",
        "html",
        "css",
        "yaml" ,
        "json" ,
        "toml" ,
    },
    auto_install = true,
})
