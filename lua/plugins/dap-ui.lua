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

    vim.api.nvim_set_hl(0, "DapBreakpointIcon", { fg = "#cc241d", bg = "none" })
    vim.api.nvim_set_hl(0, "DapStoppedIcon", { fg = "#d79921", bg = "none" })
    vim.api.nvim_set_hl(0, "DapStoppedLine", { fg = "#1d2021", bg = "#d79921" })
    vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapBreakpointIcon" })
    vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStoppedIcon", linehl = "DapStoppedLine" })
  end,
}
