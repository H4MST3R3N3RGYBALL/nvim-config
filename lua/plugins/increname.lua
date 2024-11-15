return {
    "smjonas/inc-rename.nvim",
    name = "inc-rename",
    opts = {},
    keys = {
        {
            "<Space>n",
            ":IncRename ",
            desc = "Rename all references of the symbol under the cursor, using the LSP.",
        },
    },
}
