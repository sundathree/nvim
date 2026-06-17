local configs = {}
local dir = vim.fn.stdpath("config") .. "/lua/config/lsp"

for _, file in ipairs(vim.fn.glob(dir .. "/*.lua", false, true)) do
	local name = vim.fn.fnamemodify(file, ":t:r")
	if name ~= "init" then
		configs[name] = require("config.lsp." .. name)
	end
end

return configs
