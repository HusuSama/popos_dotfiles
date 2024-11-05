local M = {}
local wezterm = require("wezterm")

function M.is_nvim(pane)
    return pane:get_user_vars().IS_NVIM == "true" or pane:get_foreground_process_name():find("n?vim")
    -- return panel:get_user_vars().IS_NVIM == "true"
end

return M
