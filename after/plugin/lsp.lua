local lsp_zero = require("lsp-zero")

-- Handles configuring the lua language server to work with Neovim
require("lspconfig").lua_ls.setup({
	on_init = function(client)
		local path = client.workspace_folders[1].name
		if not vim.loop.fs_stat(path .. "/.luarc.json") and not vim.loop.fs_stat(path .. "/.luarc.jsonc") then
			client.config.settings = vim.tbl_deep_extend("force", client.config.settings, {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					-- Make the server aware of Neovim runtime files
					workspace = {
						checkThirdParty = false,
						library = {
							vim.env.VIMRUNTIME,
						},
						-- Pull in all of 'runtimepath'. NOTE: this is a lot slower
						-- library = vim.api.nvim_get_runtime_file("", true)
					},
				},
			})

			client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
		end
		return true
	end,
})

vim.diagnostic.config({
	virtual_text = false,
})

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })

	local opts = { buffer = bufnr }
	local bind = vim.keymap.set

	bind("n", "<leader>vd", function()
		vim.diagnostic.open_float(0, { scope = "line" })
	end, opts)
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"yamlls",
		"tsserver",
		"gopls",
		"graphql",
		"rust_analyzer",
		"kotlin_language_server",
		"lua_ls",
		"jsonls",
		"dockerls",
		"docker_compose_language_service",
		"grammarly",
		"eslint",
	},
	handlers = {
		lsp_zero.default_setup,
	},
})

lsp_zero.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
	servers = {
		["tsserver"] = { "javascript", "typescript" },
		["rust_analyzer"] = { "rust" },
	},
})

lsp_zero.set_sign_icons({
	error = "✘",
	warn = "▲",
	hint = "⚑",
	info = "»",
})
