local wezterm = require 'wezterm'

return {
  font = wezterm.font 'JetBrains Mono',
  font_size = 13.0,

  hide_tab_bar_if_only_one_tab = true,

  window_background_opacity = 0.94,

  default_cursor_style = "BlinkingBar",

  window_padding = {
    left = 16,
    right = 16,
    top = 12,
    bottom = 12,
  },

  colors = {
    background = "#0b0b0c",
    foreground = "#f2efe8",

    cursor_bg = "#d6c3a5",
    cursor_fg = "#0b0b0c",

    selection_bg = "#2a2a2d",
    selection_fg = "#f2efe8",

    ansi = {
      "#0b0b0c",
      "#b85c5c",
      "#8f9f8f",
      "#d6c3a5",
      "#9aa7b0",
      "#b4a7b9",
      "#8fa5a5",
      "#f2efe8",
    },

    brights = {
      "#4a4a4d",
      "#d47d7d",
      "#a7b8a7",
      "#e5cfaa",
      "#b7c4d0",
      "#d2c3d6",
      "#a8c0c0",
      "#ffffff",
    },
  },
}
