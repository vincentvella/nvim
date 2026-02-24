--  -- Prevent markdown filetype to avoid treesitter crash
vim.filetype.add({
    filename = {
        ["README.md"] = "text",
        ["README"] = "text",
    },
    pattern = {
        [".*%.md"] = "text",
    },
})

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
