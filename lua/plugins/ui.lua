return {
  {
    "Shatur/neovim-ayu",
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = true,
      })
      vim.cmd.colorscheme("ayu")
    end,
  },
  {
    "vimpostor/vim-lumen",
    config = function()
      require("configs.lumen")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = require("configs.lualine")
  },
}
