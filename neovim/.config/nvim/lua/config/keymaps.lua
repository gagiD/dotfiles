-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true, desc = "which_key_ignore" }

vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>0", ":BufferLineGoToBuffer -1<CR>", opts)

vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true })
vim.api.nvim_set_keymap("v", "p", '"_dP', { silent = true })

-- Emacs like keybinds in insert mode
vim.api.nvim_set_keymap("i", "<C-a>", "<Home>", opts)
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", opts)
vim.api.nvim_set_keymap("i", "<C-b>", "<Left>", opts)
vim.api.nvim_set_keymap("i", "<C-f>", "<Right>", opts)
vim.api.nvim_set_keymap("i", "<C-d>", "<Del>", opts)
