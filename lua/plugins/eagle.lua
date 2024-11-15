vim.o.mousemoveevent = true

return {
    "soulis-1256/eagle.nvim",
    event = "LspAttach",
    opts = {
        -- Configuration goes here, see
        -- https://github.com/soulis-1256/eagle.nvim/blob/main/lua/eagle/config.lua.
        -- Example:
        border = "rounded",
    },
}
