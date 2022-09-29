local M = {}

M.ui = {
    theme = "gruvchad",
    transparency = true,
}

M.plugins = {
    override = {
        ["NvChad/ui"] = {
            statusline = {
                separator_style = {
                    left = "",
                    right = "",
                },
            },
            tabufline = {
                enabled = false,
            },
        },
        ["goolord/alpha-nvim"] = {
            disable = false,
        },
        ["neovim/nvim-lspconfig"] = {
            config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
            end,
        },
    },
    user = {
        ["wakatime/vim-wakatime"] = {},
        ["andweeb/presence.nvim"] = {},
        ["BurntSushi/ripgrep"] = {},
        ["sbdchd/neoformat"] = {},
        ["akinsho/bufferline.nvim"] = {
            after = "ui",
            config = function()
            require('bufferline').setup {
                options = {
                    mode = "tabs",
                    enforce_regular_tabs = true,
                    always_show_bufferline = true,
                }
            }
            end,
        },
        ["williamboman/mason.nvim"] = {},
        ["lervag/vimtex"] = {},
        ["github.com/salkin-mada/openscad.nvim"] = {},
    },
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
