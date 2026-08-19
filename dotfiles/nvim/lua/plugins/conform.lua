return {
  "stevearc/conform.nvim",
  lazy = false,  -- change this
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        python = { "black" },
      },
    })
    
    vim.keymap.set("n", "<leader>fm", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, { noremap = true, silent = true })
  end,
}
