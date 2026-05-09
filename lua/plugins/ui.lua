return {
  {
    "Shatur/neovim-ayu",
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = false,
      })
      vim.cmd.colorscheme("ayu")
    end,
  },
  {
    "vimpostor/vim-lumen",
    config = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "LumenLight",
        callback = function()
          require("ayu").setup({ mirage = false })
          vim.cmd.colorscheme("ayu-light")
          require("lualine").setup({ options = { theme = "auto" } })
          vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "LineNr", { fg = "#888888" })
          vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#000000" })
        end,
      })
      vim.api.nvim_create_autocmd("User", {
        pattern = "LumenDark",
        callback = function()
          require("ayu").setup({ mirage = false })
          vim.cmd.colorscheme("ayu-dark")
          require("lualine").setup({ options = { theme = "auto" } })
          vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "LineNr", { fg = "#888888" })
          vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff" })
        end,
      })
      vim.api.nvim_exec_autocmds("User", {
        pattern = vim.o.background == "light" and "LumenLight" or "LumenDark",
      })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = "|",
        section_separators = "",
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    }
  },
}
