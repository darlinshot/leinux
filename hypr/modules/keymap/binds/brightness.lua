local Apps = {
	{
		KEY = "CTRL + XF86AudioRaiseVolume",
		EXEC = hl.dsp.exec_cmd("brightnessctl set 5%+"),
		REPEATING = true,
	},

	{
		KEY = "CTRL + XF86AudioLowerVolume",
		EXEC = hl.dsp.exec_cmd("brightnessctl set 5%-"),
		REPEATING = true,
	},
}

return Apps
