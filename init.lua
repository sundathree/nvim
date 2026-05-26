vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("options")
require("mappings")
require("autocmds")
require("configs.lazy")

vim.cmd([[colorscheme vague]])
