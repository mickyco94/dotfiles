return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "goimports", "gofmt" },
      python = { "ruff_format" },
    },
    format_on_save = {
      lsp_fallback = true, -- use LSP if no formatter found
      timeout_ms = 500,
    },
  },
  config = function()
    vim.api.nvim_create_user_command("Format", function()
      require("conform").format { async = true, lsp_fallback = true }
    end, {})
  end,
}
