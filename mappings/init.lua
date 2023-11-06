local wezterm = require("wezterm")
local act = wezterm.action

local mappings = {}

-- Toggle FullScreen
table.insert(mappings, {
  key = ".",
  mods = "ALT",
  action = act.ToggleFullScreen,
})

-- Increase Font Size
table.insert(mappings, {
  key = "=",
  mods = "CTRL",
  action = act.IncreaseFontSize,
})

-- Decrease Font Size
table.insert(mappings, {
  key = "-",
  mods = "CTRL",
  action = act.DecreaseFontSize,
})

-- Increase Font Size
table.insert(mappings, {
  key = "=",
  mods = "CTRL",
  action = act.IncreaseFontSize,
})

-- Decrease Font Size
table.insert(mappings, {
  key = "-",
  mods = "CTRL",
  action = act.DecreaseFontSize,
})

return mappings
