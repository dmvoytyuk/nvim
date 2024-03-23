return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},

	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			--			ensure_installed = {
			--				"lua",
			--				"javascript",
			--				"css",
			--				"html"
			--			},
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			matchup = {
				enable = true,
			},
			autotag = {
				enable = true,
				enable_rename = true,
				enable_close = true,
				enable_close_on_slash = true,
			},
		})
	end,
}
