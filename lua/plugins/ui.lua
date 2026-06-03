return {
	{ "morhetz/gruvbox" },
	{
		"achadwick/bg.nvim",
		branch = "fix-format-nil",
		lazy = false
	},
	{ "ap/vim-buftabline" },
    {
        "nvim-lualine/lualine.nvim",
        opts = require("configs.lualine")
    }
}
