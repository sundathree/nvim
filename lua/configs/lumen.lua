vim.api.nvim_create_autocmd("User", {
  pattern = "LumenLight",
  callback = function()
    require("ayu").setup({ mirage = false })
    vim.cmd.colorscheme("ayu-light")
    require("lualine").setup({ options = { theme = "ayu_light" } })
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "LumenDark",
  callback = function()
    require("ayu").setup({ mirage = false })
    vim.cmd.colorscheme("ayu")
    require("lualine").setup({ options = { theme = "ayu" } })
  end,
})

vim.api.nvim_exec_autocmds("User", {
  pattern = vim.o.background == "light" and "LumenLight" or "LumenDark",
})
