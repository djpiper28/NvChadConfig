-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "gruvchad",
  tabufline = {
    enabled = false,      
    lazyload = false,
    override = {},
  },
}

M.plugins = {
  user = require "custom.plugins",
  status = {
    dashboard = true,
    alpha = true,
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },
}

return M