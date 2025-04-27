local colors = { "tokyonight", "catppuccin", "onedark" }

math.randomseed(os.time())
local chosen = colors[math.random(#colors)]

return {
  {
    "navarasu/onedark.nvim",
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = chosen,
    },
  },
}
