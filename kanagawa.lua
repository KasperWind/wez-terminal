local foreground = "#dcd7ba"
local background = "#1f1f28"

return {
	force_reverse_video_cursor = true,
	colors = {
		foreground = foreground,
		background = background,

		cursor_bg = "#c8c093",
		cursor_fg = "#c8c093",
		cursor_border = "#c8c093",

		selection_fg = "#c8c093",
		selection_bg = "#2d4f67",

		scrollbar_thumb = "#16161d",
		split = "#16161d",

		ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
		brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
		indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
        tab_bar = {
            background = background,
                -- The active tab is the one that has focus in the window
            active_tab = {
              -- The color of the background area for the tab
              bg_color = background,
              -- The color of the text for the tab
              fg_color = foreground,

              -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
              -- label shown for this tab.
              -- The default is "Normal"
              intensity = 'Bold',

              -- Specify whether you want "None", "Single" or "Double" underline for
              -- label shown for this tab.
              -- The default is "None"
              underline = 'None',

              -- Specify whether you want the text to be italic (true) or not (false)
              -- for this tab.  The default is false.
              italic = false,

              -- Specify whether you want the text to be rendered with strikethrough (true)
              -- or not for this tab.  The default is false.
              strikethrough = false,
            },
             -- Inactive tabs are the tabs that do not have focus
            inactive_tab = {
              bg_color = background,
              fg_color = foreground,

              intensity = 'Half',
              -- The same options that were listed under the `active_tab` section above
              -- can also be used for `inactive_tab`.
            },

            -- You can configure some alternate styling when the mouse pointer
            -- moves over inactive tabs
            inactive_tab_hover = {
              bg_color = background,
              fg_color = foreground,
              italic = false,

              -- The same options that were listed under the `active_tab` section above
              -- can also be used for `inactive_tab_hover`.
            },

            -- The new tab button that let you create new tabs
            new_tab = {
              bg_color = background,
              fg_color = background,
              italic = false,

              -- The same options that were listed under the `active_tab` section above
              -- can also be used for `new_tab`.
            },

            -- You can configure some alternate styling when the mouse pointer
            -- moves over the new tab button
            new_tab_hover = {
              bg_color = background,
              fg_color = background,
              italic = false,

              -- The same options that were listed under the `active_tab` section above
              -- can also be used for `new_tab_hover`.
            },

        }
	},
}
