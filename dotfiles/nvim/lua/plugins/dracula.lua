return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("dracula").setup({
	colors = {
	  bg = "#000000",          -- Sets the main editor background
	  bg_dark = "#000000",     -- Sets terminal/sidebar background
	  bg_highlight = "#1a1a1a" -- Sets the current line highlight (optional adjust)
	},
      })
      vim.cmd([[colorscheme dracula]])
    end,
  }
}

