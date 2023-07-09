--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Append Carriage Return to end of command to remove need to press enter
-- i.e. <CR>

-- Toggle nvim-tree
map('n', 'n', ":NvimTreeToggle<CR>", default_opts)
