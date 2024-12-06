local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

--config.color_scheme = "rose-pine"
--config.color_scheme = "Tokyo Night Moon"
config.color_scheme = "Catppuccin Macchiato"
config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.font_size = 14
config.default_prog = { "tmux" }

return config
