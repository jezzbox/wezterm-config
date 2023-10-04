local wezterm = require 'wezterm'
local act = wezterm.action
local bindings = {
  {
    key = 'P',
    mods = 'CTRL|SHIFT',
    action = act.ScrollByLine(-2)
  },
  {
    key = 'N',
    mods = 'CTRL|SHIFT',
    action = act.ScrollByLine(2)
  },

  {
    key = 'E',
    mods = 'CTRL|SHIFT',
    action = act.ScrollToBottom()
  },
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
