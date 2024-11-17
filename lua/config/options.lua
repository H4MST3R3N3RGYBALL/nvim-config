-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_python_lsp = "basedpyright"

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function(opts)
    if vim.bo[opts.buf].omnifunc == "" then
      vim.bo[opts.buf].omnifunc = "syntaxcomplete#Complete"
    end
  end,
})
