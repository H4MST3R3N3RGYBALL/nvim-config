-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Delete the default lazygit and rebind to neogit
vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>gG")
vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>")

vim.keymap.set("n", "<localleader>ip", function()
    local venv = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX")
    if venv ~= nil then
        -- in the form of /home/benlubas/.virtualenvs/VENV_NAME
        venv = string.match(venv, "/.+/(.+)")
        vim.cmd(("MoltenInit %s"):format(venv))
    else
        vim.cmd("MoltenInit python3.12")
    end
end, { desc = "Initialize Molten for python3", silent = true })

-- Keymaps for Xcodebuild
-- XcodeBuild Options
local wk = require("which-key")
wk.register({
    ["<leader>m"] = { name = "XcodeBuild" },
})

vim.keymap.set("n", "<leader>mo", "<cmd>XcodebuildShowBuildSettings<cr>", { desc = "Xcode: Show Build Settings" })
vim.keymap.set("n", "<leader>ml", "<cmd>XcodebuildShowLog<cr>", { desc = "Xcode: Show Build Log" })
vim.keymap.set("n", "<leader>mq", "<cmd>XcodebuildQuickfixLine<cr>", { desc = "Xcode: Jump to Error" })
vim.keymap.set("n", "<leader>me", "<cmd>XcodebuildToggleErrors<cr>", { desc = "Xcode: Toggle Errors" })
vim.keymap.set("n", "<leader>mw", "<cmd>XcodebuildToggleIssues<cr>", { desc = "Xcode: Toggle Issues" })


vim.keymap.set("n", "<leader>mm", "<cmd>XcodebuildPicker<cr>", { desc = "Xcode: Show Build Picker" })
vim.keymap.set("n", "<leader>ms", "<cmd>XcodebuildSetup<cr>", { desc = "Xcode: Setup Project" })
vim.keymap.set("n", "<leader>mb", "<cmd>XcodebuildBuild<cr>", { desc = "Xcode: Build" })
vim.keymap.set("n", "<leader>mc", "<cmd>XcodebuildCleanBuild<cr>", { desc = "Xcode: Clean Build" })
vim.keymap.set("n", "<leader>mtb", "<cmd>XcodebuildBuildForTesting<cr>", { desc = "Xcode: Build for Testing" })
vim.keymap.set("n", "<leader>mr", "<cmd>XcodebuildRun<cr>", { desc = "Xcode: Run" })
vim.keymap.set("n", "<leader>mx", "<cmd>XcodebuildOpenInXcode<cr>", { desc = "Xcode: Open in Xcode" })
vim.keymap.set("n", "<leader>mp", "<cmd>XcodebuildProjectManager<cr>", { desc = "Xcode: Project Manager" })
vim.keymap.set("n", "<leader>ma", "<cmd>XcodebuildAssetsManager<cr>", { desc = "Xcode: Assets Manager" })
vim.keymap.set("n", "<leader>mn", "<cmd>XcodebuildCreateNewFile<cr>", { desc = "Xcode: Create New File" })
vim.keymap.set("n", "<leader>mtt", "<cmd>XcodebuildTest<cr>", { desc = "Xcode: Run Tests" })
vim.keymap.set("n", "<leader>mtc", "<cmd>XcodebuildToggleCodeCoverage<cr>", { desc = "Xcode: Toggle Code Coverage" })
vim.keymap.set("n", "<leader>mth", "<cmd>XcodebuildShowCodeCoverageReport<cr>", { desc = "Xcode: Show Coverage Report" })
vim.keymap.set("n", "<leader>mtT", "<cmd>XcodebuildTestExplorerToggle<cr>", { desc = "Xcode: Toggle Test Explorer" })
vim.keymap.set("n", "<leader>mtC", "<cmd>XcodebuildTestExplorerClear<cr>", { desc = "Xcode: Clear Test Explorer" })
vim.keymap.set("n", "<leader>md", "<cmd>XcodebuildSelectDevice<cr>", { desc = "Xcode: Select Device" })
vim.keymap.set("n", "<leader>ms", "<cmd>XcodebuildSelectScheme<cr>", { desc = "Xcode: Select Scheme" })
vim.keymap.set("n", "<leader>mts", "<cmd>XcodebuildSelectTestPlan<cr>", { desc = "Xcode: Select Test Plan" })
vim.keymap.set("n", "<leader>mB", "<cmd>XcodebuildBootSimulator<cr>", { desc = "Xcode: Boot Simulator" })
