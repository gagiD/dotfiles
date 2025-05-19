-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true, desc = "which_key_ignore" }

local allIgnore = { "n", "v", "x" }

vim.keymap.set(allIgnore, "Q", "<nop>", opts)
vim.keymap.set(allIgnore, "qq", "<nop>", opts)
vim.keymap.set(allIgnore, "<F1>", "<nop>", opts)

vim.keymap.set("n", "<F2>", "qq", opts)
vim.keymap.set("n", "<F3>", "q", opts)
vim.keymap.set("n", "<F4>", "@q", opts)

vim.keymap.set("n", "<A-1>", ":BufferLineGoToBuffer 1<CR>", opts)
vim.keymap.set("n", "<A-2>", ":BufferLineGoToBuffer 2<CR>", opts)
vim.keymap.set("n", "<A-3>", ":BufferLineGoToBuffer 3<CR>", opts)
vim.keymap.set("n", "<A-4>", ":BufferLineGoToBuffer 4<CR>", opts)
vim.keymap.set("n", "<A-5>", ":BufferLineGoToBuffer 5<CR>", opts)
vim.keymap.set("n", "<A-6>", ":BufferLineGoToBuffer 6<CR>", opts)
vim.keymap.set("n", "<A-7>", ":BufferLineGoToBuffer 7<CR>", opts)
vim.keymap.set("n", "<A-8>", ":BufferLineGoToBuffer 8<CR>", opts)
vim.keymap.set("n", "<A-9>", ":BufferLineGoToBuffer 9<CR>", opts)
vim.keymap.set("n", "<A-0>", ":BufferLineGoToBuffer -1<CR>", opts)

vim.keymap.set("n", "d", '"_d', { noremap = true })
vim.keymap.set("v", "p", '"_dP', { silent = true })

-- Emacs like keybinds in insert mode
vim.keymap.set("i", "<C-a>", "<Home>", opts)
vim.keymap.set("i", "<C-e>", "<End>", opts)
vim.keymap.set("i", "<C-b>", "<Left>", opts)
vim.keymap.set("i", "<C-f>", "<Right>", opts)
vim.keymap.set("i", "<C-d>", "<Del>", opts)
