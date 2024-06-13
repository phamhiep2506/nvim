return {
  "echasnovski/mini.indentscope",
  config = function()
    require("mini.indentscope").setup({
      symbol = "▏",
      options = {
        try_as_border = true,
      },
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "lazy",
          "mason",
          "NvimTree",
          "toggleterm",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      }),
    })
  end,
}
