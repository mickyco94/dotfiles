return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "haskell",
        "html",
        "css",
        "lua",
        "vim",
        "vimdoc",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
      },
    }
  end,
}
