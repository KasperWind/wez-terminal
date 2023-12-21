-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
local temp = os.date("*t", os.time())
local h = tonumber(temp.hour)
if h >= 8 and h < 20 then
  --config.color_scheme = 'Catppuccin Latte'
  config.color_scheme = 'Catppuccin Macchiato'
else
  config.color_scheme = 'Catppuccin Macchiato'
end

config.use_fancy_tab_bar = false
config.enable_tab_bar = false

config.window_frame = {
  font_size = 8.0,
}

-- config.font = wezterm.font_with_fallback {
--   'Droid Sans',
-- }

config.font_size = 13.5

config.initial_cols = 150
config.initial_rows = 44
-- and finally, return the configuration to wezterm
return config

