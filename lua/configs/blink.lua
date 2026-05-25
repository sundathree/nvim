return {
    keymap = {
	preset = "default",
	["<CR>"] = { "accept", "fallback" },
	["<C-b>"] = { "show", "show_documentation", "hide_documentation" },
	["<C-j>"] = { "select_next", "fallback" },
	["<C-k>"] = { "select_prev", "fallback" },
	["<Esc>"] = { function(cmp) cmp.hide() end, "fallback" },
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
	menu = {
	    draw = {
		columns = { { "label", "label_description", gap = 1 }, { "kind" } },
		components = {
		    kind_icon = { text = function() return "" end },
		},
	    },
	},
    },
    appearance = { nerd_font_variant = "none" },
}
