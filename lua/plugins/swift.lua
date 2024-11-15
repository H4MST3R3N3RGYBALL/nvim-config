return {
  -- LSP Configuration for SourceKit-LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Manually configure SourceKit-LSP
      require("lspconfig").sourcekit.setup({
        cmd = { "sourcekit-lsp" },  -- Path to sourcekit-lsp executable (assumes it's in your PATH)
        filetypes = { "swift", "objective-c", "objective-cpp" },  -- Specify filetypes supported by SourceKit-LSP
        settings = {
          sourcekit = {
            -- Add custom settings here if needed
          },
        },
        on_attach = function(client, bufnr)
          -- Optional: set up keybindings and other settings once LSP is attached
          vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
          vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
        end,
      })
    end,
  },
}
