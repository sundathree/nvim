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
		branch = "v1",
		opts = require("configs.blink")
	},
	{ "b0o/schemastore.nvim" },
	{ "seblyng/roslyn.nvim" },
}
