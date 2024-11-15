return {
  -- LSP Configuration for SourceKit-LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Configuration for all LSP servers, including SourceKit-LSP
      servers = {
        sourcekit = {
          cmd = { "sourcekit-lsp" },  -- Path to sourcekit-lsp executable (assumes it's in your PATH)
          filetypes = { "swift", "objective-c", "objective-cpp" },  -- Supported filetypes for SourceKit-LSP
          settings = {
            sourcekit = {
              -- Add any custom settings for SourceKit-LSP here
            },
          },
          on_attach = function(client, bufnr)
            -- Optional: set up keybindings and other settings once LSP is attached
            vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
            vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
          end,
        },
      },
    },
  },
}
