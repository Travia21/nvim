print("Profile loaded from ~/.config/nvim/lua/personal")

vim.opt.swapfile = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.hlsearch = false

vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus" -- share clipboard with system
vim.opt.colorcolumn = "121"

require("personal.keymap")
