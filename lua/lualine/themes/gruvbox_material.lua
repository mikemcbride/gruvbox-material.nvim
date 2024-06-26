local colors = require("gruvbox_material.palette").get_base_colors("dark", "hard")

local gruvbox_material = {}

gruvbox_material.normal = {
  a = { bg = colors.blue, fg = colors.bg0 },
  b = { bg = colors.bg2, fg = colors.blue },
  c = { bg = colors.bg1, fg = colors.fg2 },
}

gruvbox_material.insert = {
  a = { bg = colors.aqua, fg = colors.bg0 },
  b = { bg = colors.bg2, fg = colors.aqua },
}

gruvbox_material.command = {
  a = { bg = colors.orange, fg = colors.bg0 },
  b = { bg = colors.bg2, fg = colors.orange },
}

gruvbox_material.visual = {
  a = { bg = colors.purple, fg = colors.bg0 },
  b = { bg = colors.bg2, fg = colors.purple },
}

gruvbox_material.replace = {
  a = { bg = colors.red, fg = colors.bg0 },
  b = { bg = colors.bg2, fg = colors.red },
}

gruvbox_material.terminal = {
  a = {bg = colors.aqua, fg = colors.bg0 },
  b = {bg = colors.bg2, fg=colors.aqua },
}

gruvbox_material.inactive = {
  a = { bg = colors.bg2, fg = colors.blue },
  b = { bg = colors.bg2, fg = colors.bg1, gui = "bold" },
  c = { bg = colors.bg2, fg = colors.bg1 },
}

return gruvbox_material

