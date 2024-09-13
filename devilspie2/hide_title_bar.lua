-- debug_print("window_name: " .. get_window_name())
--
local applications = {
    "YesPlayMusic",
}

-- if get_window_name():match("YesPlayMusic") then
--     -- 隐藏窗口标题栏
--     undecorate_window()
-- end
for _, value in ipairs(applications) do
    if get_window_name():match(value) then
	-- 隐藏窗口标题栏
        undecorate_window()
    end
end
