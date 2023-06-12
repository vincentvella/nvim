-- npm install --global @fsouza/prettierd cspell typescript

local null_ls = require("null-ls")

---------------------------------------------------------
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(buffer)
  vim.lsp.buf.format({
    filter = function(client)
      -- By default, ignore any formatters provider by other LSPs
      -- (such as those managed via lspconfig or mason)
      -- Also "eslint as a formatter" doesn't work :(
      return client.name == "null-ls"
    end,
    bufnr = buffer,
  })
end

-- Format on save
local on_attach = function(client, buffer)
  -- the Buffer will be null in buffers like nvim-tree or new unsaved files
  if (not buffer) then
    return
  end

  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = buffer })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = buffer,
      callback = function()
        lsp_formatting(buffer)
      end,
    })
  end
end

null_ls.setup({
  sources = {
    -- Prettier, but faster (daemonized)
    null_ls.builtins.formatting.prettierd,

    -- Code actions for staging hunks, blame, etc
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.completion.luasnip,

    -- Spell check that has better tooling
    -- all stored locally
    -- https://github.com/streetsidesoftware/cspell
    null_ls.builtins.diagnostics.cspell.with({
      -- This file is symlinked from my dotfiles repo
      extra_args = { "--config", "~/.cspell.json" }
    }),
    null_ls.builtins.code_actions.cspell.with({
      -- This file is symlinked from my dotfiles repo
      extra_args = { "--config", "~/.cspell.json" }
    })

    -- null_ls.builtins.completion.spell,
  },
  on_attach = on_attach
})
