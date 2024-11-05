local M = {}
local wezterm = require("wezterm")

--- @param config wezterm.Config
function M.setup(config)
    -- linux下自动设置代理
    if wezterm.target_triple:find("linux") then
        config.set_environment_variables = {
            http_proxy = "http://127.0.0.1:7897",
            https_proxy = "http://127.0.0.1:7897",
        }
    end
end

return M
