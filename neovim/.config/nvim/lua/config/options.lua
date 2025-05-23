-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.g.trouble_lualine = false

vim.g.snacks_scroll = false

vim.opt.spell = false

vim.opt.wrap = true

vim.g.root_spec = { ".git", "lsp", { ".git", "lua" }, "cwd" }
