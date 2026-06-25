vim.g.mapleader = " "

vim.keymap.set({"n", "v"}, "x", [["_x]])
vim.keymap.set({ "n", "v" }, "d", [["_d]])

vim.keymap.set("n", "<Esc>", "<cmd>nohl<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>e", function()
	if vim.bo.filetype == "netrw" then
		vim.cmd("bd")
	else
		vim.cmd("Ex")
	end
end)
