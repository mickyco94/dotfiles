-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- diagnostics
vim.api.nvim_set_keymap("n", "<S-q>", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

-- clear hl
vim.api.nvim_set_keymap("n", "<Esc><Esc>", ":nohlsearch<CR>", { noremap = true, silent = true })

-- LSP
vim.api.nvim_set_keymap('n', 'gd', "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true})
