vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.gruvbox_bold = false

require("options")
require("mappings")
require("autocmds")
require("statusline")
require("configs.lazy")

vim.cmd([[colorscheme gruvbox]])
