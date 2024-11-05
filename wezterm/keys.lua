local M = {}
local wezterm = require("wezterm")
local utils = require("utils")
local act = wezterm.action
M.mods = wezterm.target_triple:find("linux") and "CTRL|ALT" or "CTRL|SUPER"

--- @param config table
function M.setup(config)
    -- 禁用所有的快捷键
    -- config.disable_default_key_bindings = true
    config.keys = {
        {
            key = "\\",
            mods = M.mods,
            action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
        },
        {
            key = "Enter",
            mods = "ALT",
            action = act.DisableDefaultAssignment,
        },
    }
    -- 当检测到启动的程序是 nvim 时，进行一些键盘映射操作
    -- wezterm.on("user-var-changed", function(window, pane, name, value)
    --     wezterm.log_info("测试数据：", pane:get_user_vars().IS_NVIM == "true")
    --     if utils.is_nvim(pane) then
    --         config.keys = {
    --             {
    --                 key = "Enter",
    --                 mods = "ALT",
    --                 action = act.DisableDefaultAssignment,
    --             },
    --         }
    --     end
    -- end)
end

return M
