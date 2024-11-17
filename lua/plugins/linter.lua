return {
  "mfussenegger/nvim-lint",
  event = "BufWritePost",
  enabled = true,
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      bash = { "bash", "shellcheck" },
      c = { "clangtidy" },
      cmake = { "cmakelint" },
      cpp = { "clangtidy", "clazy" },
      css = { "stylelint" },
      editorconfig = { "editorconfig-checker" },
      go = { "golangcilint" },
      html = { "htmlhint" },
      javascript = { "deno" },
      javascriptreact = { "deno" },
      json = { "jsonlint" },
      lua = { "luac" },
      markdown = { "markdownlint-cli2" },
      python = { "mypy", "pylint", "ruff" },
      ruby = { "ruby" },
      rust = { "clippy" },
      sh = { "shellcheck" },
      sql = { "sqlfluff" },
      swift = { "swiftlint" },
      typescript = { "deno" },
      typescriptreact = { "deno" },
      verilog = { "verilator" },
      yaml = { "yamllint" },
      zsh = { "zsh" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
