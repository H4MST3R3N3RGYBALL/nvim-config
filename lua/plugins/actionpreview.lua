return {
  "aznhe21/actions-preview.nvim",
  keys = {
    {
      "<Leader>ca",
      function()
        require("actions-preview").code_actions()
      end,
      mode = { "n", "v" },
      desc = "Preview code actions.",
    },
  },
  opts = function()
    return {
      highlight_command = {
        require("actions-preview.highlight").delta(),
      },
    }
  end,
}
