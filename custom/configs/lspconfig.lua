local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
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
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
