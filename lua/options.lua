local o = vim.o
local opt = vim.opt
local g = vim.g

o.number = true

o.tabstop = 8
o.shiftwidth = 8
o.softtabstop = 8

o.signcolumn = 'no'

o.cursorlineopt = 'both'
opt.cursorline = true

opt.autoindent = true
opt.smartindent = true

opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.undodir = vim.fn.stdpath("data") .. "/undo"
opt.undofile = true

opt.fillchars = { eob = " " }
opt.showmode = false
opt.title = true

g.netrw_banner = false
g.netrw_liststyle = 3
g.netrw_winsize = 25
