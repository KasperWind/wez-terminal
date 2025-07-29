local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config.font = wezterm.font 'FiraCode Nerd Font'
-- config.font = wezterm.font 'CaskaydiaCove Nerd Font'
-- config.font = wezterm.font 'Terminess Nerd Font'
-- config.font = wezterm.font 'ZedMono Nerd Font'
config.font = wezterm.font('IosevkaTerm Nerd Font', { weight = 'Medium', italic = false })

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
  config.enable_wayland = true
end
-- colors

-- local kanagawa = require 'kanagawa'
-- config.colors = kanagawa.colors
-- config.force_reverse_video_cursor = kanagawa.force_reverse_video_cursor
config.color_scheme = 'Gruvbox dark, soft (base16)'

-- tab bar
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
  font_size = 9.0,
}

-- config.font = wezterm.font ('Lilex Nerd Font Mono', { weight = 'Regular', italic = false })
-- config.font = wezterm.font ('GeistMono NFM', { weight = 'Regular', italic = false })
-- config.font = wezterm.font ('IosevkaTerm NFM', { weight = 'Medium', italic = false })
-- config.font = wezterm.font ('CaskaydiaCove NFM', { weight = 'Medium', italic = false })

config.font_size = 15
if get_os() == 'windows' then
    config.font_size = 13.5
end

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
        key = 'k',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ActivatePaneDirection('Up')
    },
    {
        key = 'j',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ActivatePaneDirection('Down')
    },
    {
        key = '[',
        mods = 'CTRL',
        action = wezterm.action.ActivateCopyMode
    },
}

if get_os() == 'windows' then
    config.default_prog = {'C:\\Windows\\system32\\wsl.exe', '~'}
    --config.default_prog = { 'pwsh.exe' }
end

return config
