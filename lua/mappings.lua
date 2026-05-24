local map = vim.keymap.set

map("n", "<Esc>", "<cmd>noh<CR>")
map("n", "<C-s>", "<cmd>w<CR>")
map("n", "<leader>x", "<cmd>bd<CR>")
map({"n", "v"}, "x", '"_x')

map('n', '<Tab>', ':bnext<CR>', { silent = true })
map('n', '<S-Tab>', ':bprevious<CR>', { silent = true })

map("n", ",,", function()
	if vim.bo.filetype == "netrw" then
		vim.cmd("bd")
	else
		vim.cmd("Ex")
	end
end, { silent = true })
