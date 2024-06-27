return {
  "hadronized/hop.nvim",
  keys = {
    { "<leader><leader>f", "<CMD>HopWord<CR>" },
    { "<leader><leader>s", "<CMD>HopChar1<CR>" },
    { "<leader><leader>/", "<CMD>HopPattern<CR>" },
    { "<leader><leader>j", "<CMD>HopLineStartAC<CR>" },
    { "<leader><leader>k", "<CMD>HopLineStartBC<CR>" },
  },
  config = function()
    require("hop").setup()
  end,
}
