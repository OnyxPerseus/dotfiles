return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "BufReadPost",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "c", "go", "lua", "vim", "javascript", "html", "python", "php" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
