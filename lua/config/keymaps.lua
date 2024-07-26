-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap
-- vim.keymap.del({ "n" }, "<c-/>")
--
-- map("n", "<C-/>", '<Cmd>exe 1 . "ToggleTerm"<CR>', { noremap = true, nowait = true, silent = true })
-- map("i", "<C-/>", "<Esc><Cmd>exe v:count1 . ToggleTerm<CR>", { noremap = true })
