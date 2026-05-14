return {
	{
		"Shatur/neovim-ayu",
		config = function()
			require("ayu").setup({
				mirage = true,
			})
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
