local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   local servers = {"tsserver", "tailwindcss", "gopls", "prismals", "clangd", "pylsp", "cmake", "rust_analyzer", "jdtls", "marksman", "bashls"}

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end
end

return M
