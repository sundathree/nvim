local servers = {
    "html",
    "cssls",
    "jsonls",
    "pyright",
    "yamlls",
    "lua_ls",
    "ts_ls",
    "taplo",
}

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_installation = true,
})

local configs = {
    jsonls = {
	filetypes = { "json", "jsonc" },
	settings = {
	    json = {
		schemas = require("schemastore").json.schemas(),
		validate = { enable = true },
	    },
	},
    },
    lua_ls = {
	settings = {
	    Lua = {
		diagnostics = {
		    globals = { "vim" },
		},
	    },
	},
    },
}

for server, config in pairs(configs) do
    vim.lsp.config(server, config)
end

for _, server in ipairs(servers) do
    vim.lsp.enable(server)
end

vim.diagnostic.config({ virtual_text = true })
