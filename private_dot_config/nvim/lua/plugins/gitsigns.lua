return {
  "lewis6991/gitsigns.nvim",
  event = "VeryLazy",
  config = function()
    require("gitsigns").setup({
      on_attach = function()
        vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", { noremap = true, silent = true })
      end
    })
  end
}
