 return {
    {
        "https://github.com/chriskempson/base16-vim",
        config = function()
            vim.o.background = "dark"
            vim.cmd("colorscheme base16-grayscale-dark")
        end
    }
 }
