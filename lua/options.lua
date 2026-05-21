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

o.autoread = true
opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.undodir = vim.fn.stdpath("data") .. "/undo"
opt.undofile = true

opt.fillchars = { eob = " " }
opt.showmode = false
opt.title = true

opt.termguicolors = true

g.netrw_banner = false
g.netrw_liststyle = 3
g.netrw_winsize = 25

g.accent_auto_cwd_colour = 1
g.accent_darken = 1

g.mapleader = " "
g.maplocalleader = "\\"
