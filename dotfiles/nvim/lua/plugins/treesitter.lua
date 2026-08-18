return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false, 
  config = function()
    require('nvim-treesitter.config').setup {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "bash",
        "python",
        "javascript",
        "typescript",
        "json",
        "yaml",
        "c",
        "cpp",
      },
      
      sync_install = false,
      auto_install = true,
      ignore_install = {},
      
      highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
      },
      
      indent = {
        enable = true,
        disable = {},
      },
      
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = "<C-s>",
          node_decremental = "<C-backspace>",
        },
      },
    }
  end,
}
