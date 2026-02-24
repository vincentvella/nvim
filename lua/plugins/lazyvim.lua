-- Reserving this plugin for any pre-packaged lazyvim settings
return {
	-- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
	{ import = "lazyvim.plugins.extras.lang.json" },

	-- for typescript, LazyVim also includes extra specs to properly
	-- setup lspconfig, treesitter, mason, and typescript.nvim
	{ import = "lazyvim.plugins.extras.lang.typescript" },
}
