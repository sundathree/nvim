return {
    { "pbrisbin/vim-colors-off" },
	{
		"achadwick/bg.nvim",
		branch = "fix-format-nil",
		lazy = false
	},
    {
        "nvim-lualine/lualine.nvim",
        opts = require("configs.lualine")
    }
}
