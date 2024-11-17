return {
  "stevearc/conform.nvim",
  opts = {
    -- Define formatters
    formatters = {
      -- Example of customizing a formatter:
      -- prettier = {
      --   prepend_args = { "--no-semi", "--single-quote" },
      -- },
    },

    -- Formatter by filetype configuration
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_organize_imports", "ruff_format", "ruff_fix" },
      rust = { "rustfmt" },
      swift = { "swiftformat" },
      go = { "goimports", "gofmt" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      sh = { "shfmt" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      objc = { "clang-format" },
      objcpp = { "clang-format" },
      cuda = { "clang-format" },
      proto = { "clang-format" },
      cs = { "clang-format" },
      verilog = { "verible" },
      systemverilog = { "verible" },
      cmake = { "gersemi" },
      sql = { "sqlfmt" },
      zig = { "zigfmt" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      vue = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      less = { "prettier" },
      html = { "prettier" },
      jsonc = { "prettier" },
      graphql = { "prettier" },
      handlebars = { "prettier" },
      ["*"] = { "trim_newlines", "trim_whitespace" },
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
  },
}
