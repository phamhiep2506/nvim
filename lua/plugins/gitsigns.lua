return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()

    vim.keymap.set("n", "]c", "<CMD>Gitsigns next_hunk<CR>")
    vim.keymap.set("n", "[c", "<CMD>Gitsigns prev_hunk<CR>")
    vim.keymap.set("n", "<leader>gp", "<CMD>Gitsigns preview_hunk<CR>")
  end,
}
