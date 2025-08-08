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

vim.keymap.set('n', '<leader>t', ":!")

