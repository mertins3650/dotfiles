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
config.enable_wayland = true

config.colors = {
  tab_bar = {
    active_tab = {
      bg_color = "#94e2d5",
      fg_color = "#1e1e2e",
    },
    inactive_tab = {
      bg_color = "#2a273f",
      fg_color = "#908caa",
    },
    inactive_tab_hover = {
      bg_color = "#2a273f",
      fg_color = "#908caa",
      italic = false,
    },
  },
}

-- config.color_scheme = "rose-pine-moon"
config.color_scheme = "rose-pine"
-- config.color_scheme = "Catppuccin Mocha"
-- config.hide_tab_bar_if_only_one_tab = false
config.hide_tab_bar_if_only_one_tab = true
-- config.leader = { key = "b", mods = "CTRL", timeout_milliseconds = 2000 }
-- config.keys = {
--   {
--     mods = "LEADER",
--     key = "c",
--     action = wezterm.action.SpawnTab("CurrentPaneDomain"),
--   },
--   {
--     mods = "LEADER",
--     key = "x",
--     action = wezterm.action.CloseCurrentPane({ confirm = true }),
--   },
--   {
--     mods = "LEADER",
--     key = "b",
--     action = wezterm.action.ActivateTabRelative(-1),
--   },
--   {
--     mods = "LEADER",
--     key = "n",
--     action = wezterm.action.ActivateTabRelative(1),
--   },
--   {
--     mods = "LEADER",
--     key = "|",
--     action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
--   },
--   {
--     mods = "LEADER",
--     key = "-",
--     action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
--   },
--   {
--     mods = "LEADER",
--     key = "h",
--     action = wezterm.action.ActivatePaneDirection("Left"),
--   },
--   {
--     mods = "LEADER",
--     key = "j",
--     action = wezterm.action.ActivatePaneDirection("Down"),
--   },
--   {
--     mods = "LEADER",
--     key = "k",
--     action = wezterm.action.ActivatePaneDirection("Up"),
--   },
--   {
--     mods = "LEADER",
--     key = "l",
--     action = wezterm.action.ActivatePaneDirection("Right"),
--   },
--   {
--     mods = "LEADER",
--     key = "LeftArrow",
--     action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
--   },
--   {
--     mods = "LEADER",
--     key = "RightArrow",
--     action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
--   },
--   {
--     mods = "LEADER",
--     key = "DownArrow",
--     action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
--   },
--   {
--     mods = "LEADER",
--     key = "UpArrow",
--     action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
--   },
-- }
--
-- for i = 0, 9 do
--   -- leader + number to activate that tab
--   table.insert(config.keys, {
--     key = tostring(i),
--     mods = "LEADER",
--     action = wezterm.action.ActivateTab(i),
--   })
-- end

return config
