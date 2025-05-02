return {
	"nvim-telescope/telescope.nvim",
	event = "BufEnter",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		pickers = {
			find_files = {
				hidden = true,
			},
		},
	},
	config = function(opts)
		require("telescope").setup(opts)
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
	end,
}
