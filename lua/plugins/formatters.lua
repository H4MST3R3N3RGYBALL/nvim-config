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

        -- Format options
        format = {
            timeout_ms = 3000,
            async = false, -- Not recommended to change
            quiet = false, -- Not recommended to change
        },

        -- Formatter by filetype configuration
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "ruff_organize_imports", "ruff_format" },
            rust = { "rustfmt" },
            swift = { "swiftformat" },
            go = { "goimports", "gofmt" },
            json = { "clang-format" },
            yaml = { "yamlfmt" },
            markdown = { "markdownfmt" },
            sh = { "shfmt" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            objc = { "clang-format" },
            objcpp = { "clang-format" },
            cuda = { "clang-format" },
            proto = { "clang-format" },
            m = { "clang-format" },
            mm = { "clang-format" },
            cs = { "clang-format" },
            verilog = { "verible" },
            systemverilog = { "verible" },
        },
        default_format_opts = {
            lsp_format = "fallback",
        },
    },
}
