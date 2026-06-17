return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = require("config.treesitter"),
            highlight = {
                enable = true
            }
        }
    },
    {
        "saghen/blink.cmp",
        version = "1.*",
        opts = require("config.blink")
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    },
    { "tronikelis/ts-autotag.nvim" }
}
