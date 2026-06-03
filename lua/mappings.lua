local map = vim.keymap.set

map("n", "<Esc>", "<cmd>noh<CR>")
map("n", "<leader>w", "<cmd>update<CR>")
map("n", "<leader>x", "<cmd>bd<CR>")
map("n", "<leader>q", "<cmd>q<CR>")
map("n", "<leader>o", "<cmd>so<CR>")
map({"n", "v"}, "x", '"_x')
map("n", "<Tab>", "<cmd>bnext<CR>")
map("n", "<S-Tab>", "<cmd>bprevious<CR>")

map("n", ",,", function()
	if vim.bo.filetype == "netrw" then
		vim.cmd("bd")
	else
		vim.cmd("Ex")
	end
end)
