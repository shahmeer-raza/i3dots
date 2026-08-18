-- ~/.config/nvim/lua/config/theme.lua
vim.o.background = "dark"
vim.o.termguicolors = true

-- Night Owl syntax colors
vim.cmd.highlight("Normal", "guifg=#d6d6d6", "guibg=#000000")
vim.cmd.highlight("String", "guifg=#ecc48d")
vim.cmd.highlight("Comment", "guifg=#637777", "gui=italic")
vim.cmd.highlight("Keyword", "guifg=#c792ea")
vim.cmd.highlight("Function", "guifg=#82aaff")
vim.cmd.highlight("Type", "guifg=#7ec699")
vim.cmd.highlight("Number", "guifg=#f78c6b")
vim.cmd.highlight("Statement", "guifg=#c792ea")
vim.cmd.highlight("PreProc", "guifg=#c792ea")
vim.cmd.highlight("Identifier", "guifg=#d7d7d7")
vim.cmd.highlight("Special", "guifg=#f78c6b")
vim.cmd.highlight("LineNr", "guifg=#464646", "guibg=#000000")
vim.cmd.highlight("CursorLine", "guibg=#262626")
vim.cmd.highlight("VertSplit", "guifg=#333333", "guibg=#000000")
vim.cmd.highlight("StatusLine", "guibg=#262626", "guifg=#d6d6d6")
vim.cmd.highlight("Visual", "guibg=#404040")
vim.cmd.highlight("Cursor", "guibg=#ffaa00", "guifg=#000000")
