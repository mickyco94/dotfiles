return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup {
      options = { theme = "auto", globalstatus = true },
      sections = {
        lualine_c = { "filename" },
        lualine_x = { "filetype" },
      },
    }
  end,
}
