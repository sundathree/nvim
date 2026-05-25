return {
    {
	"vague-theme/vague.nvim",
	config = function ()
	    require('vague').setup({
		transparent = true,
		italic = false,
		bold = false
	    })
	    vim.cmd.colorscheme("vague")
	end
    },
    {
	"achadwick/bg.nvim",
	branch = "fix-format-nil",
	event = "ColorScheme",
    },
}
