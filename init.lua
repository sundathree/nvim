vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("configs.lazy")
require("options")
require("autocmds")
require("mappings")

vim.cmd.colorscheme("vague")
