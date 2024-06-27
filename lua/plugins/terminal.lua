return {
  "akinsho/toggleterm.nvim",
  keys = {
    { "<C-\\>", "<CMD>ToggleTerm direction=float<CR>" },
    { "<C-\\>", "<CMD>ToggleTerm direction=float<CR>", mode = "t" },
  },
  config = function()
    require("toggleterm").setup()
  end,
}
