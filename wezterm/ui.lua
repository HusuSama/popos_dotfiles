local M = {}

--- @param config wezterm.Config
function M.setup(config)
    -- 主题
    config.color_scheme = "Catppuccin Frappé (Gogh)"
    -- 不透明度
    config.window_background_opacity = 0.8
    -- 只有一个 tab 标签时隐藏
    config.hide_tab_bar_if_only_one_tab = true
    config.colors = {
        -- tab标签 颜色
        tab_bar = {
            active_tab = {
                bg_color = "#b492d1",
                fg_color = "#000000",
            },
            inactive_tab = {
                bg_color = "#665664",
                fg_color = "#e0e0e0",
                italic = true,
            },
        },
    }
end

return M