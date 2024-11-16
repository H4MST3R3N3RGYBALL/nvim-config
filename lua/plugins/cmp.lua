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
        },
        opts = function(_, opts)
            local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0 and
                    vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
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
            }
            opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    elseif has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            })
            return opts
        end
    }
}
