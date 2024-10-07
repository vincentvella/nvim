return {
	{
		"loctvl842/monokai-pro.nvim",
		lazy = false,
		priority = 1000,
		keys = { { "<leader>c", "<cmd>MonokaiProSelect<cr>", desc = "Select Moonokai pro filter" } },
		config = function()
			local monokai = require("monokai-pro")
			monokai.setup({
				transparent_background = false,
				devicons = true,
				filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
				inc_search = "background", -- underline | background
				background_clear = { "neo-tree", "bufferline" },
				plugins = {
					bufferline = {},
					indent_blankline = {
						context_highlight = "pro", -- default | pro
						context_start_underline = true,
					},
				},
			})
			monokai.load()
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			routes = {
				{
					filter = { event = "notify", find = "No information available" },
					opts = { skip = true },
				},
			},
		},
	},
}
