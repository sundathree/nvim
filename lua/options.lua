local o = vim.o
local opt = vim.opt

o.number = true
opt.relativenumber = true

o.tabstop = 8
o.shiftwidth = 8
o.softtabstop = 8

o.signcolumn = 'no'

o.cursorlineopt = 'both'
opt.cursorline = true

opt.autoindent = true
opt.smartindent = true

opt.wrap = true
opt.linebreak = true
opt.textwidth = 80

opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.undodir = vim.fn.stdpath("data") .. "/undo"
opt.undofile = true

opt.fillchars = { eob = " " }
opt.guicursor = ""
opt.showmode = false
opt.title = true
