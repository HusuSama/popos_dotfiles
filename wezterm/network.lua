local M = {}
local wezterm = require("wezterm")
--- @param config table
function M.setup(config)
    if wezterm.target_triple:find("linux") then
        config.set_environment_variables = {
            http_proxy = "http://127.0.0.1:7897",
            https_proxy = "http://127.0.0.1:7897",
        }
    end
end

return M
