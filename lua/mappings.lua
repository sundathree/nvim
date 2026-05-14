local map = vim.keymap.set

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "clear highlights" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = ":w" })
map("n", "<leader>x", "<cmd>x<CR>", { desc = ":wq but better" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = ":q" })
map({"n", "v"}, "x", '"_x', { desc = "black hole delete" })

map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })


map("n", "<C-n>", function()
	if vim.bo.filetype == "netrw" then
		vim.cmd("bd")
	else
		vim.cmd("Ex")
	end
end, { desc = "toggle netrw" })
