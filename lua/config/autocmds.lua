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


vim.api.nvim_create_autocmd("User", {
    pattern = { "XcodebuildBuildFinished", "XcodebuildTestsFinished" },
    callback = function(event)
        if event.data.cancelled then
            return
        end

        if event.data.success then
            require("trouble").close()
        elseif not event.data.failedCount or event.data.failedCount > 0 then
            if next(vim.fn.getqflist()) then
                require("trouble").open("quickfix")
            else
                require("trouble").close()
            end

            require("trouble").refresh()
        end
    end,
})

vim.api.nvim_create_autocmd("User", {
    pattern = "XcodebuildCoverageToggled",
    callback = function(event)
        local isOn = event.data
        require("gitsigns").toggle_signs(not isOn)
    end,
})
