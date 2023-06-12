vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup { options = {} }

local map = vim.api.nvim_set_keymap
local default_keymap_options = { noremap = true, silent = true }

-- Open buffer close pick - tap letter of buffer to close
map('n', '<A-q>', '<Cmd>BufferLinePickClose<CR>', default_keymap_options)
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferLineCyclePrev<CR>', default_keymap_options)
map('n', '<A-.>', '<Cmd>BufferLineCycleNext<CR>', default_keymap_options)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferLineMovePrev<CR>', default_keymap_options)
map('n', '<A->>', '<Cmd>BufferLineMoveNext<CR>', default_keymap_options)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferLineGoToBuffer 1<CR>', default_keymap_options)
map('n', '<A-2>', '<Cmd>BufferLineGoToBuffer 2<CR>', default_keymap_options)
map('n', '<A-3>', '<Cmd>BufferLineGoToBuffer 3<CR>', default_keymap_options)
map('n', '<A-4>', '<Cmd>BufferLineGoToBuffer 4<CR>', default_keymap_options)
map('n', '<A-5>', '<Cmd>BufferLineGoToBuffer 5<CR>', default_keymap_options)
map('n', '<A-6>', '<Cmd>BufferLineGoToBuffer 6<CR>', default_keymap_options)
map('n', '<A-7>', '<Cmd>BufferLineGoToBuffer 7<CR>', default_keymap_options)
map('n', '<A-8>', '<Cmd>BufferLineGoToBuffer 8<CR>', default_keymap_options)
map('n', '<A-9>', '<Cmd>BufferLineGoToBuffer 9<CR>', default_keymap_options)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', default_keymap_options)

