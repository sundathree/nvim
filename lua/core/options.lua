vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.signcolumn = "yes"

vim.opt.fileencoding = "utf-8"

vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.autowriteall = true

vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true
vim.opt.fillchars = { eob = " " }
vim.opt.showmode = false
vim.opt.title = true

vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
vim.opt.undofile = true
vim.opt.swapfile = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true

vim.opt.autoindent = true
vim.opt.breakindent	= true
vim.opt.smartindent	= true

vim.opt.linebreak = true
vim.opt.colorcolumn = "80"

vim.opt.incsearch = true
vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = false
vim.g.netrw_winsize = 25
