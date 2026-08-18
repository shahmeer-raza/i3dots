return {
  "windwp/nvim-autopairs",
  lazy = false,
  dependencies = { "nvim-cmp" },
  config = function()
    local autopairs = require("nvim-autopairs")
    autopairs.setup({
      disable_filetype = { "TelescopePrompt" },
    })
    
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
