-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- VSCode style up/down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selected line up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selected line down" })

vim.keymap.set("n", "J", "mzJ`z", { silent = true, desc = "Keep cursor in the same place when appending lines" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true, desc = "Half page jump down, center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true, desc = "Half page jump up, center cursor" })

vim.keymap.set("n", "n", "nzzzv", { silent = true, desc = "Keep cursor in middle when jumping search" })
vim.keymap.set("n", "N", "Nzzzv", { silent = true, desc = "Keep cursor in middle when jumping search" })

vim.keymap.set("x", "<leader>p", [["_dP]], { silent = true, desc = "Pasting over text doesn't change buffer" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yanked into the system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yanked into the system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { silent = true, desc = "Deletes to the void register" })

vim.keymap.set("n", "Q", "<nop>", { silent = true, desc = "Don't press capital Q... ever" })

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { silent = true, desc = "Formatting buffer..." })

-- Quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { silent = true, desc = "Quickfix next" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { silent = true, desc = "Quickfix previous" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { silent = true, desc = "Quickfix next line" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { silent = true, desc = "Quickfix previous line" })

vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc")

vim.keymap.set(
	"n",
	"<leader>rc",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ silent = true, desc = "Find and replace for current word" }
)

vim.keymap.set("n", "<leader>chmod", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Chmod a file" })

-- Define a custom command to format the file with jq and save it
vim.cmd([[command! JqFormat %!jq '.']])

-- Map a key to execute the custom command and exit without saving
vim.api.nvim_set_keymap("n", "<Leader>jq", ":JqFormat<CR>:noa w<CR>:q!<CR>", { noremap = true, silent = true })
