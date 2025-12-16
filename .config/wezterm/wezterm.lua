local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-----------------------------------------------------------
-- Default prog
-----------------------------------------------------------
config.default_prog = { "/opt/homebrew/bin/fish" }
config.set_environment_variables = {
  XDG_CONFIG_HOME = os.getenv("HOME") .. "/.config",
}

-----------------------------------------------------------
-- General
-----------------------------------------------------------
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true
config.enable_tab_bar = false
config.default_cwd = "~"
config.window_padding = {
  left = "0.5cell",
  right = "0.5cell",
  top = "0.5cell",
  bottom = "0.5cell",
}

-----------------------------------------------------------
-- Appearance
-----------------------------------------------------------
config.color_scheme = "Gruvbox light, soft (base16)"
config.font = wezterm.font({
  family = "FiraCode Nerd Font",
  weight = "Regular",
  harfbuzz_features = { "zero", "ss01", "ss04", "ss05" },
})
config.font_size = 15
config.window_background_opacity = 0.98

-----------------------------------------------------------
-- Key Bindingss
-----------------------------------------------------------
config.keys = {
  -- Add tab changing through cmd - arrow combo
  {
    key = "RightArrow",
    mods = "SUPER",
    action = act.ActivateTabRelative(1),
  },
  {
    key = "LeftArrow",
    mods = "SUPER",
    action = act.ActivateTabRelative(-1),
  },
}
-- config
return config
