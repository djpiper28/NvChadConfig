--@type NvPluginSpec[]
local plugins = {
  { "wakatime/vim-wakatime", lazy = false },
  { "andweeb/presence.nvim", lazy = false },
  { "sbdchd/neoformat", lazy = false },
  { "akinsho/bufferline.nvim", opts = {}, lazy = false },
  { "lervag/vimtex", lazy = false },
  { "salkin-mada/openscad.nvim", lazy = false },
  { "github/copilot.vim", lazy = false },
  { "williamboman/mason.nvim", lazy = false },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = true,
      ensure_installed = {
        "bashls",
        "clangd",
        "cmake",
        "csharp_ls",
        "cssls",
        "custom_elements_ls",
        "docker_compose_language_service",
        "dockerls",
        "eslint",
        "gopls",
        "gradle_ls",
        "helm_ls",
        "html",
        "jsonls",
        "ltex",
        "lua_ls",
        "rust_analyzer",
        "sqlls",
        "tailwindcss",
        "tsserver",
        "vimls",
        "vuels",
        "yamlls",
      },
    },
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-neotest/neotest-jest",
      "nvim-neotest/neotest-go",
      "marilari88/neotest-vitest",
      "nvim-neotest/neotest-python",
      "rouge8/neotest-rust",
      "Issafalcon/neotest-dotnet",
      "weilbith/neotest-gradle",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- "nvim-neotest/neotest-vim-test",
    },
    lazy = true,
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-jest"),
          require("neotest-go"),
          require("neotest-vitest"),
          require("neotest-python"),
          require("neotest-rust"),
          require("neotest-dotnet"),
          require("neotest-gradle"),
          -- require("neotest-vim-test"),
        },
      })
    end,
  },
  -- {
  --   "mfussenegger/nvim-dap",
  --   lazy = false,
  --   config = function()
  --     require "custom.configs.dap"
  --   end,
  -- },
  -- {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}, },
}

return plugins
