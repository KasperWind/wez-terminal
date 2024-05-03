local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end
local function get_os()
    if string.find(wezterm.target_triple, 'linux') ~= nil then
        return 'linux'
    elseif string.find(wezterm.target_triple, 'apple')   ~= nil then
        return 'mac_os'
    elseif string.find(wezterm.target_triple, 'windows') ~= nil then
        return 'windows'
    else
        return ''
    end
end

if get_os() == 'linux' then
  config.enable_wayland = false
end
-- colors

local kanagawa = require 'kanagawa'
config.colors = kanagawa.colors
config.force_reverse_video_cursor = kanagawa.force_reverse_video_cursor

-- tab bar
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
  font_size = 7.0,
}

config.font_size = 16.0

config.initial_cols = 150
config.initial_rows = 44

-- keymaps
--

config.keys = {
    {
        key = 'h',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ActivateTabRelative(-1)
    },
    {
        key = 'l',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ActivateTabRelative(1)
    },

    {
        key = '[',
        mods = 'CTRL',
        action = wezterm.action.ActivateCopyMode
    },
}

if get_os() == 'windows' then
    config.default_prog = {'C:\\Windows\\system32\\wsl.exe', '~'}
end

return config
