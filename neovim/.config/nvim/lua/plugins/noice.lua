return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    routes = {
      {
        filter = {
          event = "notify",
          find = "Request textDocument/documentHighlight failed",
        },
        opts = { skip = true },
      },
    },
  },
}
