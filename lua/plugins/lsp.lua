return {
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end
	},
	{
		"saghen/blink.cmp",
		version = "1.*",
		opts = require("configs.blink")
	},
	{ "b0o/schemastore.nvim" }
}
