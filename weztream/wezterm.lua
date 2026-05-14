local wezterm = require 'wezterm'

return {
  font = wezterm.font 'JetBrains Mono',
  font_size = 13.0,

  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,

  window_background_opacity = 0.94,

  default_cursor_style = "BlinkingBar",
  cursor_blink_rate = 650,

  enable_scroll_bar = false,

  adjust_window_size_when_changing_font_size = false,

  window_decorations = "RESIZE",

  initial_cols = 170,
  initial_rows = 42,

  window_padding = {
    left = 16,
    right = 16,
    top = 12,
    bottom = 12,
  },

  keys = {
    {
      key = "Enter",
      mods = "ALT",
      action = wezterm.action.ToggleFullScreen,
    },
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
