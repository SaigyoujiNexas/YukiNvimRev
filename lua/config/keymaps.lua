-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { buffer = 0 }
vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")

map("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
-- map("n", "<c-/>", '<Cmd>exe 1 . "ToggleTerm"<CR>', { noremap = true, nowait = true, silent = true })
-- map("n", "<c-_>", '<Cmd>exe 1 . "ToggleTerm"<CR>', { noremap = true, nowait = true, silent = true })
-- map("i", "<c-/>", '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { noremap = true })
-- map("i", "<c-_>", '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { noremap = true })
