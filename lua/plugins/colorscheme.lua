return {
  -- Add onedarkpro plugin
  { "olimorris/onedarkpro.nvim" },

  -- Configure LazyVim to use onedarkpro colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark", -- Correctly set colorscheme here
    },
  },
}
