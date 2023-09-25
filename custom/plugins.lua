---@type NvPluginSpec[]
local plugins = {
    {"wakatime/vim-wakatime", lazy = false, },
    {"andweeb/presence.nvim", lazy = false, },
    {"sbdchd/neoformat", lazy = false, },
    {"akinsho/bufferline.nvim", opts = {
         enforce_regular_tabs = true,
         always_show_bufferline = true,
      },
      lazy = false,
    },
    {"lervag/vimtex", lazy = false, },
    {"salkin-mada/openscad.nvim", lazy = false, },
}

return plugins
