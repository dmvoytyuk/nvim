-- {
--	"navarasu/onedark.nvim",
--	lazy = false,
--	priority = 1000,
--	config = function()
--		require("onedark").setup {
--			style = "darker",
--			transparent = true,
--			code_style = {
--				keywords = "italic",
--				functions = "bold",
--			}
--		}
--		vim.cmd.colorscheme "onedark"
--	end
--}
return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "night",
			styles = {
				functions = { bold = true },
			},
		})
		vim.cmd.colorscheme("tokyonight")
	end,
}
