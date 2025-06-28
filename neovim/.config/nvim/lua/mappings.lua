require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>z", ":ZenMode<CR>", { desc = "Toggle ZenMode" })
map("n", "Q", function()
  vim.diagnostic.open_float(nil, { scope = "line" })
end, { desc = "Show diagnostics" })
