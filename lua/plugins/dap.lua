return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "jay-babu/mason-nvim-dap.nvim"
  },
  config = function()
    require("mason-nvim-dap").setup({
      ensure_installed = {"coreclr"},
      handlers = {
        function(config)
          require("mason-nvim-dap").default_setup(config)
        end,
      }
    })

    vim.keymap.set("n", "<leader>db", "<CMD>lua require('dap').toggle_breakpoint()<CR>")
    vim.keymap.set("n", "<leader>dc", "<CMD>lua require('dap').continue()<CR>")
    vim.keymap.set("n", "<leader>dO", "<CMD>lua require('dap').step_over()<CR>")
    vim.keymap.set("n", "<leader>di", "<CMD>lua require('dap').step_into()<CR>")
    vim.keymap.set("n", "<leader>do", "<CMD>lua require('dap').step_out()<CR>")
    vim.keymap.set("n", "<leader>dr", "<CMD>lua require('dap').restart()<CR>")
    vim.keymap.set("n", "<leader>ds", "<CMD>lua require('dap').disconnect()<CR>")
  end,
}
