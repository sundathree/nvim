return {
  keymap = {
    preset = "default",
    ["<CR>"] = { "accept", "fallback" },
    ["<C-b>"] = { "show", "show_documentation", "hide_documentation" },
    ["<C-j>"] = { "select_next", "fallback" },
    ["<C-k>"] = { "select_prev", "fallback" },
    ["<Esc>"] = { function(cmp) cmp.hide() end, "fallback" },
  },

  appearance = {
    nerd_font_variant = "normal",
  },

  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },

  completion = {
    trigger = {
      show_on_keyword = true,
    },

    documentation = {
      auto_show = true,
      auto_show_delay_ms = 500
    },
  },
}
