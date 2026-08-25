return {
  {
    "morhetz/gruvbox",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_contrast_dark = "hard"
      vim.g.gruvbox_sign_column = "bg0"
      
      vim.cmd("colorscheme gruvbox")
      
      vim.cmd("highlight Normal guibg=#000000")
      vim.cmd("highlight NormalNC guibg=#000000")
      vim.cmd("highlight SignColumn guibg=#000000")
      vim.cmd("highlight LineNr guibg=#000000")
    end,
  }
}
