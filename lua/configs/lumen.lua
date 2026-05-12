vim.api.nvim_create_autocmd("User", {
  pattern = "LumenLight",
  callback = function()
    require("ayu").setup({ mirage = true })
    vim.cmd.colorscheme("ayu-light")
    require("lualine").setup({ options = { theme = "ayu_light" } })
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "LumenDark",
  callback = function()
    require("ayu").setup({ mirage = true })
    vim.cmd.colorscheme("ayu-mirage")
    require("lualine").setup({ options = { theme = "ayu_mirage" } })
  end,
})

vim.api.nvim_exec_autocmds("User", {
  pattern = vim.o.background == "light" and "LumenLight" or "LumenDark",
})
