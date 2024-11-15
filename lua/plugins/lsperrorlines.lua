vim.diagnostic.config({
    virtual_text = false,
})

return {
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "LspAttach",
        config = true,
        enabled = false,
    },
    {
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        enabled = true,
        event = "LspAttach",
        config = true,
    },
}
