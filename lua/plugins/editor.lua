return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = require("configs.treesitter"),
			highlight = { enable = true },
		},
	},

	{ "windwp/nvim-autopairs", event = "InsertEnter" },
}
