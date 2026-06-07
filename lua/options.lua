vim.g.mapleader = " "

local set = vim.opt
local setg = vim.g

set.fileencoding	= "utf-8"
set.autoread		= true
set.mouse 			= "a"
set.number  		= true
set.relativenumber	= true
set.signcolumn 		= "number"
set.cursorline 		= true
set.cursorlineopt	= "number"
set.scrolloff 		= 5
set.clipboard 		= "unnamedplus"
set.fillchars       = {eob = " "}

set.showmode 		= false
set.swapfile 		= false
set.title 			= true
set.undodir 		= vim.fn.stdpath("data") .. "/undo"
set.undofile 		= true

set.tabstop 		= 4
set.shiftwidth 		= 4
set.expandtab		= true
set.autoindent		= true
set.breakindent		= true
set.smartindent		= true
set.colorcolumn 	= "80"

setg.netrw_banner 	= false
