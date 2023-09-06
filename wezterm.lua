local wezterm = require 'wezterm'
local bindings = require 'bindings'
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end
config.font = wezterm.font 'Fira Code'
config.font_size = 16
config.color_scheme = 'Belafonte Night'
config.hide_tab_bar_if_only_one_tab = false
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}
config.window_frame = {
      active_titlebar_bg = '#090909',
}
config.inactive_pane_hsb = { saturation = 0.7, brightness = 1.0 }
config.window_background_opacity = 0.95
config.window_close_confirmation = "NeverPrompt"
config.keys = bindings
return config
