-- Reserving this plugin for any pre-packaged lazyvim settings
return {
	-- use mini.starter instead of alpha
	{ import = "lazyvim.plugins.extras.ui.mini-starter" },

	-- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
	{ import = "lazyvim.plugins.extras.lang.json" },

	-- for typescript, LazyVim also includes extra specs to properly
	-- setup lspconfig, treesitter, mason, and typescript.nvim
	{ import = "lazyvim.plugins.extras.lang.typescript" },
}
