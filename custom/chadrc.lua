local M = {}

M.ui = {
    theme = "gruvchad",
    transparency = true,
    tabufline = {
      lazyload = false,
    }
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
