local map = vim.keymap.set

map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")

map("n", "<Esc>", "<cmd>noh<CR>")
map("n", "<C-s>", "<cmd>w<CR>")
map("n", "<leader>x", "<cmd>bd<CR>")
map("n", "<leader>q", "<cmd>q<CR>")
map({"n", "v"}, "x", '"_x')

map("n", "<leader>/", "gcc")
map("v", "<leader>/", "gc")

map("n", "<leader>th", "<cmd>Themify<CR>")

map('n', '<Tab>', ':bnext<CR>', { silent = true })
map('n', '<S-Tab>', ':bprevious<CR>', { silent = true })

map("n", ",,", function()
	if vim.bo.filetype == "netrw" then
		vim.cmd("bd")
	else
		vim.cmd("Ex")
	end
end, { silent = true })
