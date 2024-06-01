return {
  "puremourning/vimspector",
  config = function()
    vim.keymap.set("n", "<leader>db", "<CMD>call vimspector#ToggleBreakpoint()<CR>")
    vim.keymap.set("n", "<leader>dc", "<CMD>call vimspector#Continue()<CR>")
    vim.keymap.set("n", "<leader>ds", "<CMD>call vimspector#Stop()<CR>")
    vim.keymap.set("n", "<leader>dr", "<CMD>call vimspector#Restart()<CR>")
    vim.keymap.set("n", "<leader>dx", "<CMD>call vimspector#Reset()<CR>")
    vim.keymap.set("n", "<leader>di", "<CMD>call vimspector#StepInto()<CR>")
    vim.keymap.set("n", "<leader>do", "<CMD>call vimspector#StepOut()<CR>")
    vim.keymap.set("n", "<leader>dO", "<CMD>call vimspector#StepOver()<CR>")
    vim.keymap.set("n", "<leader>de", "<CMD>call vimspector#ShowEvalBalloon(0)<CR>")

    vim.api.nvim_set_hl(0, "VimspectorBP", { fg = "red", bg = "none" })
    vim.api.nvim_set_hl(0, "VimspectorPC", { fg = "black", bg = "yellow" })
    vim.fn.sign_define("vimspectorBP", { text = "", texthl = "VimspectorBP" })
    vim.fn.sign_define("vimspectorPC", { text = "", texthl = "yellow", linehl = "VimspectorPC" })
    vim.fn.sign_define("vimspectorPCBP", { text = "", texthl = "yellow", linehl = "VimspectorPC" })
  end,
}
