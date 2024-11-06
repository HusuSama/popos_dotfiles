local M = {}
local wezterm = require("wezterm")
-- local utils = require("utils")
local act = wezterm.action
M.mods = wezterm.target_triple:find("linux") and "CTRL|SHIFT" or "CTRL|SUPER"

function M.is_nvim(pane)
    -- return pane:get_user_vars().IS_NVIM == "true" or pane:get_foreground_process_name():find("n?vim")
    return pane:get_user_vars().IS_NVIM == "true"
end

--- @param config wezterm.Config
--- @return nil
function M.setup(config)
    -- 禁用所有的快捷键
    -- config.disable_default_key_bindings = true
    config.keys = {
        -- 分屏
        {
            key = "\\",
            mods = M.mods,
            action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
        },
        -- 禁用 alt + enter
        {
            key = "Enter",
            mods = "ALT",
            action = act.DisableDefaultAssignment,
        },
        -- 上下翻页
        {
            key = "j",
            mods = M.mods,
            action = act.ScrollByPage(0.5),
        },
        {
            key = "k",
            mods = M.mods,
            action = act.ScrollByPage(-0.5),
        },
        {
            key = "l",
            mods = M.mods,
            action = act.ScrollToBottom,
        },
        {
            key = "h",
            mods = M.mods,
            action = act.ScrollToTop,
        },
        {
            key = "d",
            mods = M.mods,
            action = act.ShowDebugOverlay,
        },
        {
            key = "F11",
            mods = "",
            action = act.ToggleFullScreen,
        },
    }
    -- 当检测到启动的程序是 nvim 时，进行一些键盘映射操作
    -- wezterm.on("user-var-changed", function(window, pane, name, value)
    --     if M.is_nvim(pane) then
    --         config.keys = {
    --             {
    --                 key = "Enter",
    --                 mods = "ALT",
    --                 action = act.DisableDefaultAssignment,
    --             },
    --         }
    --         wezterm.reload_configuration()
    --     end
    -- end)
end

return M
