return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "goimports", "gofmt" },
        python = { "ruff_format" },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 1000,
      }
    })
    vim.api.nvim_create_user_command("Format", function()
      require("conform").format { async = true, lsp_fallback = true }
    end, {})
  end,
}
