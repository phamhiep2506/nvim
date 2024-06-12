return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        cs = { "csharpier" },
      },
      formatters = {
        csharpier = {
          command = vim.fn.stdpath("data") .. "/mason/bin/dotnet-csharpier",
        },
      },
    })

    vim.keymap.set("n", "<leader>fm", "<CMD>lua require('conform').format()<CR>")
  end,
}
