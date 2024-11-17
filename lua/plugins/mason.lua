return {
  -- Mason installation and configuration
  {
    "williamboman/mason.nvim",
    config = function()
      -- Setup Mason
      require("mason").setup({
        -- Optional: Customize Mason UI or other settings
        ui = {
          border = "rounded", -- Can use 'none', 'single', 'double', 'rounded', 'solid'
        },
      })

      -- Setup mason-lspconfig to ensure specific LSP servers are installed
      require("mason-lspconfig").setup({
        -- List of LSP servers to ensure are installed via Mason
        ensure_installed = {
          "basedpyright",            -- Python (optional)
          "rust_analyzer",           -- Rust (optional)
          "arduino_language_server", -- Arduino (optional)
          "asm_lsp",                 -- Assembly (optional)
          "bashls",                  -- Bash (optional)
          "ast_grep",                -- Code search (optional)
          "clangd",                  -- C/C++ (optional)
          "cmake",                   -- CMake (optional)
          "dockerls",                -- Docker (optional)
          "gopls",                   -- Go (optional)
          "java_language_server",    -- Java (optional)
          "jsonls",                  -- JSON (optional)
          "ltex",                    -- LaTeX (optional)
          "lua_ls",                  -- Lua (optional)
          "matlab_ls",               -- MATLAB (optional)
          "powershell_es",           -- PowerShell (optional)
          "bufls",                   -- Protobuf (optional)
          "hdl_checker",             -- SystemVerilog (optional)
          "lemminx",                 -- XML (optional)
          "yamlls",                  -- YAML (optional)
          "harper_ls"

        },
        -- Optional: Enable automatic installation of LSP servers when they're needed
        automatic_installation = false,
      })
    end,
  },
}
