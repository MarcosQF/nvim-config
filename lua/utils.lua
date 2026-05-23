local M = {}

function M.load_plugins(plugins)
	local seen = {}
	local unique_duplicates = {}
	local duplicate_names = {}

	for _, plugin in ipairs(plugins) do
		local url = plugin.src

		if seen[url] then
			local short_name = url:match("(/[^/]+)$")

			if short_name and not unique_duplicates[short_name] then
				table.insert(duplicate_names, short_name)
				unique_duplicates[short_name] = true
			end
		else
			seen[url] = true
		end
	end

	vim.pack.add(plugins)

	if #duplicate_names > 0 then
		local names_str = table.concat(duplicate_names, ", ")
		vim.schedule(function()
			vim.notify("Duplicated plugins found: " .. names_str, vim.log.levels.WARN, {
				title = "Gerenciador de Plugins",
				timeout = 1000000,
			})
		end)
	end

	return duplicate_names
end

return M
