return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local colors = {
      bg = "#1d2021",
      fg = "#ebdbb2",
      yellow = "#d79921",
      aqua = "#689d6a",
      green = "#98971a",
      orange = "#d65d0e",
      purple = "#b16286",
      blue = "#458588",
      red = "#cc241d",
    }

    local config = {
      options = {
        component_separators = "",
        section_separators = "",
        theme = {
          normal = { c = { bg = colors.bg, fg = colors.fg } },
          inactive = { c = { bg = colors.bg, fg = colors.fg } },
        },
        ignore_focus = { "NvimTree" },
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_y = {},
        lualine_z = {},
        lualine_x = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_y = {},
        lualine_z = {},
        lualine_x = {},
      },
    }

    local function ins_left(component)
      table.insert(config.sections.lualine_c, component)
    end

    local function ins_right(component)
      table.insert(config.sections.lualine_x, component)
    end

    ins_left({
      function()
        return "▊"
      end,
      color = { fg = colors.blue },
      padding = { left = 0, right = 1 },
    })

    ins_left({
      function()
        return ""
      end,
      color = function()
        local mode_color = {
          n = colors.red,
          i = colors.green,
          v = colors.blue,
          [""] = colors.blue,
          V = colors.blue,
          c = colors.purple,
          no = colors.red,
          s = colors.orange,
          S = colors.orange,
          [""] = colors.orange,
          ic = colors.yellow,
          R = colors.purple,
          Rv = colors.purple,
          cv = colors.red,
          ce = colors.red,
          r = colors.auqa,
          rm = colors.auqa,
          ["r?"] = colors.auqa,
          ["!"] = colors.red,
          t = colors.red,
        }
        return { fg = mode_color[vim.fn.mode()] }
      end,
      padding = { right = 1 },
    })

    ins_left({
      "filename",
      color = { fg = colors.purple, gui = "bold" },
    })

    ins_left({
      "diagnostics",
      sources = { "nvim_diagnostic" },
      symbols = { error = " ", warn = " ", hint = " ", info = " " },
    })

    ins_right({
      "branch",
      icon = "",
      color = { fg = colors.red, gui = "bold" },
    })

    ins_right({
      "diff",
      symbols = { added = " ", modified = " ", removed = " " },
    })

    ins_right({ "filetype" })

    ins_right({ "location" })

    ins_right({
      "progress",
      color = { fg = colors.fg, gui = "bold" },
    })

    ins_right({
      function()
        return "▊"
      end,
      color = { fg = colors.blue },
      padding = { left = 0 },
    })

    require("lualine").setup(config)
  end,
}
