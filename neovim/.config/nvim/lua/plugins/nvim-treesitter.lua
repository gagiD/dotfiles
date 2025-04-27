return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "vue",
        "astro",
        "c_sharp",
        "cpp",
        "csv",
        "dockerfile",
        "elixir",
        "elm",
        "git_config",
        "gitignore",
        "go",
        "php",
        "rust",
        "scss",
        -- "sass",
        "sql",
        "svelte",
        "yaml",
        "zig",
      })
    end,
  },
}
