-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/kr2-desktop/data/map_data.lua

local ani_paths = require("data.map_animations_paths")
local deco_fn = require("map_decos_functions")
local V = require("klua.vector")
local i18n = require("i18n")
local v = V.v

local function fc(r, g, b, a)
	return {
		r / 255,
		g / 255,
		b / 255,
		a / 255
	}
end

local function CJK(default, zh, ja, kr)
	return i18n.cjk(i18n, default, zh, ja, kr)
end

local p11, p12 = 0, CJK(0.45, 0.55, 0.5, 0.5)
local p21, p22 = CJK(0.3, 0.4, 0.35, 0.35), CJK(0.5, 0.6, 0.55, 0.55)
local rs = GGLabel.static.ref_h / REF_H

return {
	hero_names_config = {
		default = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(255, 183, 95, 255),
					c3 = fc(255, 98, 0, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(88, 19, 0, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(88, 19, 0, 255)
				},
				{}
			}
		},
		hero_alric = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(255, 183, 95, 255),
					c3 = fc(255, 98, 0, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(88, 19, 0, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(88, 19, 0, 255)
				},
				{}
			}
		},
		hero_mirage = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(255, 177, 252, 255),
					c3 = fc(140, 46, 212, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(77, 0, 75, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(77, 0, 75, 255)
				},
				{}
			}
		},
		hero_pirate = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(215, 253, 255, 255),
					c3 = fc(29, 203, 217, 255)
				},
				{
					thickness = 2.5 * rs,
					outline_color = fc(0, 81, 84, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(0, 81, 84, 255)
				},
				{}
			}
		},
		hero_beastmaster = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(228, 255, 95, 255),
					c3 = fc(107, 189, 0, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(32, 58, 0, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(32, 58, 0, 255)
				},
				{}
			}
		},
		hero_voodoo_witch = {
			shader_args = {
				{
					margin = 2 * rs,
					p1 = p21,
					p2 = p22,
					c1 = fc(231, 192, 255, 0),
					c2 = fc(209, 136, 255, 255),
					c3 = fc(128, 68, 190, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(61, 27, 86, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(61, 27, 86, 255)
				},
				{}
			}
		},
		hero_wizard = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(255, 246, 83, 255),
					c3 = fc(255, 129, 5, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(79, 44, 26, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(79, 44, 26, 255)
				},
				{}
			}
		},
		hero_priest = {
			shader_args = {
				{
					margin = 2 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(215, 251, 255, 255),
					c3 = fc(81, 202, 255, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(0, 97, 121, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(0, 97, 121, 255)
				},
				{}
			}
		},
		hero_giant = {
			shader_args = {
				{
					margin = 2 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(187, 251, 255, 255),
					c3 = fc(0, 177, 172, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(0, 83, 86, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(0, 83, 86, 255)
				},
				{}
			}
		},
		hero_alien = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(222, 180, 255, 255),
					c3 = fc(117, 65, 215, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(70, 20, 109, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(70, 20, 109, 255)
				},
				{}
			}
		},
		hero_dragon = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p21,
					p2 = p22,
					c1 = fc(255, 210, 0, 0),
					c2 = fc(255, 151, 25, 255),
					c3 = fc(222, 77, 22, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(98, 20, 0, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(98, 20, 0, 255)
				},
				{}
			}
		},
		hero_crab = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(226, 255, 123, 255),
					c3 = fc(133, 170, 0, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(56, 72, 0, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(56, 72, 0, 255)
				},
				{}
			}
		},
		hero_monk = {
			shader_args = {
				{
					margin = 2 * rs,
					p1 = p21,
					p2 = p22,
					c1 = fc(251, 255, 184, 0),
					c2 = fc(255, 214, 28, 255),
					c3 = fc(255, 126, 0, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(98, 47, 0, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(98, 47, 0, 255)
				},
				{}
			}
		},
		hero_van_helsing = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(255, 179, 175, 255),
					c3 = fc(212, 68, 83, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(100, 0, 16, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(100, 0, 16, 255)
				},
				{}
			}
		},
		hero_dracolich = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(228, 255, 95, 255),
					c3 = fc(107, 173, 0, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(29, 51, 1, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(29, 51, 1, 255)
				},
				{}
			}
		},
		hero_minotaur = {
			shader_args = {
				{
					margin = 0 * rs,
					p1 = p11,
					p2 = p12,
					c1 = fc(0, 0, 0, 0),
					c2 = fc(255, 170, 88, 255),
					c3 = fc(255, 42, 0, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(81, 17, 0, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(81, 17, 0, 255)
				},
				{}
			}
		},
		hero_monkey_god = {
			shader_args = {
				{
					margin = 2 * rs,
					p1 = p21,
					p2 = p22,
					c1 = fc(255, 255, 255, 0),
					c2 = fc(212, 255, 133, 255),
					c3 = fc(109, 212, 3, 255)
				},
				{
					thickness = 4.5 * rs,
					outline_color = fc(49, 107, 6, 255)
				},
				{
					thickness = 1.5 * rs,
					glow_color = fc(49, 107, 6, 255)
				},
				{}
			}
		}
	},
	hero_data = {
		{
			portrait = 1,
			thumb = 1,
			name = "hero_alric",
			available_level = 0,
			starting_level = 1,
			icon = 1,
			coming_soon = false
		},
		{
			portrait = 2,
			thumb = 2,
			name = "hero_mirage",
			available_level = 4,
			starting_level = 2,
			icon = 2,
			coming_soon = false
		},
		{
			portrait = 4,
			thumb = 4,
			name = "hero_pirate",
			available_level = 5,
			starting_level = 3,
			icon = 4,
			coming_soon = false
		},
		{
			portrait = 5,
			thumb = 3,
			name = "hero_beastmaster",
			available_level = 7,
			starting_level = 4,
			icon = 5,
			coming_soon = false
		},
		{
			portrait = 15,
			thumb = 15,
			name = "hero_voodoo_witch",
			available_level = 8,
			starting_level = 4,
			icon = 15,
			coming_soon = false
		},
		{
			portrait = 7,
			thumb = 6,
			name = "hero_wizard",
			available_level = 9,
			starting_level = 4,
			icon = 7,
			coming_soon = false
		},
		{
			portrait = 3,
			thumb = 5,
			name = "hero_priest",
			available_level = 10,
			starting_level = 4,
			icon = 3,
			coming_soon = false
		},
		{
			portrait = 6,
			thumb = 8,
			name = "hero_giant",
			available_level = 12,
			starting_level = 5,
			icon = 6,
			coming_soon = false
		},
		{
			portrait = 8,
			thumb = 7,
			name = "hero_alien",
			available_level = 15,
			starting_level = 6,
			icon = 8,
			coming_soon = false
		},
		{
			portrait = 9,
			thumb = 9,
			name = "hero_dragon",
			available_level = 15,
			starting_level = 6,
			icon = 9,
			coming_soon = false
		},
		{
			portrait = 10,
			thumb = 10,
			name = "hero_crab",
			available_level = 15,
			starting_level = 5,
			icon = 10,
			coming_soon = false
		},
		{
			portrait = 11,
			thumb = 11,
			name = "hero_monk",
			available_level = 15,
			starting_level = 5,
			icon = 11,
			coming_soon = false
		},
		{
			portrait = 12,
			thumb = 12,
			name = "hero_van_helsing",
			available_level = 15,
			starting_level = 5,
			icon = 12,
			coming_soon = false
		},
		{
			portrait = 13,
			thumb = 13,
			name = "hero_dracolich",
			available_level = 15,
			starting_level = 6,
			icon = 13,
			coming_soon = false
		},
		{
			portrait = 14,
			thumb = 14,
			name = "hero_minotaur",
			available_level = 15,
			starting_level = 5,
			icon = 14,
			coming_soon = false
		},
		{
			portrait = 16,
			thumb = 16,
			name = "hero_monkey_god",
			available_level = 15,
			starting_level = 5,
			icon = 16,
			coming_soon = false
		}
	},
	level_data = {
		{
			upgrades = {
				heroe = false,
				level = 1
			},
			iron = {
				"archers",
				"mages"
			}
		},
		{
			upgrades = {
				heroe = false,
				level = 2
			},
			iron = {
				"archers",
				"artillery"
			}
		},
		{
			upgrades = {
				heroe = false,
				level = 2
			},
			iron = {
				"artillery"
			}
		},
		{
			upgrades = {
				heroe = false,
				level = 2
			},
			iron = {
				"artillery",
				"mages"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 2
			},
			iron = {
				"barracks",
				"artillery"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 3
			},
			iron = {
				"barracks",
				"archers"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 3
			},
			iron = {
				"artillery",
				"archers"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 3
			},
			iron = {
				"mages",
				"artillery"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 4
			},
			iron = {
				"barracks",
				"mages"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 4
			},
			iron = {
				"artillery",
				"mages"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 4
			},
			iron = {
				"barracks",
				"archers"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"artillery",
				"mages"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"mages",
				"archers"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"artillery",
				"barracks"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"mages"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"mages",
				"artillery"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"archers",
				"artillery"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"archers",
				"barracks"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"barracks",
				"mages"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"artillery",
				"mages"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"archers",
				"barracks"
			}
		},
		{
			upgrades = {
				heroe = true,
				level = 5
			},
			iron = {
				"barracks",
				"mages"
			}
		}
	},
	tower_data = {
		{
			name = "tower_archer_1"
		},
		{
			name = "tower_barrack_1"
		},
		{
			name = "tower_mage_1"
		},
		{
			name = "tower_engineer_1"
		},
		{
			name = "tower_archer_2"
		},
		{
			name = "tower_barrack_2"
		},
		{
			name = "tower_mage_2"
		},
		{
			name = "tower_engineer_2"
		},
		{
			name = "tower_archer_3"
		},
		{
			name = "tower_barrack_3"
		},
		{
			name = "tower_mage_3"
		},
		{
			name = "tower_engineer_3"
		},
		{
			name = "tower_crossbow"
		},
		{
			name = "tower_assassin"
		},
		{
			name = "tower_archmage"
		},
		{
			name = "tower_dwaarp"
		},
		{
			name = "tower_totem"
		},
		{
			name = "tower_templar"
		},
		{
			name = "tower_necromancer"
		},
		{
			name = "tower_mech"
		}
	},
	map_animations = {
		{
			loop = true,
			id = "ma_waterfall_left",
			layer = 1,
			pos = v(32, 192),
			animation = {
				to = 18,
				prefix = "ma_waterfall_left",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_oasis",
			layer = 1,
			pos = v(495, 514),
			animation = {
				to = 33,
				prefix = "ma_waterSparks",
				from = 1
			}
		},
		{
			id = "ma_twister_1",
			layer = 1,
			pos = v(312, 183),
			wait = {
				10,
				20
			},
			animation = {
				to = 119,
				prefix = "ma_twister_1",
				from = 1
			}
		},
		{
			id = "ma_twister_2",
			layer = 1,
			pos = v(97, 467),
			wait = {
				10,
				20
			},
			animation = {
				to = 119,
				prefix = "ma_twister_2",
				from = 1
			}
		},
		{
			id = "ma_twister_3",
			layer = 1,
			pos = v(259, 386),
			wait = {
				10,
				20
			},
			animation = {
				to = 119,
				prefix = "ma_twister_3",
				from = 1
			}
		},
		{
			id = "ma_sandworm",
			layer = 1,
			pos = v(283, 490),
			wait = {
				20,
				40
			},
			animation = {
				to = 81,
				prefix = "ma_sandworm",
				from = 1
			}
		},
		{
			id = "ma_bantha_1",
			layer = 1,
			pos = v(53, 323),
			wait = {
				2,
				4
			},
			animation = {
				to = 54,
				prefix = "ma_bantha",
				from = 1
			}
		},
		{
			id = "ma_goat_1",
			layer = 1,
			pos = v(522, 642),
			wait = {
				3,
				7
			},
			animation = {
				to = 32,
				prefix = "ma_goat",
				from = 1
			}
		},
		{
			id = "ma_goat_2",
			template = "ma_goat_1",
			pos = v(464, 516),
			scale = v(-1, 1)
		},
		{
			id = "ma_mini_volcano_a_1",
			layer = 1,
			pos = v(556, 16),
			wait = {
				5,
				10
			},
			animation = {
				to = 60,
				prefix = "ma_mini_volcano_1",
				from = 1
			}
		},
		{
			id = "ma_mini_volcano_a_2",
			template = "ma_mini_volcano_a_1",
			pos = v(954, 32)
		},
		{
			id = "ma_mini_volcano_a_3",
			template = "ma_mini_volcano_a_1",
			pos = v(1043, 18)
		},
		{
			loop = true,
			id = "ma_mini_volcano_a_smoke_1",
			layer = 1,
			pos = v(555, -5),
			animation = {
				to = 52,
				prefix = "ma_mini_volcano_smoke_1",
				from = 1
			}
		},
		{
			id = "ma_mini_volcano_a_smoke_2",
			template = "ma_mini_volcano_a_smoke_1",
			pos = v(953, 10)
		},
		{
			id = "ma_mini_volcano_a_smoke_3",
			template = "ma_mini_volcano_a_smoke_1",
			pos = v(1042, -3)
		},
		{
			id = "ma_mini_volcano_a_smoke_4",
			template = "ma_mini_volcano_a_smoke_1",
			pos = v(370, 33)
		},
		{
			id = "ma_mini_volcano_a_smoke_5",
			template = "ma_mini_volcano_a_smoke_1",
			pos = v(417, 11)
		},
		{
			id = "ma_mini_volcano_b_1",
			layer = 1,
			pos = v(321, 33),
			wait = {
				5,
				10
			},
			animation = {
				to = 60,
				prefix = "ma_mini_volcano_2",
				from = 1
			}
		},
		{
			id = "ma_mini_volcano_b_2",
			template = "ma_mini_volcano_b_1",
			pos = v(997, 29)
		},
		{
			loop = true,
			id = "ma_mini_volcano_b_smoke_1",
			layer = 1,
			pos = v(323, 6),
			animation = {
				to = 52,
				prefix = "ma_mini_volcano_smoke_2",
				from = 1
			}
		},
		{
			id = "ma_mini_volcano_b_smoke_2",
			template = "ma_mini_volcano_b_smoke_1",
			pos = v(999, 2)
		},
		{
			loop = true,
			id = "ma_north_river",
			layer = 1,
			pos = v(1119, 197),
			animation = {
				to = 30,
				prefix = "ma_north_river",
				from = 1
			}
		},
		{
			id = "ma_north_lights",
			layer = 1,
			pos = v(986, 171),
			wait = {
				8,
				15
			},
			animation = {
				to = 25,
				prefix = "ma_north_lights",
				from = 1
			}
		},
		{
			id = "ma_skeleton",
			layer = 1,
			pos = v(1094, 222),
			wait = {
				10,
				30
			},
			animation = {
				to = 129,
				prefix = "ma_skeleton",
				from = 1
			}
		},
		{
			id = "ma_castle_window_1",
			toggle = true,
			layer = 1,
			pos = v(1269, 89),
			wait = {
				8,
				25
			},
			animation = {
				to = 1,
				prefix = "ma_castle_window_1",
				from = 1
			}
		},
		{
			id = "ma_castle_window_2",
			toggle = true,
			layer = 1,
			pos = v(1275, 100),
			wait = {
				8,
				25
			},
			animation = {
				to = 1,
				prefix = "ma_castle_window_2",
				from = 1
			}
		},
		{
			id = "ma_castle_window_3",
			toggle = true,
			layer = 1,
			pos = v(1303, 99),
			wait = {
				8,
				25
			},
			animation = {
				to = 1,
				prefix = "ma_castle_window_3",
				from = 1
			}
		},
		{
			id = "ma_castle_window_4",
			toggle = true,
			layer = 1,
			pos = v(1276, 126),
			wait = {
				8,
				25
			},
			animation = {
				to = 1,
				prefix = "ma_castle_window_4",
				from = 1
			}
		},
		{
			id = "ma_castle_window_5",
			toggle = true,
			layer = 1,
			pos = v(1286, 83),
			wait = {
				8,
				25
			},
			animation = {
				to = 1,
				prefix = "ma_castle_window_5",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_castle_flame_1",
			layer = 1,
			pos = v(1258, 138),
			animation = {
				to = 12,
				prefix = "ma_castle_flame",
				from = 1
			}
		},
		{
			id = "ma_castle_flame_2",
			template = "ma_castle_flame_1",
			pos = v(1282, 148)
		},
		{
			id = "ma_lava_1_glow",
			layer = 1,
			pos = v(585, 133),
			wait = {
				5,
				10
			},
			animation = {
				to = 96,
				prefix = "ma_lava_1_glow",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_lava_1",
			layer = 1,
			pos = v(593, 127),
			animation = {
				to = 45,
				prefix = "ma_lava_1",
				from = 1
			}
		},
		{
			id = "ma_lava_2_glow",
			layer = 1,
			pos = v(759, 126),
			wait = {
				5,
				10
			},
			animation = {
				to = 96,
				prefix = "ma_lava_2_glow",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_lava_2",
			layer = 1,
			pos = v(747, 107),
			animation = {
				to = 46,
				prefix = "ma_lava_2",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_lava_sparks_1",
			layer = 1,
			pos = v(1219, 430),
			animation = {
				to = 81,
				prefix = "ma_lava_sparks",
				from = 1
			}
		},
		{
			id = "ma_lava_sparks_2",
			template = "ma_lava_sparks_1",
			pos = v(1302, 358),
			scale = v(0.8, 0.8)
		},
		{
			id = "ma_lava_sparks_3",
			template = "ma_lava_sparks_1",
			pos = v(1242, 362),
			scale = v(0.7, 0.7)
		},
		{
			loop = true,
			id = "ma_lava_smoke",
			layer = 1,
			pos = v(1257, 375),
			animation = {
				to = 66,
				prefix = "ma_lava_smoke",
				from = 1
			}
		},
		{
			id = "ma_diamond",
			layer = 1,
			pos = v(1522, 349),
			wait = {
				3,
				6
			},
			animation = {
				to = 70,
				prefix = "ma_diamond",
				from = 1
			}
		},
		{
			id = "ma_mountain_lava_1",
			layer = 1,
			pos = v(1539, 142),
			wait = {
				3,
				6
			},
			animation = {
				to = 80,
				prefix = "ma_mountain_lava_1",
				from = 1
			}
		},
		{
			alpha = 0.8,
			id = "ma_mountain_lava_2",
			layer = 1,
			pos = v(1520, 187),
			wait = {
				3,
				6
			},
			animation = {
				to = 60,
				prefix = "ma_mountain_lava_2",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_mountain_sparks",
			layer = 1,
			pos = v(1542, 142),
			animation = {
				to = 80,
				prefix = "ma_mountain_sparks",
				from = 1
			}
		},
		{
			id = "ma_mountain_sparks_2",
			template = "ma_mountain_sparks",
			alpha = 0.8,
			pos = v(1542, 130),
			scale = v(0.8, 0.8)
		},
		{
			loop = true,
			id = "ma_river_l",
			layer = 1,
			pos = v(1231, 797),
			animation = {
				to = 18,
				prefix = "ma_river_l",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_river_r",
			layer = 1,
			pos = v(1561, 636),
			animation = {
				to = 18,
				prefix = "ma_river_r",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_falls_left",
			layer = 1,
			pos = v(1064, 578),
			animation = {
				to = 18,
				prefix = "ma_falls_left",
				from = 1
			}
		},
		{
			loop = true,
			layer = 1,
			id = "ma_bottle_1",
			path = ani_paths.ma_bottle_1,
			wait = {
				10,
				20
			},
			animation = {
				to = 27,
				prefix = "ma_bottle_loop",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_bottle_cover",
			layer = 1,
			pos = v(1217, 722),
			animation = {
				to = 1,
				prefix = "ma_bottle_cover",
				from = 1
			}
		},
		{
			id = "ma_monkey_vine_1",
			layer = 1,
			pos = v(977, 602),
			wait = {
				15,
				30
			},
			animation = {
				to = 82,
				prefix = "ma_monkey_vine_1",
				from = 1
			}
		},
		{
			id = "ma_monkey_vine_2",
			layer = 1,
			pos = v(1131, 686),
			wait = {
				25,
				25
			},
			animation = {
				to = 56,
				prefix = "ma_monkey_vine_2",
				from = 1
			}
		},
		{
			id = "ma_monkey_vine_3",
			layer = 1,
			pos = v(1593, 636),
			wait = {
				30,
				45
			},
			animation = {
				to = 55,
				prefix = "ma_monkey_vine_3",
				from = 1
			}
		},
		{
			id = "ma_monkey_shout_1",
			layer = 1,
			pos = v(971, 854),
			scale = v(-1, 1),
			wait = {
				20,
				45
			},
			animation = {
				to = 85,
				prefix = "ma_monkey_shout",
				from = 1
			}
		},
		{
			id = "ma_monkey_shout_2",
			layer = 1,
			pos = v(1303, 731),
			wait = {
				20,
				45
			},
			animation = {
				to = 85,
				prefix = "ma_monkey_shout",
				from = 1
			}
		},
		{
			id = "ma_monkey_shout_3",
			layer = 1,
			pos = v(1745, 546),
			wait = {
				20,
				45
			},
			animation = {
				to = 85,
				prefix = "ma_monkey_shout",
				from = 1
			}
		},
		{
			id = "ma_volcano_bubble",
			layer = 1,
			pos = v(1440, 610),
			wait = {
				1,
				2
			},
			animation = {
				to = 70,
				prefix = "ma_volcano_bubble",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_volcano_smoke",
			layer = 1,
			pos = v(1441, 535),
			animation = {
				to = 52,
				prefix = "ma_volcano_smoke",
				from = 1
			}
		},
		{
			id = "ma_alien_ship",
			layer = 1,
			pos = v(1565, 783),
			wait = {
				1,
				3
			},
			animation = {
				to = 80,
				prefix = "ma_alien_ship",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_waves_1",
			layer = 1,
			pos = v(66, 658),
			animation = {
				to = 120,
				prefix = "ma_waves_1",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_waves_2",
			layer = 1,
			pos = v(111, 797),
			animation = {
				to = 120,
				prefix = "ma_waves_2",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_waves_3",
			layer = 1,
			pos = v(120, 987),
			animation = {
				to = 120,
				prefix = "ma_waves_3",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_waves_4",
			layer = 1,
			pos = v(513, 1014),
			animation = {
				to = 120,
				prefix = "ma_waves_4",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_waves_5",
			layer = 1,
			pos = v(373, 865),
			animation = {
				to = 120,
				prefix = "ma_waves_5",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_waves_6",
			layer = 1,
			pos = v(328, 647),
			animation = {
				to = 120,
				prefix = "ma_waves_6",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_waves_7",
			layer = 1,
			pos = v(339, 775),
			animation = {
				to = 120,
				prefix = "ma_waves_7",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_waves_8",
			layer = 1,
			pos = v(107, 910),
			animation = {
				to = 120,
				prefix = "ma_waves_8",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_beach_1",
			layer = 1,
			pos = v(502, 924),
			wait = {
				5,
				5
			},
			animation = {
				to = 135,
				prefix = "ma_beach_1",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_beach_2",
			layer = 1,
			pos = v(269, 636),
			wait = {
				5,
				5
			},
			animation = {
				to = 131,
				prefix = "ma_beach_2",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_beach_3",
			layer = 1,
			pos = v(301, 990),
			wait = {
				5,
				5
			},
			animation = {
				to = 131,
				prefix = "ma_beach_3",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_beach_4",
			layer = 1,
			pos = v(173, 966),
			wait = {
				5,
				5
			},
			animation = {
				to = 131,
				prefix = "ma_beach_4",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_water_sparks_1",
			layer = 1,
			pos = v(66, 706),
			animation = {
				to = 33,
				prefix = "ma_waterSparks",
				from = 1
			}
		},
		{
			id = "ma_water_sparks_2",
			template = "ma_water_sparks_1",
			pos = v(3, 764)
		},
		{
			id = "ma_water_sparks_3",
			template = "ma_water_sparks_1",
			pos = v(17, 891)
		},
		{
			id = "ma_water_sparks_4",
			template = "ma_water_sparks_1",
			pos = v(7, 1006)
		},
		{
			id = "ma_water_sparks_5",
			template = "ma_water_sparks_1",
			pos = v(63, 933)
		},
		{
			id = "ma_water_sparks_6",
			template = "ma_water_sparks_1",
			pos = v(65, 829)
		},
		{
			id = "ma_water_sparks_7",
			template = "ma_water_sparks_1",
			pos = v(35, 1077)
		},
		{
			id = "ma_water_sparks_8",
			template = "ma_water_sparks_1",
			pos = v(105, 1031)
		},
		{
			id = "ma_water_sparks_9",
			template = "ma_water_sparks_1",
			pos = v(179, 1070)
		},
		{
			id = "ma_water_sparks_10",
			template = "ma_water_sparks_1",
			pos = v(260, 1020)
		},
		{
			id = "ma_water_sparks_11",
			template = "ma_water_sparks_1",
			pos = v(288, 1080)
		},
		{
			id = "ma_water_sparks_12",
			template = "ma_water_sparks_1",
			pos = v(396, 1058)
		},
		{
			id = "ma_water_sparks_13",
			template = "ma_water_sparks_1",
			pos = v(458, 964)
		},
		{
			id = "ma_water_sparks_14",
			template = "ma_water_sparks_1",
			pos = v(179, 670)
		},
		{
			id = "ma_water_sparks_15",
			template = "ma_water_sparks_1",
			pos = v(475, 1030)
		},
		{
			id = "ma_water_sparks_16",
			template = "ma_water_sparks_1",
			pos = v(223, 834)
		},
		{
			id = "ma_water_sparks_17",
			template = "ma_water_sparks_1",
			pos = v(307, 787)
		},
		{
			id = "ma_water_sparks_18",
			template = "ma_water_sparks_1",
			pos = v(325, 936)
		},
		{
			id = "ma_tentacle",
			layer = 1,
			pos = v(351, 1012),
			wait = {
				22,
				45
			},
			animation = {
				to = 140,
				prefix = "ma_tentacle",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_lighthouse_light",
			layer = 1,
			pos = v(122, 965),
			animation = {
				to = 119,
				prefix = "ma_lighthouse_light",
				from = 1
			}
		},
		{
			id = "ma_ship_left",
			layer = 2,
			pos = v(115, 742),
			wait = {
				15,
				30
			},
			animation = {
				to = 505,
				prefix = "ma_ship",
				from = 1
			}
		},
		{
			id = "ma_snapvine",
			layer = 2,
			pos = v(1345, 867),
			wait = {
				15,
				30
			},
			animation = {
				to = 20,
				prefix = "ma_snapvine",
				from = 1
			}
		},
		{
			id = "ma_vulture",
			layer = 3,
			pos = v(80, 480),
			wait = {
				20,
				40
			},
			animation = {
				to = 160,
				prefix = "ma_vulture",
				from = 1
			}
		},
		{
			loop = true,
			layer = 3,
			id = "ma_bat_1",
			path = ani_paths.ma_bat_1,
			wait = {
				3,
				10
			},
			animation = {
				to = 8,
				prefix = "ma_bat_loop",
				from = 1
			}
		},
		{
			loop = true,
			layer = 3,
			id = "ma_bat_2",
			path = ani_paths.ma_bat_2,
			wait = {
				3,
				10
			},
			animation = {
				to = 8,
				prefix = "ma_bat_loop",
				from = 1
			}
		},
		{
			loop = true,
			layer = 3,
			id = "ma_bat_3",
			path = ani_paths.ma_bat_3,
			wait = {
				3,
				10
			},
			animation = {
				to = 8,
				prefix = "ma_bat_loop",
				from = 1
			}
		},
		{
			loop = true,
			layer = 3,
			id = "ma_bat_4",
			path = ani_paths.ma_bat_4,
			wait = {
				3,
				10
			},
			animation = {
				to = 8,
				prefix = "ma_bat_loop",
				from = 1
			}
		},
		{
			loop = true,
			layer = 3,
			id = "ma_bat_5",
			path = ani_paths.ma_bat_5,
			wait = {
				3,
				10
			},
			animation = {
				to = 8,
				prefix = "ma_bat_loop",
				from = 1
			}
		},
		{
			loop = true,
			layer = 3,
			id = "ma_big_bird",
			path = ani_paths.ma_big_bird_1,
			wait = {
				10,
				20
			},
			animation = {
				to = 24,
				prefix = "ma_big_bird_loop",
				from = 1
			}
		},
		{
			loop = true,
			layer = 3,
			id = "ma_jungle_bird_1",
			path = ani_paths.ma_jungle_bird_1,
			wait = {
				10,
				20
			},
			scale = v(0.6, 0.6),
			animation = {
				to = 8,
				prefix = "ma_jungle_bird_1",
				from = 1
			}
		},
		{
			loop = true,
			layer = 3,
			id = "ma_jungle_bird_2",
			path = ani_paths.ma_jungle_bird_2,
			wait = {
				10,
				20
			},
			scale = v(0.6, 0.6),
			animation = {
				to = 8,
				prefix = "ma_jungle_bird_2",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_emberspike_cloud",
			layer = 3,
			pos = v(1535, 150),
			scale = v(1.4, 1.4),
			animation = {
				to = 118,
				prefix = "darktower_fog",
				from = 1
			}
		},
		{
			loop = true,
			id = "ma_cloud_1",
			layer = 3,
			alpha = 0.8,
			scale = v(0.8, 0.8),
			move = {
				time = 60,
				from = v(-250, 1020),
				to = v(2250, 1020)
			},
			wait = {
				1,
				60
			},
			animation = {
				to = 1,
				prefix = "ma_cloud",
				from = 1
			}
		},
		{
			id = "ma_cloud_2",
			template = "ma_cloud_1",
			alpha = 0.6,
			scale = v(0.6, 0.6),
			move = {
				time = 70,
				from = v(-200, 1040),
				to = v(2100, 1040)
			}
		},
		{
			id = "ma_cloud_3",
			template = "ma_cloud_1",
			alpha = 0.4,
			scale = v(0.7, 0.7),
			move = {
				time = 80,
				from = v(-200, 1090),
				to = v(2100, 1090)
			}
		},
		{
			id = "ma_cloud_4",
			template = "ma_cloud_1",
			alpha = 0.4,
			scale = v(-0.4, 0.4),
			move = {
				time = 83,
				from = v(-200, 1050),
				to = v(2100, 1050)
			}
		},
		{
			id = "ma_cloud_5",
			template = "ma_cloud_1",
			alpha = 0.5,
			scale = v(0.4, 0.4),
			move = {
				time = 90,
				from = v(-200, 1070),
				to = v(2100, 1070)
			}
		},
		{
			id = "ma_cloud_6",
			template = "ma_cloud_1",
			alpha = 0.7,
			scale = v(-0.5, 0.5),
			move = {
				time = 60,
				from = v(-200, 1020),
				to = v(2100, 1020)
			}
		},
		{
			id = "ma_cloud_7",
			template = "ma_cloud_1",
			alpha = 0.5,
			scale = v(-0.6, 0.6),
			move = {
				time = 70,
				from = v(-200, 1030),
				to = v(2100, 1030)
			}
		},
		{
			id = "ma_cloud_8",
			template = "ma_cloud_1",
			alpha = 0.6,
			scale = v(0.7, 0.7),
			move = {
				time = 65,
				from = v(-200, 1040),
				to = v(2100, 1040)
			}
		},
		{
			id = "ma_cloud_t1",
			template = "ma_cloud_1",
			alpha = 0.4,
			scale = v(0.7, 0.7),
			move = {
				time = 60,
				from = v(-200, 0),
				to = v(2100, 0)
			}
		},
		{
			id = "ma_cloud_t2",
			template = "ma_cloud_1",
			alpha = 0.6,
			scale = v(0.6, 0.6),
			move = {
				time = 70,
				from = v(-200, -20),
				to = v(2100, -20)
			}
		},
		{
			id = "ma_cloud_t3",
			template = "ma_cloud_1",
			alpha = 0.6,
			scale = v(0.8, 0.8),
			move = {
				time = 80,
				from = v(-200, 10),
				to = v(2100, 10)
			}
		},
		{
			id = "ma_cloud_t4",
			template = "ma_cloud_1",
			alpha = 0.4,
			scale = v(0.9, 0.9),
			move = {
				time = 90,
				from = v(-200, -5),
				to = v(2100, 0)
			}
		},
		{
			id = "ma_cloud_t5",
			template = "ma_cloud_1",
			alpha = 0.5,
			scale = v(0.7, 0.7),
			move = {
				time = 70,
				from = v(-200, 0),
				to = v(2100, 0)
			}
		},
		{
			id = "ma_cloud_t6",
			template = "ma_cloud_1",
			alpha = 0.4,
			scale = v(0.8, 0.8),
			move = {
				time = 80,
				from = v(-200, 10),
				to = v(2100, 10)
			}
		}
	},
	map_decos = {
		{
			layer = 3,
			id = "md_m1",
			image = "map_background_cover_1",
			trigger_level = 12,
			pos = v(1250, 378),
			fns = {
				unlock = deco_fn.m1.unlock
			}
		},
		{
			layer = 3,
			id = "md_m2",
			image = "map_background_cover_2",
			trigger_level = 14,
			pos = v(1460, 335),
			fns = {
				unlock = deco_fn.m2.unlock
			}
		},
		{
			layer = 2,
			id = "md_gate",
			image = "ma_gate_0001",
			trigger_level = 7,
			pos = v(680, 836),
			fns = {
				unlock = deco_fn.gate.unlock
			}
		},
		{
			loop = true,
			layer = 2,
			id = "ship",
			image = "big_ship_0001",
			trigger_level = 6,
			pos = v(0, 0),
			fns = {
				prepare = deco_fn.ship.prepare,
				unlock = deco_fn.ship.unlock,
				update = deco_fn.ship.update
			},
			animations = {
				down_stopped = {
					to = 225,
					prefix = "big_ship",
					from = 181
				},
				down = {
					to = 45,
					prefix = "big_ship",
					from = 1
				},
				down_side = {
					to = 90,
					prefix = "big_ship",
					from = 46
				},
				side = {
					to = 135,
					prefix = "big_ship",
					from = 91
				},
				side_stopped = {
					to = 180,
					prefix = "big_ship",
					from = 136
				}
			}
		}
	}
}
