-- gruvbox palette
local M = {}

M.colors = {
  dark0_hard = "#1d2021",
  dark0 = "#282828",
  dark0_soft = "#32302f",
  dark1 = "#3c3836",
  dark2 = "#504945",
  dark3 = "#665c54",
  dark4 = "#7c6f64",
  light0_hard = "#f9f5d7",
  light0 = "#fbf1c7",
  light0_soft = "#f2e5bc",
  light1 = "#ddc7a1",
  light2 = "#d5c4a1",
  light3 = "#bdae93",
  light4 = "#a89984",
  bright_red = "#ea6962",
  bright_green = "#a9b665",
  bright_yellow = "#d8a657",
  bright_blue = "#7daea3",
  bright_purple = "#d3869b",
  bright_aqua = "#89b482",
  bright_orange = "#e78a4e",
  neutral_red = "#cc241d",
  neutral_green = "#98971a",
  neutral_yellow = "#d79921",
  neutral_blue = "#458588",
  neutral_purple = "#b16286",
  neutral_aqua = "#689d6a",
  neutral_orange = "#d65d0e",
  faded_red = "#c14a4a",
  faded_green = "#6c782e",
  faded_yellow = "#b47109",
  faded_blue = "#45707a",
  faded_purple = "#945e80",
  faded_aqua = "#47a5da",
  faded_orange = "#c35e0a",
  gray = "#928374",
}

M.get_base_colors = function(bg, contrast)
  local config = require("gruvbox_material").config
  local p = M.colors

  for color, hex in pairs(config.palette_overrides) do
    p[color] = hex
  end

  if bg == nil then
    bg = vim.o.background
  end

  local colors = {
    dark = {
      bg0 = p.dark0,
      bg1 = p.dark1,
      bg2 = p.dark2,
      bg3 = p.dark3,
      bg4 = p.dark4,
      fg0 = p.light0,
      fg1 = p.light1,
      fg2 = p.light2,
      fg3 = p.light3,
      fg4 = p.light4,
      red = p.bright_red,
      green = p.bright_green,
      yellow = p.bright_yellow,
      blue = p.bright_blue,
      purple = p.bright_purple,
      aqua = p.bright_aqua,
      orange = p.bright_orange,
      neutral_red = p.bright_red,
      neutral_green = p.bright_green,
      neutral_yellow = p.bright_yellow,
      neutral_blue = p.bright_blue,
      neutral_purple = p.bright_purple,
      neutral_aqua = p.bright_aqua,
      gray = p.gray,
    },
    light = {
      bg0 = p.light0,
      bg1 = p.light1,
      bg2 = p.light2,
      bg3 = p.light3,
      bg4 = p.light4,
      fg0 = p.dark0,
      fg1 = p.dark1,
      fg2 = p.dark2,
      fg3 = p.dark3,
      fg4 = p.dark4,
      red = p.faded_red,
      green = p.faded_green,
      yellow = p.faded_yellow,
      blue = p.faded_blue,
      purple = p.faded_purple,
      aqua = p.faded_aqua,
      orange = p.faded_orange,
      neutral_red = p.neutral_red,
      neutral_green = p.neutral_green,
      neutral_yellow = p.neutral_yellow,
      neutral_blue = p.neutral_blue,
      neutral_purple = p.neutral_purple,
      neutral_aqua = p.neutral_aqua,
      gray = p.gray,
    },
  }

  if contrast ~= nil and contrast ~= "" then
    colors[bg].bg0 = p[bg .. string.format("0_%s", contrast)]
  end

  return colors[bg]
end

return M
