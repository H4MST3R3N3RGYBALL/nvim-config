return {
  "mawkler/demicolon.nvim",
  dependencies = {
    {
      "jinh0/eyeliner.nvim",
      keys = { "t", "f", "T", "F" },
      opts = {
        highlight_on_key = true,
        dim = true,
        default_keymaps = false,
      },
    },
  },
  keys = { ";", ",", "t", "f", "T", "F", "]", "[", "]d", "[d" },
  config = function()
    require("demicolon").setup({ keymaps = { horizontal_motions = false } })
    function eyeliner_jump(key)
      return function()
        require("eyeliner").highlight({
          forward = vim.list_contains({ "t", "f" }, key),
        })
        require("demicolon.jump").horizontal_jump(key)

        local nxo = { "n", "x", "o" }
        vim.keymap.set(nxo, "f", eyeliner_jump("f"), { expr = true })
        vim.keymap.set(nxo, "F", eyeliner_jump("F"), { expr = true })
        vim.keymap.set(nxo, "t", eyeliner_jump("t"), { expr = true })
        vim.keymap.set(nxo, "T", eyeliner_jump("T"), { expr = true })
      end
    end
  end,
}
