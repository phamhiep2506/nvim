return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
      diagnostics = {
        enable = true,
      },
    })
    vim.keymap.set("n", "<C-n>", "<CMD>NvimTreeToggle<CR>")

    vim.fn.sign_define("NvimTreeDiagnosticErrorIcon", { texthl = "red" })
    vim.fn.sign_define("NvimTreeDiagnosticWarnIcon", { texthl = "yellow" })
    vim.fn.sign_define("NvimTreeDiagnosticInfoIcon", { texthl = "blue" })
    vim.fn.sign_define("NvimTreeDiagnosticHintIcon", { texthl = "green" })
  end,
}
