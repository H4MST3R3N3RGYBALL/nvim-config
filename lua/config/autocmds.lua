-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function(opts)
        if vim.bo[opts.buf].omnifunc == "" then
            vim.bo[opts.buf].omnifunc = "syntaxcomplete#Complete"
        end
    end,
})
