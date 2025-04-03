-- This file contains the configuration overrides for specific Neovim plugins.

-- DESACTIVAR SI MALOGRA LA CONFIGURACION DE VER FUNCIONES Y VARIABLES

return {
  -- Change configuration for trouble.nvim
  {
    -- Plugin: trouble.nvim
    -- URL: https://github.com/folke/trouble.nvim
    -- Description: A pretty list for showing diagnostics, references, telescope results, quickfix and location lists.
    "folke/trouble.nvim",
    -- Options to be merged with the parent specification
    opts = { use_diagnostic_signs = true }, -- Use diagnostic signs for trouble.nvim
  },

  -- Add symbols-outline.nvim plugin
  {
    -- Plugin: symbols-outline.nvim
    -- URL: https://github.com/simrat39/symbols-outline.nvim
    -- Description: A tree like view for symbols in Neovim using the Language Server Protocol.
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline", -- Command to open the symbols outline
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } }, -- Keybinding to open the symbols outline
    config = true, -- Use default configuration
  },

  -- Remove inlay hints from default configuration
  {
    -- Plugin: nvim-lspconfig
    -- URL: https://github.com/neovim/nvim-lspconfig
    -- Description: Quickstart configurations for the Neovim LSP client.
    "neovim/nvim-lspconfig",
    events = "VeryLazy", -- Load this plugin on the 'VeryLazy' event
    opts = {
      inlay_hints = { enabled = false }, -- Disable inlay hints
      servers = {
        angularls = {
          -- Configuration for Angular Language Server
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("angular.json", "project.json")(fname) -- Set root directory based on angular.json or project.json
          end,
        },
        intelephense = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("composer.json", ".git")(fname)
          end,
          settings = {
            intelephense = {
              stubs = { "bcmath", "bz2", "Core", "curl", "date", "dom", "fileinfo", "filter", "gd", "gettext", "hash", "iconv", "json", "libxml", "mbstring", "openssl", "pcre", "PDO", "pdo_mysql", "pdo_sqlite", "pgsql", "Phar", "readline", "Reflection", "session", "SimpleXML", "sodium", "SPL", "sqlite3", "standard", "tokenizer", "xml", "xdebug", "xmlreader", "xmlwriter", "yaml", "zip", "zlib" },
              files = {
                maxSize = 5000000, -- 5MB máximo por archivo
              },
            },
          },
        },
  
        -- 🔹 Configuración para Python (pyright)
        pyright = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("pyproject.toml", "setup.py", "requirements.txt", ".git")(fname)
          end,
        },
      },
    },
  },
}
