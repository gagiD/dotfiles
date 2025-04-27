return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    explorer = {
      layout = { layout = { position = "right" } },
    },
    files = {
      hidden = true,
    },
    picker = {
      hidden = true,
      files = {
        hidden = true,
      },
      sources = {
        files = {
          hidden = true,
        },
        explorer = {
          layout = { layout = { position = "right" } },
        },
      },
    },
  },
}
