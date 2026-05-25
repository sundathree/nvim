vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>")
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>")
vim.keymap.set({"n", "v"}, "x", '"_x')

vim.keymap.set('n', '<Tab>', ':bnext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { silent = true })

vim.keymap.set("n", ",,", function()
	if vim.bo.filetype == "netrw" then
		vim.cmd("bd")
	else
		vim.cmd("Ex")
	end
end, { silent = true })
