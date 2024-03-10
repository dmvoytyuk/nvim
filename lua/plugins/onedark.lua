return {
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("onedark").setup {
			style = "darker",
			transparent = true,
			code_style = {
				keywords = "italic",
				functions = "bold",
			}
		}
		vim.cmd.colorscheme "onedark"
	end
}
