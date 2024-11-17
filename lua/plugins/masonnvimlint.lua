return {
  "rshkarin/mason-nvim-lint",
  dependencies = {
    "williamboman/mason.nvim",
    "mfussenegger/nvim-lint",
  },
  config = function()
    require("mason-nvim-lint").setup({
      ensure_installed = {
        "cmakelint",
        "stylelint",
        "editorconfig-checker",
        "golangci-lint",
        "htmlhint",
        "deno",
        "jsonlint",
        "markdownlint-cli2",
        "mypy",
        "pylint",
        "ruff",
        "shellcheck",
        "sqlfluff",
        "yamllint",
      },
      automatic_installation = false,
    })
  end,
}
