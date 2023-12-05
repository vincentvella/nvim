return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"gopls",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			---@diagnostic disable: missing-fields
			---@type lspconfig.options
			servers = {
				gopls = {},
				elixirls = {},
				grammarly = {},
				rust_analyzer = {},
				java_language_server = {},
				kotlin_language_server = {},
				yamlls = {},
			},
		},
	},
}
