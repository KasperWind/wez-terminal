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

local kanagawa = require 'kanagawa'

config.colors = kanagawa.colors
config.force_reverse_video_cursor = kanagawa.force_reverse_video_cursor

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

