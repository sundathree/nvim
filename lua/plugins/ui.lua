return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = require("configs.lualine"),
	},
	{
		"lmantw/themify.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("themify").setup(require("configs.themes"))
		end,
	},
	{
		"achadwick/bg.nvim",
		branch = "fix-format-nil",
		event = "ColorScheme",
	},
}
