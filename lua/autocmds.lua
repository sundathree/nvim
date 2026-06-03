local function netrw_keys()
	vim.keymap.set("n", "<Esc>", "<cmd>bd<CR>", { buffer = true })
end

local function netrw_startup()
	if vim.fn.argc() ~= 0 then return end
	vim.cmd("Ex")
	vim.keymap.set("n", "<Esc>", function()
		if vim.bo.filetype == "netrw" then vim.cmd("q") end
	end, { buffer = true })
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw", callback = netrw_keys
})

vim.api.nvim_create_autocmd("VimEnter", {
    callback = netrw_startup
})
