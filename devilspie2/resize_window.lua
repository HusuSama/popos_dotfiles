local applications = {
	"YesPlayMusic",
}

for _, value in ipairs(applications) do
	if get_window_name():match(value) then
		set_window_size(1600, 1100)
		center()
	end
end
