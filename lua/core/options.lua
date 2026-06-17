local set = vim.opt

set.termguicolors	= true
set.mouse           = ""
set.fileencoding	= "utf-8"
set.autoread		= true
set.autowrite       = true
set.autowriteall    = true
set.clipboard 		= "unnamedplus"
set.fillchars       = { eob = " " }

set.showmode 		= false
set.swapfile 		= false
set.title 			= true
set.undodir 		= vim.fn.stdpath("data") .. "/undo"
set.undofile 		= true

set.tabstop 		= 4
set.shiftwidth 		= 4
set.shiftround      = true
set.expandtab		= true
set.autoindent		= true
set.breakindent		= true
set.smartindent		= true

set.linebreak       = true
set.showbreak       = "~ "
