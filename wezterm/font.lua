local M = {}
local wezterm = require("wezterm")

--- @param config table
function M.setup(config)
    -- config.font = wezterm.font("Inconsolata Nerd Font Mono")
    config.font = wezterm.font_with_fallback({
        -- { family = "FiraCode Nerd Font" },
        { family = "Inconsolata Nerd Font Mono" },
        -- { family = "HarmonyOS Sans" },
        -- { family = "SpaceMono Nerd Font" },
    })
    config.font_size = 12
    config.font_rules = {
        {
            intensity = "Bold",
            italic = true,
            font = wezterm.font({
                family = "Victor Mono",
                weight = "Bold",
                style = "Italic",
            }),
        },
        {
            italic = true,
            intensity = "Half",
            font = wezterm.font({
                family = "Victor Mono",
                weight = "Bold",
                style = "Italic",
            }),
        },
        {
            italic = true,
            intensity = "Normal",
            font = wezterm.font({
                family = "Victor Mono",
                weight = "Medium",
                style = "Italic",
            }),
        },
    }
    config.line_height = 1.5
end

return M
