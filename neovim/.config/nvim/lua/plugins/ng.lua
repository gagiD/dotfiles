return {
  "joeveiga/ng.nvim",
  lazy = true,
  cond = function()
    local cwd = vim.fn.getcwd()
    local angular_json = cwd .. "/angular.json"
    return vim.fn.filereadable(angular_json) == 1
  end,
  keys = {
    {
      "<leader>at",
      function()
        require("ng").goto_template_for_component({ reuse_window = true })
      end,
      desc = "Go to template for component",
      noremap = true,
      silent = true,
    },
    {
      "<leader>ac",
      function()
        require("ng").goto_component_with_template_file({ reuse_window = true })
      end,
      desc = "Go to component with template file",
      noremap = true,
      silent = true,
    },
    {
      "<leader>aT",
      function()
        require("ng").get_template_tcb()
      end,
      desc = "Get template TCB",
      noremap = true,
      silent = true,
    },
  },
}
