return {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    dependencies = {
      "davidmh/cspell.nvim",
    },
    cond = function()
      return false

      -- local project_root = vim.fn.getcwd()
      -- local cspell_path = project_root .. "/cspell.json"
      -- return vim.fn.filereadable(cspell_path) == 1
    end,
    opts = function(_, opts)
      local cspell = require("cspell")

      local config = {
        cspell_config_dirs = { "~/.config/cspell" },
        decode_json = function(cspell_str)
          local result = vim.json.decode(cspell_str)

          local found = false
          for _, path in ipairs(result.import) do
            if path == "/home/gagi/.config/cspell/cspell.json" then
              found = true
              break
            end
          end

          if found then
            result.language = nil
          end

          return result
        end,
        encode_json = function(tbl)
          local found = false
          for _, path in ipairs(tbl.import) do
            if path == "/home/gagi/.config/cspell/cspell.json" then
              found = true
              break
            end
          end

          if found then
            tbl.language = nil
          end

          return vim.fn.json_encode(tbl)
        end,
      }

      opts.sources = opts.sources or {}
      table.insert(
        opts.sources,
        cspell.diagnostics.with({
          config = config,
          diagnostics_postprocess = function(diagnostic)
            diagnostic.severity = vim.diagnostic.severity.INFO
          end,
        })
      )
      table.insert(
        opts.sources,
        cspell.code_actions.with({
          config = config,
        })
      )
    end,
  },
}
