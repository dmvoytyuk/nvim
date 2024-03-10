vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.autoindent = true
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.g.mapleader = ' '

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	--{ 'sainnhe/sonokai', name = 'sonokai', priority = 1000 },
	{
		"sainnhe/edge",
		lazy = false,
		priority = 1000,
	},
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" }
    },
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}
local opts = {}

require("lazy").setup(plugins, opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

local configs = require('nvim-treesitter.configs')
configs.setup({
	ensure_installed = {"lua", "javascript", "css", "html"},
	highlight = { enable = true },
	indent = { enable = true },
})

vim.g.edge_better_performance = 1
vim.g.edge_enable_italic = 1
vim.g.edge_transparent_background = 1
vim.cmd.colorscheme "edge"

--vim.g.sonokai_style = "andromeda"
--vim.g.sonokai_better_performance = 1
--vim.g.sonokai_enable_italic = 1
--vim.g.sonokai_transparent_background = 1
--vim.cmd.colorscheme "sonokai"

