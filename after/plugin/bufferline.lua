vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup { options = {} }

function DeleteUnnamedBuffer()
  local current_buffer_name = vim.fn.bufname('%')

  if current_buffer_name ~= '' then
    local num_buffers = vim.fn.bufnr('$')

    -- Check if there are other buffers
    if num_buffers > 1 then
      local buffers = vim.fn.getbufinfo({ buflisted = 1 })

      -- Find the first buffer that is not unnamed
      for _, buffer in ipairs(buffers) do
        if buffer.name == '' then
          vim.cmd('bdelete ' .. buffer.bufnr)
          break
        end
      end
    end
  end
end

-- Automatically call the above function when a new buffer is opened
vim.cmd('autocmd BufWinEnter * lua DeleteUnnamedBuffer()')

local function close_current_and_open_next_buffer()
  local current_buffer = vim.fn.bufnr("%")
  local remaining_buffers = vim.fn.len(vim.fn.getbufinfo({ buflisted = 1 }))

  if remaining_buffers >= 2 then
    -- If there are 2 or more buffers, close the current one
    vim.cmd("bdelete!")
  else
    -- If there is only 1 buffer, close the window
    vim.cmd("bdelete!")
    vim.cmd("close")
    return
  end

  -- If there are remaining buffers, open the next one
  if remaining_buffers >= 2 then
    if current_buffer == vim.fn.bufnr("%") then
      -- If the current buffer is the last one, open the previous one
      vim.cmd("bprevious")
    else
      vim.cmd("bnext")
    end
  end
end

vim.api.nvim_create_user_command("CloseCurrentBuffer", close_current_and_open_next_buffer, {})

local map = vim.api.nvim_set_keymap
local default_keymap_options = { noremap = true, silent = true }

-- Open buffer close pick - tap letter of buffer to close
map('n', '<A-q>', '<Cmd>CloseCurrentBuffer<CR>', default_keymap_options)
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
