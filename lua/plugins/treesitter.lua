return {

	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			-- add tsx and treesitter
			vim.list_extend(opts.ensure_installed, {
				"tsx",
				"typescript",
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"bash",
				"c",
				"diff",
				"html",
				"javascript",
				"jsdoc",
				"json",
				"jsonc",
				"lua",
				"luadoc",
				"luap",
				"graphql",
				"markdown",
				"markdown_inline",
				"ocaml",
				"python",
				"query",
				"regex",
				"rust",
				"toml",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			textobjects = {
				move = {
					enable = true,
					goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
					goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
					goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
					goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
				},
			},
		},
	},
	{
		"luckasRanarison/tailwind-tools.nvim",
		name = "tailwind-tools",
		build = ":UpdateRemotePlugins",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			server = {
				settings = {
					experimental = {
						classRegex = {
							"tw`([^`]*)",
							'tw="([^"]*)',
							'tw={"([^"}]*)',
							"tw\\.\\w+`([^`]*)",
							"tw\\(.*?\\)`([^`]*)",
							{ "clsx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
							{ "classnames\\(([^)]*)\\)", "'([^']*)'" },
							{ "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
							{ "cn\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
						},
					},
				},
			},
		},
	},
	{
		"Wansmer/sibling-swap.nvim",
		config = function()
			require("sibling-swap").setup({
				allowed_separators = {
					",",
					";",
					"and",
					"or",
					"&&",
					"&",
					"||",
					"|",
					"==",
					"===",
					"!=",
					"!==",
					"-",
					"+",
					["<"] = ">",
					["<="] = ">=",
					[">"] = "<",
					[">="] = "<=",
				},
				use_default_keymaps = true,
				-- Highlight recently swapped node. Can be boolean or table
				-- If table: { ms = 500, hl_opts = { link = 'IncSearch' } }
				-- `hl_opts` is a `val` from `nvim_set_hl()`
				highlight_node_at_cursor = false,
				-- keybinding for movements to right or left (and up or down, if `allow_interline_swaps` is true)
				-- (`<C-,>` and `<C-.>` may not map to control chars at system level, so are sent by certain terminals as just `,` and `.`. In this case, just add the mappings you want.)
				keymaps = {
					["<C-.>"] = "swap_with_right",
					["<C-,>"] = "swap_with_left",
					["<space>."] = "swap_with_right_with_opp",
					["<space>,"] = "swap_with_left_with_opp",
				},
				ignore_injected_langs = false,
				-- allow swaps across lines
				allow_interline_swaps = true,
				-- swaps interline siblings without separators (no recommended, helpful for swaps html-like attributes)
				interline_swaps_without_separator = false,
				-- Fallbacs for tiny settings for langs and nodes. See #fallback
				fallback = {},
			})
		end,
	},
}
