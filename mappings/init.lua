local wezterm = require("wezterm")
local act = wezterm.action

local mappings = {}

-- Activate Quick Select Mode
table.insert(mappings, {
  key = "l",
  mods = "ALT",
  action = act.ShowLauncherArgs({
    flags = "FUZZY|WORKSPACES",
  }),
})

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

-- Split Pane Horizontally
table.insert(mappings, {
  key = "|",
  mods = "LEADER|SHIFT",
  action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
})

-- Split Pane Vertically
table.insert(mappings, {
  key = "-",
  mods = "LEADER",
  action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
})

-- Select Pane
table.insert(mappings, {
  key = "p",
  mods = "LEADER",
  action = act.PaneSelect,
})

-- Close Current Pane
table.insert(mappings, {
  key = "w",
  mods = "LEADER",
  action = act.CloseCurrentPane({ confirm = true }),
})

-- Spawn a New Session as a Workspace
table.insert(mappings, {
  key = "w",
  mods = "ALT",
  action = act.PromptInputLine({
    description = wezterm.format({
      { Attribute = { Intensity = "Bold" } },
      { Foreground = { AnsiColor = "Fuchsia" } },
      { Text = "Enter name for new workspace:" },
    }),
    action = wezterm.action_callback(function(window, pane, line)
      if line then
        window:perform_action(act.SwitchToWorkspace({ name = line }), pane)
      end
    end),
  }),
})

return mappings
