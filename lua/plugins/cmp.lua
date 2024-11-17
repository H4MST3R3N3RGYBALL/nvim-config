return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "petertriho/cmp-git",
      "tamago324/cmp-zsh",
      "hrsh7th/cmp-emoji",
      "kdheepak/cmp-latex-symbols",
      "chrisgrieser/cmp-nerdfont",
      "zbirenbaum/copilot-cmp",
      "hrsh7th/cmp-omni",
      "hrsh7th/cmp-cmdline",                   -- Add cmdline source
      "hrsh7th/cmp-calc",                      -- Add calc source
      "rcarriga/cmp-dap",                      -- Add DAP source
      "nvim-treesitter/completion-treesitter", -- Add treesitter source
    },
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")
      require("copilot_cmp").setup()

      opts = opts or {}
      opts.formatting = {
        format = function(entry, vim_item)
          vim_item.menu = entry.source.name
          return vim_item
        end,
      }
      opts.sources = {
        { name = "copilot" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "git" },
        { name = "zsh" },
        { name = "emoji" },
        { name = "latex_symbols" },
        { name = "nerdfont" },
        { name = "omni" },
        { name = "calc" },
        { name = "dap" },
        { name = "treesitter" },
      }
      opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
        ["<Up>"] = cmp.mapping.select_prev_item(),
        ["<Down>"] = cmp.mapping.select_next_item(),
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
        ["<CR>"] = cmp.mapping({
          i = function(fallback)
            if cmp.visible() then
              cmp.abort()
            else
              fallback()
            end
          end,
        }),
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        ["<C-e>"] = cmp.mapping({
          i = cmp.mapping.abort(),
          c = cmp.mapping.close(),
        }),
      })

      -- Set up cmdline completion
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "cmdline" },
        },
      })

      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      -- Set up DAP completion
      cmp.setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
        sources = {
          { name = "dap" },
        },
      })

      return opts
    end,
  },
}
