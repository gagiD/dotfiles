return {
  "joeveiga/ng.nvim",
  lazy = true,
  cond = function()
    local project_root = vim.fs.dirname(vim.fs.find("node_modules", { path = vim.fn.getcwd(), upward = true })[1])
    if not project_root then
      return false
    end

    local package_json = project_root .. "/package.json"
    if not vim.uv.fs_stat(package_json) then
      return false
    end

    local contents = io.open(package_json):read("*a")
    local json = vim.json.decode(contents)
    if not json.dependencies then
      return false
    end

    local angular_core_version = json.dependencies["@angular/core"]
    if not angular_core_version then
      return false
    end

    require("luasnip").filetype_extend("typescript", { "angular" })
    require("luasnip").filetype_extend("html", { "angular" })

    return true
  end,
  keys = {
    -- {
    --   "<leader>at",
    --   function()
    --     require("ng").goto_template_for_component({ reuse_window = true })
    --   end,
    --   desc = "Go to template for component",
    --   noremap = true,
    --   silent = true,
    -- },
    -- {
    --   "<leader>ac",
    --   function()
    --     require("ng").goto_component_with_template_file({ reuse_window = true })
    --   end,
    --   desc = "Go to component with template file",
    --   noremap = true,
    --   silent = true,
    -- },
    -- {
    --   "<leader>aT",
    --   function()
    --     require("ng").get_template_tcb()
    --   end,
    --   desc = "Get template TCB",
    --   noremap = true,
    --   silent = true,
    -- },
  },
}
