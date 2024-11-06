local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- 这种方式可以定义 lua 包的搜索路径
-- package.path = package.path .. ";" .. wezterm.config_dir .. "/?.lua"
-- wezterm.log_info("package路径：" .. package.path)

require("network").setup(config)
require("font").setup(config)
require("keys").setup(config)
require("ui").setup(config)
-- 设置默认终端
config.default_prog = { "fish" }
config.window_decorations = "NONE"

return config
