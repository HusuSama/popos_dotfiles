local wezterm = require("wezterm")
local config = {}
config.font = wezterm.font("Inconsolata Nerd Font Mono")
config.font_size = 12
config.line_height = 1.2
config.default_prog = { "fish" }
config.window_background_opacity = 0.8
config.color_scheme = 'Catppuccin Frappé (Gogh)'
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "NONE"
config.keys = {
    {
        key = "\\",
        mods = "CTRL|ALT",
        action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
}
config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = "#b492d1",
			fg_color = "#000000",
		},
		inactive_tab = {
			bg_color = "#665664",
			fg_color = "#e0e0e0",
			italic = true,
		},
	},
}
return config
