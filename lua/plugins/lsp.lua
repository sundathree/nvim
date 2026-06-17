return {
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("config.lspconfig")
		end
	},
	{ "b0o/schemastore.nvim" }
}
