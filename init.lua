vim.g.mapleader = " "
vim.g.maplocalleader = ","

for _, name in ipairs(vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/core")) do
    require("core." .. name:gsub("%.lua$", ""))
end

require("config.lazy")
vim.cmd("colorscheme quiet")
