local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.window_decorations = "RESIZE"
config.font_size = 16
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true
-- config.enable_wayland = true

config.color_scheme = "Rosé Pine (base16)"
config.hide_tab_bar_if_only_one_tab = true

return config
