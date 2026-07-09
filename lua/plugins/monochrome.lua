 return {
    {
        "https://github.com/chriskempson/base16-vim",
        config = function()
            vim.o.background = "light"
            vim.cmd("colorscheme base16-grayscale-light")
        end
    }
 }
