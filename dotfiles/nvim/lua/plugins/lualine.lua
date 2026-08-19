return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "dracula-nvim",
        },
        sections = {
          lualine_c = {
            {
              "filename",
              path = 3, -- 2 forces the absolute full path
            }
          }
        }
      })
    end,
  }
}
