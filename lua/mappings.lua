vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>")
vim.keymap.set("n", "<leader>w", "<cmd>update<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>o", "<cmd>so<CR>")
vim.keymap.set({"n", "v"}, "x", '"_x')
vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<CR>")
vim.keymap.set("n", ",,", function()
	if vim.bo.filetype == "netrw" then
		vim.cmd("bd")
	else
		vim.cmd("Ex")
	end
end)
