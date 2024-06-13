return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    dapui.setup({
      controls = {
        enabled = false,
      },
    })

    vim.keymap.set("n", "<leader>de", "<CMD>lua require('dapui').eval()<CR>")

    vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "red" })
    vim.fn.sign_define("DapStopped", { text = "", texthl = "yellow" })
  end,
}
