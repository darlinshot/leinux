local Style = {
	general = {
		gaps_in = 4,
		gaps_out = 4,

		border_size = 2,

		col = {
			active_border = { colors = { "{{colors.primary.default.hex}}" } },
			inactive_border = "{{colors.primary_container.default.hex}}",
		},

		layout = "dwindle",
	},

	decoration = {
		rounding = 0,
		rounding_power = 2,

		-- Change transparency of focused and unfocused windows
		active_opacity = 1.0,
		inactive_opacity = 0.85,

		shadow = {
			enabled = false,
			range = 10,
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 8,
			passes = 2,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = false,
	},
}

return Style
