return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup()
    vim.keymap.set("n", "<C-\\>", "<CMD>ToggleTerm direction=float<CR>")
    vim.keymap.set("t", "<C-\\>", "<CMD>ToggleTerm direction=float<CR>")
  end,
}
