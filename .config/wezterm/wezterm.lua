local wezterm = require 'wezterm'
return {
  color_scheme = "zenbones_dark",
  font = wezterm.font('Cascadia Code PL', { weight = "Regular" }),
  font_size = 16.0,

  keys = {
    {
      key = 'b',
      mods = 'CTRL|SUPER|ALT',
      action = wezterm.action.SpawnCommandInNewWindow {
        args = {
          '/bin/sh',
          '-ic',
          'printf "\\033]11;#202040\\007"; exec ssh bastion.inside-box.net',
        },
      },
    },
  },
}
