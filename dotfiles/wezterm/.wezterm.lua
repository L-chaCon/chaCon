-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Color Scheme:
config.color_scheme = "carbonfox"
config.colors = {
	ansi = {
		"#000000", -- black
		"#ff3399", -- red
		"#25be6a", -- green
		"#07faf2", -- yellow
		"#80a9ff", -- blue
		"#be95ff", -- magenta
		"#06dbf2", -- cyan
		"#f2f2f2", -- grey
	},
	brights = {
		"#282828", -- darkgray
		"#f16da6", -- lightred
		"#46c880", -- lightgreen
		"#2dc7c4", -- lightyellow
		"#8cb6ff", -- lightblue
		"#c8a5ff", -- lightmagenta
		"#00ffff", -- lightcyan
		"#ffffff", -- white
	},
	background = "#000000",
	foreground = "#ffffff", -- este es el texto en la terminal
	cursor_bg = "#ffffff",
	cursor_fg = "#000000",
	tab_bar = {
		background = "#000000",
		active_tab = {
			bg_color = "#484848",
			fg_color = "#ffffff",
			intensity = "Half",
		},
		inactive_tab = {
			bg_color = "#282828",
			fg_color = "#808080",
		},
		inactive_tab_hover = {
			bg_color = "#484848",
			fg_color = "#ffffff",
			italic = true,
		},
		new_tab = {
			bg_color = "#282828",
			fg_color = "#808080",
		},
		new_tab_hover = {
			bg_color = "#484848",
			fg_color = "#ffffff",
			italic = true,
		},
	},
}

-- Tab bar
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

-- Window
config.window_decorations = "RESIZE"
config.native_macos_fullscreen_mode = true
config.window_background_opacity = 1.0
config.inactive_pane_hsb = {
	saturation = 0.0,
	brightness = 0.7,
}

-- Font
config.font_size = 15.0
config.line_height = 1.2
config.font = wezterm.font("JetBrains Mono")

-- This is to be able to use #
config.send_composed_key_when_left_alt_is_pressed = true

return config
