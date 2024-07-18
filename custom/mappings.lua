local M = {}

M.neotest = {
  n = {
    ["<leader>lt"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%')) <cr>", "Run tests" },
    ["<leader>ly"] = { "<cmd>:Neoformat <cr>", "Run Formatter" },
  },
}

return M
