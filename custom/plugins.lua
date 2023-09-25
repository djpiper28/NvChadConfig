---@type NvPluginSpec[]
local plugins = {
    {"wakatime/vim-wakatime", lazy = false, },
    {"andweeb/presence.nvim", lazy = false, },
    {"sbdchd/neoformat", lazy = false, },
    {"akinsho/bufferline.nvim", opts = {
      },
      lazy = false,
    },
    {"lervag/vimtex", lazy = false, },
    {"salkin-mada/openscad.nvim", lazy = false, },
    {"github/copilot.vim", lazy = false, }
}

return plugins
