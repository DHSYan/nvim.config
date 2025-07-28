vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- This allows pasting but doesn't pop it out of the register
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<leader>nh", vim.cmd.noh)

vim.keymap.set('n', '<leader>t', ":!")

vim.keymap.set('n', '<leader>G', vim.cmd.LazyGit)

vim.keymap.set('n', '<leader>i', vim.cmd.PasteImg)

-- Moving Around Window
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")

-- System CLipboard Interaction
vim.keymap.set("n", "<leader>sp", '"+p')
vim.keymap.set("v", "<leader>sp", '"+p')
vim.keymap.set("n", "<leader>sy", '"+y')
vim.keymap.set("v", "<leader>sy", '"+y')

