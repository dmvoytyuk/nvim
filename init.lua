vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.autoindent = true
vim.opt.shiftwidth = 2
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.keymap.set("n", "<C-.>", ":bnext<CR>")
vim.keymap.set("n", "<C-,>", ":bprevious<CR>")
vim.keymap.set("n", "<C-x>", ":bd<CR>")
vim.keymap.set("n", "<leader><space>", ":noh<CR>")

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

require("lazy").setup("plugins")
