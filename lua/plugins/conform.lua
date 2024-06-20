return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        cs = { "csharpier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylua" },
      },
      formatters = {
        csharpier = {
          command = vim.fn.stdpath("data") .. "/mason/bin/dotnet-csharpier",
        },
        prettier = {
          command = vim.fn.stdpath("data") .. "/mason/bin/prettier",
        },
        stylua = {
          command = vim.fn.stdpath("data") .. "/mason/bin/stylua",
        },
      },
    })

    vim.keymap.set("n", "<leader>fm", "<CMD>lua require('conform').format()<CR>")
  end,
}
