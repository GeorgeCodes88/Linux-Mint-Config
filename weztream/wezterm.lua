-- ==============================================================================
-- ⚙️  WEZTERM PROFILE CONFIGURATION
-- ==============================================================================

local wezterm = require 'wezterm'

-- Using config_builder is the modern way to get type hints and typo warnings!
local config = wezterm.config_builder()

-- ------------------------------------------------------------------------------
-- 🪟 WINDOW DISPLAY & DECORATIONS
-- ------------------------------------------------------------------------------

-- FIX: Restores the Title Bar buttons while keeping the clean resize border
-- If you want a minimal look, you can change this to "INTEGRATED_BUTTONS | RESIZE"
config.window_decorations = "TITLE | RESIZE"

config.window_background_opacity = 0.94
config.enable_scroll_bar = false

-- Default startup sizing
config.initial_cols = 170
config.initial_rows = 42

-- Padding (Spacing inside the terminal to give text breathing room)
config.window_padding = {
  left = 16,
  right = 16,
  top = 12,
  bottom = 12,
}

-- ------------------------------------------------------------------------------
-- 📑 TABS & FONTS
-- ------------------------------------------------------------------------------

config.font = wezterm.font 'JetBrains Mono'
config.font_size = 13.0
config.adjust_window_size_when_changing_font_size = false

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- ------------------------------------------------------------------------------
-- 🖱️ CURSOR CONFIG
-- ------------------------------------------------------------------------------

config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 650

-- ------------------------------------------------------------------------------
-- ⌨️ KEYBINDINGS
-- ------------------------------------------------------------------------------

config.keys = {
  {
    key = "Enter",
    mods = "ALT",
    action = wezterm.action.ToggleFullScreen,
  },
}

-- ------------------------------------------------------------------------------
-- 🎨 COLOR PALETTE (Muted Earth Tones)
-- ------------------------------------------------------------------------------

config.colors = {
  background = "#0b0b0c",
  foreground = "#f2efe8",

  cursor_bg = "#d6c3a5",
  cursor_fg = "#0b0b0c",

  selection_bg = "#2a2a2d",
  selection_fg = "#f2efe8",

  -- Standard terminal colors (0-7)
  ansi = {
    "#0b0b0c", -- Black
    "#b85c5c", -- Red
    "#8f9f8f", -- Green
    "#d6c3a5", -- Yellow
    "#9aa7b0", -- Blue
    "#b4a7b9", -- Magenta
    "#8fa5a5", -- Cyan
    "#f2efe8", -- White
  },

  -- Highlighted/Bright terminal colors (8-15)
  brights = {
    "#4a4a4d", -- Bright Black
    "#d47d7d", -- Bright Red
    "#a7b8a7", -- Bright Green
    "#e5cfaa", -- Bright Yellow
    "#b7c4d0", -- Bright Blue
    "#d2c3d6", -- Bright Magenta
    "#a8c0c0", -- Bright Cyan
    "#ffffff", -- Bright White
  },
}

-- Always return the config object at the end
return config
