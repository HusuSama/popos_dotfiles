local wezterm = require("wezterm")
local config = wezterm.config_builder()
require("network").setup(config)
require("font").setup(config)
require("keys").setup(config)
require("ui").setup(config)
config.default_prog = { "fish" }
config.window_decorations = "NONE"

return config
