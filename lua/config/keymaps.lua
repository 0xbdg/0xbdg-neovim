vim.g.mapleader = ""
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File navigation (like Ctrl+P in VSCode)
map('n', '<C-p>', '<cmd>Telescope find_files<CR>', opts)
map('n', '<C-A-p>', '<cmd>Telescope commands<CR>', opts)

-- Search in files (like Ctrl+Shift+F)
map('n', '<C-A-f>', '<cmd>Telescope live_grep<CR>', opts)

-- Toggle file explorer (like Ctrl+B in VSCode)
map('n', '<C-b>', '<cmd>Neotree<CR>', opts)

-- Open recent files (like Ctrl+R in VSCode)
map('n', '<C-r>', '<cmd>Telescope oldfiles<CR>', opts)

-- Split and tab management
map('n', '<C-\\>', '<cmd>vsplit<CR>', opts)
map('n', '<C-/>', '<cmd>split<CR>', opts)
map('n', '<C-w>c', '<cmd>close<CR>', opts)
map('n', '<C-t>', '<cmd>tabnew<CR>', opts)

-- Save and Quit
map('n', '<C-s>', '<cmd>w<CR>', opts)
map('n', '<C-q>', '<cmd>q<CR>', opts)
map('i', '<C-s>', '<Esc><cmd>w<CR>a', opts)

-- Move between buffers
map('n', '<Tab>', '<cmd>bnext<CR>', opts)
map('n', '<S-Tab>', '<cmd>bprevious<CR>', opts)

-- Undo
map('n', '<C-z>', 'u', opts)
map('i', '<C-z>', '<C-o>u', opts)

-- Redo
map('n', '<C-y>', '<C-r>', opts)
map('i', '<C-y>', '<C-o><C-r>', opts)

-- COPY

map('v', '<C-c>', '"+y', opts)     -- Copy to system clipboard
map('n', '<C-c>', '"+yy', opts)    -- Copy current line in normal mode

-- CUT
map('v', '<C-x>', '"+d', opts)     -- Cut selection to clipboard
map('n', '<C-x>', '"+dd', opts)    -- Cut current line in normal mode

-- PASTE
map('n', '<C-v>', '"+p', opts)     -- Paste after cursor
map('v', '<C-v>', '"+p', opts)
map('i', '<C-v>', '<C-r>+', opts)  -- Paste in insert mode

map('n', '<A-p>', '<Cmd>BufferLineTogglePin<CR>', { desc = 'Pin Buffer' })

