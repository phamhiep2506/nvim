return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<C-n>", "<CMD>NvimTreeToggle<CR>" },
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 40,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
      diagnostics = {
        enable = true,
      },
      update_focused_file = {
        enable = true,
      },
    })

    vim.fn.sign_define("NvimTreeDiagnosticErrorIcon", { texthl = "red" })
    vim.fn.sign_define("NvimTreeDiagnosticWarnIcon", { texthl = "yellow" })
    vim.fn.sign_define("NvimTreeDiagnosticInfoIcon", { texthl = "blue" })
    vim.fn.sign_define("NvimTreeDiagnosticHintIcon", { texthl = "green" })
  end,
}
