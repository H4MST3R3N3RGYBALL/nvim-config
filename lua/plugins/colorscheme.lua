-- Use catppuccin colorscheme mochaitto

-- return {
--   {
--     "catppuccin/nvim",
--     priority = 1000,
--     opts = {
--       flavour = "macchiato",
--       custom_highlights = {
--         -- ColorColumn = { ctermbg = "DarkCyan", bg = "#292B40" },
--         TabLineSel = { fg = "#C6A0F7", bg = "#383C54" },
--       },
--       integrations = {
--         aerial = true,
--         alpha = true,
--         barbar = true,
--         beacon = true,
--         coc_nvim = true,
--         colorful_winsep = { enabled = true, color = "red" },
--         dashboard = true,
--         diffview = true,
--         dropbar = { enabled = true, color_mode = false },
--         fern = true,
--         fidget = true,
--         flash = true,
--         fzf = true,
--         gitsigns = true,
--         grug_far = true,
--         harpoon = true,
--         headlines = true,
--         hop = true,
--         leap = true,
--         lightspeed = true,
--         lsp_saga = true,
--         mason = true,
--         mini = { enabled = true },
--         neotree = true,
--         neogit = true,
--         neotest = true,
--         noice = true,
--         notifier = true,
--         cmp = true,
--         dap = true,
--         dap_ui = true,
--         notify = true,
--         nvim_surround = true,
--         nvimtree = true,
--         treesitter_context = true,
--         treesitter = true,
--         ts_rainbow2 = true,
--         ts_rainbow = true,
--         ufo = true,
--         window_picker = true,
--         octo = true,
--         overseer = true,
--         pounce = true,
--         rainbow_delimiters = true,
--         symbols_outline = true,
--         telekasten = true,
--         telescope = { enabled = true },
--         lsp_trouble = true,
--         dadbod_ui = true,
--         gitgutter = true,
--         illuminate = { enabled = true, lsp = true },
--         sandwich = true,
--         vim_sneak = true,
--         vimwiki = true,
--         which_key = true,
--       },
--     },
--     lazy = false,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--     },
--   },
-- }

-- The below is for onedark
return {
  -- Add onedarkpro plugin
  { "olimorris/onedarkpro.nvim" },

  -- Configure LazyVim to use onedarkpro colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark_vivid", -- Correctly set colorscheme here
    },
  },
}
