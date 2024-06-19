return {
  "nvimdev/indentmini.nvim",
  config = function()
    require("indentmini").setup({
      char = "▏",
    })
    vim.api.nvim_set_hl(0, "IndentLine", { fg = "#282828" })
    vim.api.nvim_set_hl(0, "IndentLineCurrent", { fg = "#504945" })
  end,
}
