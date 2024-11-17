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
