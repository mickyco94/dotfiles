-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- show whitespace characters
vim.opt.list = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"  -- use system clipboard


vim.opt.listchars = {
  space = "·", -- single dot for spaces
  tab = "»·", -- how a tab looks (you can use "\t" representation)
  trail = "•", -- trailing space
  extends = "›",
  precedes = "‹",
  nbsp = "␣",
}

-- subtle highlight for whitespace so it's not too loud
vim.api.nvim_set_hl(0, "Whitespace", { fg = "#5c5c5c" })

-- diagnostic issues
local x = vim.diagnostic.severity
vim.diagnostic.config {
  virtual_text = { prefix = "" },
  signs = { text = { [x.ERROR] = "󰅙", [x.WARN] = "", [x.INFO] = "󰋼", [x.HINT] = "󰌵" } },
  underline = true,
  float = { border = "single" },
}

-- hide intro
vim.opt.shortmess:append("I")

vim.o.expandtab = true        -- use spaces instead of tabs
vim.o.tabstop = 2             -- how many spaces a tab counts for
vim.o.shiftwidth = 2          -- how many spaces for auto-indent
vim.o.softtabstop = 2         -- how many spaces when pressing <Tab> or <BS>

