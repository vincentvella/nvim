return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		opts = function(_, opts)
			return opts
		end,

		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				color_overrides = {
					mocha = {
						rosewater = "#ffc0b9",
						flamingo = "#f5aba3",
						pink = "#f592d6",
						mauve = "#c0afff",
						red = "#ea746c",
						maroon = "#ff8595",
						peach = "#fa9a6d",
						yellow = "#ffe081",
						green = "#99d783",
						teal = "#47deb4",
						sky = "#00d5ed",
						sapphire = "#00dfce",
						blue = "#00baee",
						lavender = "#abbff3",
						text = "#cccccc",
						subtext1 = "#bbbbbb",
						subtext0 = "#aaaaaa",
						overlay2 = "#999999",
						overlay1 = "#888888",
						overlay0 = "#777777",
						surface2 = "#666666",
						surface1 = "#555555",
						surface0 = "#444444",
						base = "#202020",
						mantle = "#222222",
						crust = "#333333",
					},
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	-- {
	-- 	"loctvl842/monokai-pro.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	keys = { { "<leader>c", "<cmd>MonokaiProSelect<cr>", desc = "Select Moonokai pro filter" } },
	-- 	config = function()
	-- 		local monokai = require("monokai-pro")
	-- 		monokai.setup({
	-- 			transparent_background = false,
	-- 			devicons = true,
	-- 			filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
	-- 			inc_search = "background", -- underline | background
	-- 			background_clear = { "neo-tree", "bufferline" },
	-- 			plugins = {
	-- 				bufferline = {},
	-- 				indent_blankline = {
	-- 					context_highlight = "pro", -- default | pro
	-- 					context_start_underline = true,
	-- 				},
	-- 			},
	-- 		})
	-- 		monokai.load()
	-- 	end,
	-- },
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
