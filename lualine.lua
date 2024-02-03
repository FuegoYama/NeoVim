local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_nord = require("lualine.themes.nord")

-- define new colors

local new_colors = {
  red = "#6E0A0F",
  blue = "#191E46",
  yellow = "#A56C14",
  green = "#125613",
  white = "#ECF3F8",
}

-- applying new colors

lualine_nord.normal.a = {
    bg = new_colors.red,
    fg = new_colors.white
  }

lualine_nord.insert.a = {
    bg = new_colors.yellow,
    fg = new_colors.white
}

lualine_nord.visual.a = {
    bg = new_colors.blue,
    fg = new_colors.white
}

lualine_nord.command = {
  a = {
    bg = new_colors.green,
    fg = new_colors.white
  },
}

lualine.setup({
  options = {
    theme = lualine_nord,
  },
})
