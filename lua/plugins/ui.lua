return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = require("configs.lualine")
	},
	{
		"lmantw/themify.nvim",
		lazy = false,
		priority = 999,
		config = function()
			require("themify").setup(require("configs.themes"))
		end,
	},
	{ "typicode/bg.nvim", event = "ColorScheme" },
}
