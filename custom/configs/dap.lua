local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  -- This, must be installed on a per platform basis
  -- https://github.com/Samsung/netcoredbg
  command = '/usr/local/bin/netcoredbg/netcoredbg',
  args = {'--interpreter=vscode'}
}

-- The C# debugger assumes you are in the folder that has the target's bin by default
dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}
