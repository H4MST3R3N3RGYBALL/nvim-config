return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "wojciech-kulik/xcodebuild.nvim"
    },
    config = function()
        local xcodebuild = require("xcodebuild.integrations.dap")
        -- SAMPLE PATH, change it to your local codelldb path
        local codelldbPath = "~/codelldb/codelldb"

        xcodebuild.setup(codelldbPath)
        vim.keymap.set("n", "<leader>dd", xcodebuild.build_and_debug, { desc = "Xcode: Build & Debug" })
    end,
}
