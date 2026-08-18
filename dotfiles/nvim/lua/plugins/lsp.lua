return {
  "neovim/nvim-lspconfig",
  lazy = false,
  dependencies = { "mason-lspconfig.nvim", "nvim-cmp" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local mason_bin = vim.fn.expand("~/.local/share/nvim/mason/bin/")
    
    vim.lsp.config("lua_ls", {
      cmd = { mason_bin .. "lua-language-server" },
      capabilities = capabilities,
    })
    vim.lsp.config("pyright", {
      cmd = { mason_bin .. "pyright-langserver", "--stdio" },
      capabilities = capabilities,
    })
    vim.lsp.config("bashls", {
      cmd = { mason_bin .. "bash-language-server", "start" },
      capabilities = capabilities,
    })
    vim.lsp.config("ts_ls", {
      cmd = { mason_bin .. "typescript-language-server", "--stdio" },
      capabilities = capabilities,
    })
    vim.lsp.config("clangd", {
      cmd = { mason_bin .. "clangd" },
      capabilities = capabilities,
    })
    
    vim.lsp.enable({ "lua_ls", "pyright", "bashls", "ts_ls", "clangd" })
    
    -- Diagnostic config
    vim.diagnostic.config({
      virtual_text = true,
      underline = true,
      signs = true,
    })
  end,
}
