return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "bash-language-server",
        "css-lsp",
        "gopls",
        "helm-ls",
        "html-lsp",
        "marksman",
        "phpactor",
        -- formatting
        "prettier",
        -- code spell
        "cspell",
      },
    },
  },
}
