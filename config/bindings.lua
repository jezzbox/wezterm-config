local wezterm = require 'wezterm'
local act = wezterm.action
local bindings = {

  {
    key = 'B',
    mods = 'CTRL|SHIFT',
    action = act.ActivatePaneDirection 'Left'
  },
  {
    key = 'F',
    mods = 'CTRL|SHIFT',
    action = act.ActivatePaneDirection 'Right'
  },
  {
    key = 'N',
    mods = 'CTRL|SHIFT',
    action = act.ActivatePaneDirection 'Down'
  },
  {
    key = 'P',
    mods = 'CTRL|SHIFT',
    action = act.ActivatePaneDirection 'Up'
  },
  {
    key = 'B',
    mods = 'CTRL|SHIFT|ALT',
    action = act.AdjustPaneSize {'Left', 1}
  },
  {
    key = 'F',
    mods = 'CTRL|SHIFT|ALT',
    action = act.AdjustPaneSize {'Right', 1}
  },
  {
    key = 'N',
    mods = 'CTRL|SHIFT|ALT',
    action = act.AdjustPaneSize {'Down', 1}
  },
  {
    key = 'P',
    mods = 'CTRL|SHIFT|ALT',
    action = act.AdjustPaneSize {'Up', 1}
  },
  {
    key = 'f',
    mods = 'SUPER',
    action = act.SplitHorizontal {domain = 'CurrentPaneDomain'}
  },
  {
    key = 'n',
    mods = 'SUPER',
    action = act.SplitVertical {domain = 'CurrentPaneDomain'}
  },
}
return bindings
