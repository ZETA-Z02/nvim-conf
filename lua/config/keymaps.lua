-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<F2>", ":belowright  terminal")
vim.keymap.set("n", "<CR>", "<Esc>:w<Esc>i")
