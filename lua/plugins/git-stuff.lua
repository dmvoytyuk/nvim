return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"tpope/vim-fugitive",
		vim.keymap.set("n", "<leader>gc", ":Git commit -a<CR>"),
		vim.keymap.set("n", "<leader>gp", ":Git push<CR>"),
	},
}
