vim.api.nvim_create_user_command('PluginsList', function()
    vim.pack.update(nil, { offline = true })
    print("Synchronizing plugins offline...")
end, { desc = "Synchronize packages locally using the lockfile" })

vim.api.nvim_create_user_command('PluginsUpdate', function()
    vim.pack.update()
    print("Fetching plugin updates from")
end, { desc = "Update packages from" })
