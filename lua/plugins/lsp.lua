return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				-- "gopls",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			inlay_hints = { enabled = false },
			---@diagnostic disable: missing-fields
			---@type lspconfig.options
			servers = {
				-- gopls = {},
				elixirls = {},
				grammarly = {},
				rust_analyzer = {},
				java_language_server = {},
				kotlin_language_server = {},
				yamlls = {},
			},
		},
	},
	{
		"NvChad/nvim-colorizer.lua",
		opts = {
			config = function()
				require("colorizer").setup({
					user_default_options = {
						tailwind = true,
						always_update = true,
					},
				})
			end,
		},
	},
}
