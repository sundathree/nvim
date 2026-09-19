return {
    "https://github.com/mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require('vscode').setup({
            transparent = true,
        })
        vim.cmd("colorscheme vscode")
    end
}
