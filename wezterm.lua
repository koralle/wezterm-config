local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- default workspace
config.default_workspace = "koralle"

-- Tab Bar
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

return config
