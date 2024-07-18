local M = {}

M.neotest = {
  n = {
    ["<leader>lt"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%')) <cr>", "Run tests" },
    ["<leader>ly"] = { "<cmd>:Neoformat <cr>", "Run Formatter" },
    ["<leader>lo"] = { "<cmd>lua require('neotest').output_panel.open() <cr>", "Test output" }
  },
}

return M
