return {
  {
    "mrcjkb/rustaceanvim",
    version = "^6", -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    "folke/twilight.nvim",
    cmd = "Twilight",
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      plugins = {
        twilight = {
          enabled = true,
        },
      },
    },
    cmd = "ZenMode",
  },
  {
    "zapling/mason-conform.nvim",
  },
  {
    "williamboman/mason.nvim",
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "rust",
        "python",
      },
    },
  },
}
