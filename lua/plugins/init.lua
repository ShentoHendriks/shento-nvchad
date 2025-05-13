return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  { -- syntax-highlights + indents + more. Visit GitHub for available names.
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "javascript",
        "html",
        "css",
        "scss",
        "svelte",
        "graphql",
        "json",
        "typescript",
        "tsx",
        "vue",
        "astro",
      },
    },
  },
  { -- linter, visit github for names
    "mfussenegger/nvim-lint",
    config = function()
      require("lint").linters_by_ft = {
        javascript = {
          "eslint_d",
        },
        typescript = {
          "eslint_d",
        },
        javascriptreact = {
          "eslint_d",
        },
        typescriptreact = {
          "eslint_d",
        },
      }
      require("nvchad.mason").install_all()
    end,
  },
}
