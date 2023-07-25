local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end
config.font = wezterm.font 'Fira Code'
config.font_size = 16
config.color_scheme = 'Belafonte Night'
config.hide_tab_bar_if_only_one_tab = false
config.window_padding = {
  left = 20,
  right = 20,
  top = 20,
  bottom = 20,
}
config.window_background_opacity = 0.95
config.window_close_confirmation = "NeverPrompt"
config.keys = {
  {
    key = 'B',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Left'
  },
  {
    key = 'F',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Right'
  },
  {
    key = 'N',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Down'
  },
  {
    key = 'P',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Up'
  },
  {
    key = 'B',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.AdjustPaneSize {'Left', 1}
  },
  {
    key = 'F',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.AdjustPaneSize {'Right', 1}
  },
  {
    key = 'N',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.AdjustPaneSize {'Down', 1}
  },
  {
    key = 'P',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.AdjustPaneSize {'Up', 1}
  },
  {
    key = 'f',
    mods = 'SUPER',
    action = wezterm.action.SplitHorizontal {domain = 'CurrentPaneDomain'}
  },
  {
    key = 'n',
    mods = 'SUPER',
    action = wezterm.action.SplitVertical {domain = 'CurrentPaneDomain'}
  },
}
return config
