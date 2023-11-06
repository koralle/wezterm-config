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

-- Colorscheme
config.color_scheme = "tokyonight_storm"

-- Font
config.font = wezterm.font("Cica")
config.font_size = 14.0
config.use_ime = true

-- Window Background Opacity
config.window_background_opacity = 0.8

-- Adjust Window Size when changing font size
config.adjust_window_size_when_changing_font_size = false

-- Key Mappings
config.keys = require("mappings")

return config
