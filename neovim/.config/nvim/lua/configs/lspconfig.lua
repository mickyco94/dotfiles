require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "pyright" }
vim.lsp.enable(servers)
