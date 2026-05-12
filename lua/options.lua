local o = vim.o
local opt = vim.opt

o.numberwidth = 1
o.number = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
o.expandtab = true
o.signcolumn = 'no'
o.cursorlineopt = 'both'

opt.cursorline = true
opt.smartindent = true
opt.wrap = false
opt.swapfile = false
opt.guicursor = ""
opt.title = true
opt.relativenumber = true
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. "/undo"
opt.fillchars = { eob = " " }
