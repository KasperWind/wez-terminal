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
  config.color_scheme = 'Gruvbox light, medium (base16)'
else
  config.color_scheme = 'Gruvbox dark, medium (base16)'
end

config.use_fancy_tab_bar = true

config.window_frame = {
  font_size = 10.0,
}

config.initial_cols = 200
config.initial_rows = 55
-- and finally, return the configuration to wezterm
return config

