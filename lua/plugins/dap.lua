return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "wojciech-kulik/xcodebuild.nvim"
    },
    config = function()
        local xcodebuild = require("xcodebuild.integrations.dap")
        -- SAMPLE PATH, change it to your local codelldb path
        local codelldbPath = "/Documents/tools/codelldb"

        xcodebuild.setup(codelldbPath)
    end,
}
