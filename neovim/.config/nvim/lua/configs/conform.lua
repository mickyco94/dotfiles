local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    go = { "goimports-reviser", "gofumpt" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

vim.api.nvim_create_user_command("Format", function()
  require("conform").format()
end, { desc = "Format the current buffer using conform.nvim" })

return options
