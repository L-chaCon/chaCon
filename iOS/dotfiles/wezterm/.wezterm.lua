-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Color Scheme:
config.color_scheme = "carbonfox"
config.colors = {
	ansi = {
		"#282828",
		"#ff3399",
		"#25be6a",
		"#08bdba",
		"#78a9ff",
		"#be95ff",
		"#00e6e6",
		"#f2f2f2",
	},
	brights = {
		"#484848",
		"#f16da6",
		"#46c880",
		"#2dc7c4",
		"#8cb6ff",
		"#c8a5ff",
		"#00ffff",
		"#ffffff",
	},
	background = "#000000",
	foreground = "#ffffff", -- este es el texto en la terminal
	cursor_bg = "#ffffff",
	cursor_fg = "#000000",
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
config.font_size = 13.0
config.line_height = 1.2
config.font = wezterm.font("JetBrains Mono")

-- This is to be able to use #
config.send_composed_key_when_left_alt_is_pressed = true

return config

--[[  
WEZ
[colors]
ansi = [
	"#000000",
	"#cc5555",
	"#55cc55",
	"#cdcd55",
	"#5555cc",
	"#cc55cc",
	"#7acaca",
	"#cccccc",
]
background = "#000000"
brights = [
	"#555555",
	"#ff5555",
	"#55ff55",
	"#ffff55",
	"#5555ff",
	"#ff55ff",
	"#55ffff",
	"#ffffff",
]
cursor_bg = "#53ae71"
cursor_border = "#53ae71"
cursor_fg = "#000000"
foreground = "#b3b3b3"
selection_bg = "#4d52f8"
selection_fg = "#000000"


----------------------------------------------------

CarbonFox

[colors]
ansi = [
	"#282828",
	"#ee5396",
	"#25be6a",
	"#08bdba",
	"#78a9ff",
	"#be95ff",
	"#33b1ff",
	"#dfdfe0",
]
background = "#161616"
brights = [
	"#484848",
	"#f16da6",
	"#46c880",
	"#2dc7c4",
	"#8cb6ff",
	"#c8a5ff",
	"#52bdff",
	"#e4e4e5",
]
compose_cursor = "#3ddbd9"
cursor_bg = "#f2f4f8"
cursor_border = "#f2f4f8"
cursor_fg = "#161616"
foreground = "#f2f4f8"
scrollbar_thumb = "#7b7c7e"
selection_bg = "#2a2a2a"
selection_fg = "#f2f4f8"
split = "#0c0c0c"
visual_bell = "#f2f4f8"

[colors.indexed]
16 = "#ff7eb6"
17 = "#3ddbd9"

[colors.tab_bar]
background = "#0c0c0c"
inactive_tab_edge = "#0c0c0c"
inactive_tab_edge_hover = "#252525"

[colors.tab_bar.active_tab]
bg_color = "#7b7c7e"
fg_color = "#161616"
intensity = "Normal"
italic = false
strikethrough = false
underline = "None"

[colors.tab_bar.inactive_tab]
bg_color = "#252525"
fg_color = "#b6b8bb"
intensity = "Normal"
italic = false
strikethrough = false
underline = "None"

[colors.tab_bar.inactive_tab_hover]
bg_color = "#353535"
fg_color = "#f2f4f8"
intensity = "Normal"
italic = false
strikethrough = false
underline = "None"

[colors.tab_bar.new_tab]
bg_color = "#161616"
fg_color = "#b6b8bb"
intensity = "Normal"
italic = false
strikethrough = false
underline = "None"

[colors.tab_bar.new_tab_hover]
bg_color = "#353535"
fg_color = "#f2f4f8"
intensity = "Normal"
italic = false
strikethrough = false
underline = "None"

[metadata]
aliases = []
author = "EdenEast"
name = "carbonfox"
origin_url = "https://github.com/EdenEast/nightfox.nvim"
wezterm_version = "20220903-194523-3bb1ed61"

]]
