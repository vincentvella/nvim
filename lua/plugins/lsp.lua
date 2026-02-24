return {
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				"flake8",
				"shellcheck",
				"shfmt",
				"stylua",
				"vtsls",
				"elixir-ls",
				"rust-analyzer",
				"kotlin-language-server",
				"yaml-language-server",
				"tailwindcss-language-server",
				"json-lsp",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				-- gopls = {}, -- add when you need Go

				elixirls = {
					filetypes = { "elixir", "eelixir", "heex" },
				},

				grammarly = {}, -- leave open (multi-language)

				rust_analyzer = {
					filetypes = { "rust" },
				},

				kotlin_language_server = {
					filetypes = { "kotlin" },
				},

				yamlls = {
					filetypes = { "yaml", "yml" },
				},

				tailwindcss = {
					filetypes = {
						"html",
						"css",
						"scss",
						"javascript",
						"javascriptreact",
						"typescript",
						"typescriptreact",
						"vue",
						"svelte",
					},
				},

				jsonls = {
					filetypes = { "json", "jsonc" },
				},

				tsserver = {},
			},
			-- you can do any additional lsp server setup here
			-- return true if you don't want this server to be setup with lspconfig
			---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
			setup = {
				-- example to setup with typescript.nvim
				tsserver = function(_, opts)
					require("typescript").setup({ server = opts })
					return true
				end,
				-- Specify * to use this function as a fallback for any server
				-- ["*"] = function(server, opts) end,
			},
		},
	},
	{
		"nvimdev/lspsaga.nvim",
		event = "LspAttach",
		config = function()
			require("lspsaga").setup({
				ui = {
					border = "rounded",
					winblend = 0,
					expand = "",
					collapse = "",
					code_action = "💡",
					incoming = " ",
					outgoing = " ",
					hover = " ",
					kind = {},
				},
				hover = {
					open_link = "gx",
					open_browser = "!",
					max_width = 0.8,
					max_height = 0.9,
					open_cmd = "!open",
					keys = {
						close = { "q", "<Esc>" },
						scroll_down = "<C-f>",
						scroll_up = "<C-b>",
					},
				},
				diagnostic = {
					on_insert = false,
					on_insert_follow = false,
					insert_winblend = 0,
				},
				lightbulb = {
					enable = true,
					enable_in_insert = true,
					sign = false,
					sign_priority = 40,
					virtual_text = true,
				},
				code_action = {
					num_shortcut = true,
					show_server_name = false,
					extend_gitsigns = true,
					keys = {
						quit = "q",
						exec = "<CR>",
					},
				},
				scroll_preview = {
					scroll_down = "<C-f>",
					scroll_up = "<C-b>",
				},
				request_timeout = 2000,
				preview = {
					lines_above = 0,
					lines_below = 10,
				},
				callhierarchy = {
					show_detail = true,
					keys = {
						edit = "e",
						vsplit = "s",
						split = "i",
						tabe = "t",
						jump = "o",
						quit = "q",
						expand_collapse = "u",
						shuttle = "[w",
						toggle_or_open = "o",
						close = "<C-c>k",
						close_press = "<C-c>",
					},
				},
				finder = {
					max_height = 0.5,
					left_width = 0.3,
					default = "ref+def",
					layout = "normal",
					keys = {
						shuttle = "[w",
						toggle_or_open = "o",
						jump_to = "e",
						shuttle_left = "[",
						shuttle_right = "]",
						toggle_or_jump = "l",
						jump_to_left = "[",
						jump_to_right = "]",
					},
				},
			})
		end,
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
