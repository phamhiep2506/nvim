return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>ff", "<CMD>Telescope find_files<CR>" },
    { "<leader>fg", "<CMD>Telescope live_grep<CR>" },
    { "<leader>fb", "<CMD>Telescope buffers<CR>" },
    { "<leader>fc", "<CMD>Telescope commands<CR>" },
  },
  config = function()
    require("telescope").setup()
  end,
}
