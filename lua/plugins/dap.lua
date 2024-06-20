return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    local dapJsonFile = vim.fn.getcwd() .. "/.dap.json"

    if vim.fn.filereadable(dapJsonFile) == 1 then
      local dapJsonDecode = vim.json.decode(io.open(dapJsonFile, "r"):read("a"))

      -- C#
      dap.adapters.coreclr = {
        type = "executable",
        command = vim.fn.stdpath("data") .. "/mason/bin/netcoredbg",
        args = { "--interpreter=vscode" },
      }

      dap.configurations.cs = {
        {
          type = "coreclr",
          name = "launch - netcoredbg",
          request = "launch",
          program = function()
            vim.cmd("!dotnet build")
            return dapJsonDecode.program
          end,
          cwd = dapJsonDecode.cwd,
          env = dapJsonDecode.env,
        },
      }
    end

    vim.keymap.set("n", "<leader>db", "<CMD>lua require('dap').toggle_breakpoint()<CR>")
    vim.keymap.set("n", "<leader>dc", "<CMD>lua require('dap').continue()<CR>")
    vim.keymap.set("n", "<leader>dO", "<CMD>lua require('dap').step_over()<CR>")
    vim.keymap.set("n", "<leader>di", "<CMD>lua require('dap').step_into()<CR>")
    vim.keymap.set("n", "<leader>do", "<CMD>lua require('dap').step_out()<CR>")
    vim.keymap.set("n", "<leader>dr", "<CMD>lua require('dap').restart()<CR>")
    vim.keymap.set("n", "<leader>ds", "<CMD>lua require('dap').disconnect()<CR>")
  end,
}
