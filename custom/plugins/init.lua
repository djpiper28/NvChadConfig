return {
   ["wakatime/vim-wakatime"] = {},
   ["andweeb/presence.nvim"] = {},
   ["akinsho/bufferline.nvim"] = {
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
   ["sbdchd/neoformat"] = {},
}
