return {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  config = function()
    local noneLs = require("null-ls")
    noneLs.setup({
      sources = {
        noneLs.builtins.formatting.stylua,
        noneLs.builtins.formatting.isort,
        noneLs.builtins.formatting.black,
        noneLs.builtins.formatting.phpcsfixer,
      },
    })
  end,
}
