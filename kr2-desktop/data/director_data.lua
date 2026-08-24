-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/kr2-desktop/data/director_data.lua

d = {}
d.item_props = {
	splash = {
		src = "screen_splash",
		next = "slots",
		type = "screen"
	},
	slots = {
		src = "screen_slots",
		show_loading = false,
		type = "screen"
	},
	credits = {
		src = "screen_credits",
		next = "slots",
		type = "screen"
	},
	map = {
		src = "screen_map",
		show_loading = true,
		type = "screen"
	},
	game = {
		show_loading = true,
		next = "map",
		type = "game"
	},
	kr2_end = {
		src = "screen_kr2_end",
		next = "map",
		type = "screen"
	},
	comic = {
		show_loading = false,
		next = "map",
		type = "comic"
	},
	game_editor = {
		src = "game_editor",
		show_loading = false,
		scissor = false,
		type = "screen"
	}
}
d.loading_image_name = {
	{
		"loading_desert",
		{
			1,
			2,
			3,
			4,
			5,
			6
		}
	},
	{
		"loading_jungle",
		{
			7,
			8,
			9,
			10,
			11,
			82
		}
	},
	{
		"loading_underground",
		{
			12,
			13,
			14,
			15,
			22
		}
	},
	{
		"loading_beach",
		{
			16,
			17,
			18
		}
	},
	{
		"loading_halloween",
		{
			19,
			20,
			21
		}
	},
	default = "loading_desert"
}

return d
