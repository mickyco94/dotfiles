--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('plug')      -- Plugins
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps

-- PLUGINS
-- File Explorer
require('nvim-tree').setup{}
-- Status Line
require('lualine').setup{
    options = {
        theme = 'auto'
    }
}
