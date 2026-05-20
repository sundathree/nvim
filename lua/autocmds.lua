local a = vim.api
local map = vim.keymap.set

local function netrw_keys()
	map("n", "<Esc>", "<cmd>bd<CR>", { buffer = true })
end

local function open_netrw_on_start()
	if vim.fn.argc() ~= 0 then return end
	vim.cmd("Ex")
	map("n", "<Esc>", function()
		if vim.bo.filetype == "netrw" then vim.cmd("q") end
	end, { buffer = true })
end

a.nvim_create_autocmd("FileType", { pattern = "netrw", callback = netrw_keys })
a.nvim_create_autocmd("VimEnter", { callback = open_netrw_on_start })
