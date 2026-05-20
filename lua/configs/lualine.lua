return {
	options = {
		theme = "auto",
		component_separators = "",
		section_separators = "",
		icons_enabled = false,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {
			"branch",
			{
				"diff",
			},
			"diagnostics",
		},
		lualine_c = {
			{
				"filename", path = 1, status = true,
			},
		},
		lualine_x = {
			"encoding",
			"fileformat",
			"filetype",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" }
	},
	tabline = {
		lualine_a = {
			{
				"buffers",
				mode = 2,
				use_mode_colors = true,
				buffers_color = {
					active = 'Identifier',
				},
			},
		},
		lualine_c = {},
		lualine_b = { "lsp_progress", },
		lualine_x = {},
		lualine_y = { "grapple" },
		lualine_z = { "tabs" }
	},
}
