local colors = require("gruvbox_material.palette").get_base_colors("dark", "hard")

local gruvbox_material = {}

gruvbox_material.normal = {
  a = { bg = colors.blue, fg = colors.fg0 },
  b = { bg = colors.bg1, fg = colors.blue },
  c = { bg = colors.bg2, fg = colors.fg1 },
}

gruvbox_material.insert = {
  a = { bg = colors.green, fg = colors.bg0 },
  b = { bg = colors.bg1, fg = colors.green },
}

gruvbox_material.command = {
  a = { bg = colors.yellow, fg = colors.bg0 },
  b = { bg = colors.bg1, fg = colors.yellow },
}

gruvbox_material.visual = {
  a = { bg = colors.magenta, fg = colors.bg0 },
  b = { bg = colors.bg1, fg = colors.magenta },
}

gruvbox_material.replace = {
  a = { bg = colors.red, fg = colors.bg0 },
  b = { bg = colors.bg1, fg = colors.red },
}

gruvbox_material.terminal = {
  a = {bg = colors.green1, fg = colors.bg0 },
  b = {bg = colors.bg1, fg=colors.green1 },
}

gruvbox_material.inactive = {
  a = { bg = colors.bg2, fg = colors.blue },
  b = { bg = colors.bg2, fg = colors.bg1, gui = "bold" },
  c = { bg = colors.bg2, fg = colors.bg1 },
}

return gruvbox_material

