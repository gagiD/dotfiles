return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      angularls = {
        root_dir = function(fname)
          return require("lspconfig.util").root_pattern("angular.json", "nx.json")(fname)
        end,
      },
    },
  },
}
