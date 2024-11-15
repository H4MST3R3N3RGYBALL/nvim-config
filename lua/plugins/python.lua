return {
  -- LSP Configuration for Pyright
  {
    "neovim/nvim-lspconfig",  -- LSP plugin
    config = function()
      -- Setup Pyright LSP with type checking disabled
      require("lspconfig").pyright.setup({
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "off",  -- Disable all type checking
              diagnosticMode = "openFilesOnly",  -- Optional: only show diagnostics for open files
              autoSearchPaths = true,  -- Enable automatic searching for Python paths
              useLibraryCodeForTypes = true,  -- Enable type information from libraries
            },
          },
        },
      })
    end,
  },
}
