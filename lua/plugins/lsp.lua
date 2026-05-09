return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      require("configs.lspconfig")
    end,
  },
  {
    "saghen/blink.cmp",
    version = "*",
    opts = {
      keymap = {
        preset = "default",
        ["<CR>"] = { "accept", "fallback" },
        ["<C-b>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<Esc>"] = { function(cmp) cmp.hide() end, "fallback" },
      },
      appearance = {
        nerd_font_variant = "propo",
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      completion = {
        trigger = {
          show_on_keyword = true,
        },
      },
    },
  },
  { "b0o/schemastore.nvim" }
}
