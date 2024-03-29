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
}

return plugins
