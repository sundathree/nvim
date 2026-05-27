return {
	{ "williamboman/mason.nvim" },
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
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
		version = '1.*',
		opts = require("configs.blink")
	},
	{ "b0o/schemastore.nvim" },
}
