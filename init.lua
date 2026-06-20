for _, name in ipairs(vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/core")) do
    require("core." .. name:gsub("%.lua$", ""))
end

require("config.lazy")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
