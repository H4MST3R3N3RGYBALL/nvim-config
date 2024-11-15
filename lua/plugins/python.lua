return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = { -- Pyright but based, manually install from PyPI
          settings = {
            basedpyright = {
            analysis = {
              typeCheckingMode = "off",
              autoImportCompletions = true,
              diagnosticSeverityOverrides = {
                reportUnusedImport = "information",
                reportUnusedFunction = "information",
                reportUnusedVariable = "information",
                reportGeneralTypeIssues = "none",
                reportOptionalMemberAccess = "none",
                reportOptionalSubscript = "none",
                reportPrivateImportUsage = "none",
              },
            },
            },
          },
        },
        ruff_lsp = {
          handlers = {
            ["textDocument/publishDiagnostics"] = function() end, -- Disable diagnostics
          },
        },
      },
    },
  },
}
