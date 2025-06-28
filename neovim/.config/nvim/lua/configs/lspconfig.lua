require("nvchad.configs.lspconfig").defaults()
local lspconfig = require "lspconfig"

lspconfig.ltex.setup {
  settings = {
    ltex = {
      language = "en-GB",
    },
  },
}

local servers = { "html", "cssls", "gopls", "pyright", "ltex" }
vim.lsp.enable(servers)
