-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/kr2-desktop/data/game_gui_data.lua

local V = require("klua.vector")
local v = V.v
local i18n = require("i18n")

local function CJK(default, zh, ja, kr)
	return i18n.cjk(i18n, default, zh, ja, kr)
end

return {
	notifications = {
		enemy_bouncer = {
			image = "encyclopedia_creeps_0201",
			icon = "alert_creep_notxt_0001",
			layout = N_ENEMY,
			icon_signals = {
				{
					"show-balloon",
					"TB_NOTI"
				}
			}
		},
		enemy_desert_raider = {
			image = "encyclopedia_creeps_0202",
			icon = "alert_creep_notxt_0002",
			layout = N_ENEMY
		},
		enemy_immortal = {
			image = "encyclopedia_creeps_0203",
			icon = "alert_creep_notxt_0003",
			layout = N_ENEMY
		},
		enemy_desert_wolf = {
			image = "encyclopedia_creeps_0209",
			icon = "alert_creep_notxt_0008",
			layout = N_ENEMY
		},
		enemy_desert_wolf_small = {
			image = "encyclopedia_creeps_0208",
			icon = "alert_creep_notxt_0007",
			layout = N_ENEMY
		},
		enemy_executioner = {
			image = "encyclopedia_creeps_0205",
			icon = "alert_creep_notxt_0005",
			layout = N_ENEMY
		},
		enemy_scorpion = {
			image = "encyclopedia_creeps_0211",
			icon = "alert_creep_notxt_0010",
			layout = N_ENEMY
		},
		enemy_wasp = {
			image = "encyclopedia_creeps_0212",
			icon = "alert_creep_notxt_0011",
			layout = N_ENEMY
		},
		enemy_wasp_queen = {
			image = "encyclopedia_creeps_0213",
			icon = "alert_creep_notxt_0012",
			layout = N_ENEMY
		},
		enemy_munra = {
			image = "encyclopedia_creeps_0206",
			icon = "alert_creep_notxt_0006",
			layout = N_ENEMY
		},
		enemy_tremor = {
			image = "encyclopedia_creeps_0210",
			icon = "alert_creep_notxt_0009",
			layout = N_ENEMY
		},
		enemy_desert_archer = {
			image = "encyclopedia_creeps_0204",
			icon = "alert_creep_notxt_0004",
			layout = N_ENEMY
		},
		enemy_jungle_spider_small = {
			image = "encyclopedia_creeps_0216",
			icon = "alert_creep_notxt_0013",
			layout = N_ENEMY
		},
		enemy_jungle_spider_big = {
			image = "encyclopedia_creeps_0217",
			icon = "alert_creep_notxt_0014",
			layout = N_ENEMY
		},
		enemy_jungle_spider_tiny = {
			image = "encyclopedia_creeps_0217",
			icon = "alert_creep_notxt_0001",
			layout = N_ENEMY
		},
		enemy_gorilla = {
			image = "encyclopedia_creeps_0225",
			icon = "alert_creep_notxt_0021",
			layout = N_ENEMY
		},
		enemy_savage_bird = {
			image = "encyclopedia_creeps_0226",
			icon = "alert_creep_notxt_0022",
			layout = N_ENEMY
		},
		enemy_savage_bird_rider = {
			image = "encyclopedia_creeps_0226",
			icon = "alert_creep_notxt_0022",
			layout = N_ENEMY
		},
		enemy_cannibal = {
			image = "encyclopedia_creeps_0218",
			icon = "alert_creep_notxt_0015",
			layout = N_ENEMY
		},
		enemy_hunter = {
			image = "encyclopedia_creeps_0219",
			icon = "alert_creep_notxt_0016",
			layout = N_ENEMY
		},
		enemy_shaman_necro = {
			image = "encyclopedia_creeps_0223",
			icon = "alert_creep_notxt_0020",
			layout = N_ENEMY
		},
		enemy_shaman_priest = {
			image = "encyclopedia_creeps_0220",
			icon = "alert_creep_notxt_0017",
			layout = N_ENEMY
		},
		enemy_shaman_magic = {
			image = "encyclopedia_creeps_0222",
			icon = "alert_creep_notxt_0019",
			layout = N_ENEMY
		},
		enemy_shaman_shield = {
			image = "encyclopedia_creeps_0221",
			icon = "alert_creep_notxt_0018",
			layout = N_ENEMY
		},
		enemy_alien_breeder = {
			image = "encyclopedia_creeps_0227",
			icon = "alert_creep_notxt_0023",
			layout = N_ENEMY
		},
		enemy_alien_reaper = {
			image = "encyclopedia_creeps_0228",
			icon = "alert_creep_notxt_0024",
			layout = N_ENEMY
		},
		enemy_brute = {
			image = "encyclopedia_creeps_0232",
			icon = "alert_creep_notxt_0028",
			layout = N_ENEMY
		},
		enemy_broodguard = {
			image = "encyclopedia_creeps_0229",
			icon = "alert_creep_notxt_0025",
			layout = N_ENEMY
		},
		enemy_darter = {
			image = "encyclopedia_creeps_0231",
			icon = "alert_creep_notxt_0027",
			layout = N_ENEMY
		},
		enemy_myrmidon = {
			image = "encyclopedia_creeps_0233",
			icon = "alert_creep_notxt_0029",
			layout = N_ENEMY
		},
		enemy_razorwing = {
			image = "encyclopedia_creeps_0236",
			icon = "alert_creep_notxt_0033",
			layout = N_ENEMY
		},
		enemy_quetzal = {
			image = "encyclopedia_creeps_0235",
			icon = "alert_creep_notxt_0031",
			layout = N_ENEMY
		},
		enemy_nightscale = {
			image = "encyclopedia_creeps_0234",
			icon = "alert_creep_notxt_0030",
			layout = N_ENEMY
		},
		enemy_savant = {
			image = "encyclopedia_creeps_0237",
			icon = "alert_creep_notxt_0032",
			layout = N_ENEMY
		},
		enemy_blazefang = {
			image = "encyclopedia_creeps_0230",
			icon = "alert_creep_notxt_0026",
			layout = N_ENEMY
		},
		enemy_greenfin = {
			image = "encyclopedia_creeps_0244",
			icon = "alert_creep_notxt_0034",
			layout = N_ENEMY
		},
		enemy_redspine = {
			image = "encyclopedia_creeps_0246",
			icon = "alert_creep_notxt_0038",
			layout = N_ENEMY
		},
		enemy_blacksurge = {
			image = "encyclopedia_creeps_0245",
			icon = "alert_creep_notxt_0037",
			layout = N_ENEMY
		},
		enemy_deviltide_shark = {
			image = "encyclopedia_creeps_0247",
			icon = "alert_creep_notxt_0039",
			layout = N_ENEMY
		},
		enemy_bluegale = {
			image = "encyclopedia_creeps_0243",
			icon = "alert_creep_notxt_0036",
			layout = N_ENEMY
		},
		enemy_bloodshell = {
			image = "encyclopedia_creeps_0242",
			icon = "alert_creep_notxt_0035",
			layout = N_ENEMY
		},
		enemy_halloween_zombie = {
			image = "encyclopedia_creeps_0253",
			icon = "alert_creep_notxt_0045",
			layout = N_ENEMY
		},
		enemy_ghoul = {
			image = "encyclopedia_creeps_0256",
			icon = "alert_creep_notxt_0048",
			layout = N_ENEMY
		},
		enemy_bat = {
			image = "encyclopedia_creeps_0249",
			icon = "alert_creep_notxt_0041",
			layout = N_ENEMY
		},
		enemy_werewolf = {
			image = "encyclopedia_creeps_0250",
			icon = "alert_creep_notxt_0042",
			layout = N_ENEMY
		},
		enemy_abomination = {
			image = "encyclopedia_creeps_0254",
			icon = "alert_creep_notxt_0046",
			layout = N_ENEMY
		},
		enemy_lycan = {
			image = "encyclopedia_creeps_0255",
			icon = "alert_creep_notxt_0047",
			layout = N_ENEMY
		},
		enemy_ghost = {
			image = "encyclopedia_creeps_0252",
			icon = "alert_creep_notxt_0044",
			layout = N_ENEMY
		},
		enemy_phantom_warrior = {
			image = "encyclopedia_creeps_0251",
			icon = "alert_creep_notxt_0043",
			layout = N_ENEMY
		},
		enemy_elvira = {
			image = "encyclopedia_creeps_0258",
			icon = "alert_creep_notxt_0049",
			layout = N_ENEMY
		},
		enemy_sniper = {
			image = "encyclopedia_creeps_0259",
			icon = "alert_creep_notxt_0050",
			layout = N_ENEMY
		},
		TOWER_DWAARP = {
			prefix = "TOWER_DWAARP",
			always = true,
			sub = "TOWER_ENGINEERS_SUBTITLE",
			image = "encyclopedia_towers_0116",
			layout = N_TOWER,
			seen = {
				"tower_dwaarp"
			}
		},
		TOWER_ARCHMAGE = {
			prefix = "TOWER_ARCHMAGE",
			always = true,
			sub = "TOWER_MAGES_SUBTITLE",
			image = "encyclopedia_towers_0115",
			layout = N_TOWER,
			seen = {
				"tower_archmage"
			}
		},
		TOWER_TEMPLARS = {
			prefix = "TOWER_TEMPLAR",
			always = true,
			sub = "TOWER_BARRACKS_SUBTITLE",
			image = "encyclopedia_towers_0118",
			layout = N_TOWER,
			seen = {
				"tower_templar"
			}
		},
		TOWER_TOTEM = {
			prefix = "TOWER_TOTEM",
			always = true,
			sub = "TOWER_ARCHERS_SUBTITLE",
			image = "encyclopedia_towers_0117",
			layout = N_TOWER,
			seen = {
				"tower_totem"
			}
		},
		TOWER_NECROMANCER = {
			prefix = "TOWER_NECROMANCER",
			always = true,
			sub = "TOWER_MAGES_SUBTITLE",
			image = "encyclopedia_towers_0119",
			layout = N_TOWER,
			seen = {
				"tower_necromancer"
			}
		},
		TOWER_MECH = {
			prefix = "TOWER_MECH",
			always = true,
			sub = "TOWER_ENGINEERS_SUBTITLE",
			image = "encyclopedia_towers_0120",
			layout = N_TOWER,
			seen = {
				"tower_mech"
			}
		},
		TOWER_ASSASINS_CROSSBOW = {
			always = true,
			layout = N_TOWER_2,
			images = {
				"encyclopedia_towers_0114",
				"encyclopedia_towers_0113"
			},
			prefixes = {
				"TOWER_ASSASSIN",
				"TOWER_CROSSBOW"
			},
			subs = {
				"TOWER_BARRACKS_SUBTITLE",
				"TOWER_ARCHERS_SUBTITLE"
			},
			seen = {
				"tower_assassin",
				"tower_crossbow"
			}
		},
		TOWER_LEVEL2 = {
			always = true,
			level = 2,
			layout = N_TOWER_4,
			images = {
				"encyclopedia_towers_0106",
				"encyclopedia_towers_0105",
				"encyclopedia_towers_0107",
				"encyclopedia_towers_0108"
			},
			seen = {
				"tower_barrack_2",
				"tower_archer_2",
				"tower_mage_2",
				"tower_engineer_2"
			}
		},
		TOWER_LEVEL3 = {
			always = true,
			level = 3,
			layout = N_TOWER_4,
			images = {
				"encyclopedia_towers_0110",
				"encyclopedia_towers_0109",
				"encyclopedia_towers_0111",
				"encyclopedia_towers_0112"
			},
			seen = {
				"tower_barrack_3",
				"tower_archer_3",
				"tower_mage_3",
				"tower_engineer_3"
			}
		},
		TIP_ARMOR = {
			icon = "alert_tip_notxt_0002",
			paper = "notifications_tips_slides_notxt_0001",
			always = true,
			layout = N_TIP
		},
		TIP_RALLY = {
			icon = "alert_tip_notxt_0001",
			paper = "notifications_tips_slides_notxt_0003",
			always = true,
			layout = N_TIP
		},
		TIP_ARMOR_MAGIC = {
			icon = "alert_tip_notxt_0003",
			paper = "notifications_tips_slides_notxt_0002",
			always = true,
			layout = N_TIP
		},
		TIP_STRATEGY = {
			icon = "alert_tip_notxt_0004",
			paper = "notifications_tips_slides_notxt_0004",
			always = true,
			layout = N_TIP
		},
		TIP_HEROES = {
			icon = "alert_tip_notxt_0006",
			paper = "notifications_tips_slides_notxt_0006",
			always = true,
			layout = N_TIP
		},
		TIP_UPGRADES = {
			icon = "alert_tip_notxt_0005",
			paper = "notifications_tips_slides_notxt_0005",
			always = false,
			layout = N_TIP
		},
		TIP_SURVIVAL = {
			icon = "alert_tip_notxt_0005",
			paper = "notifications_tips_slides_notxt_0009",
			always = false,
			layout = N_TIP
		},
		POWER_FIREBALL = {
			prefix = "POWER_FIREBALL",
			always = true,
			image = "tutorial_powers_polaroids_0002",
			layout = N_POWER,
			signals = {
				{
					"show-balloon",
					"TB_POWER1"
				},
				{
					"unlock-user-power",
					1
				}
			}
		},
		POWER_REINFORCEMENT = {
			prefix = "POWER_REINFORCEMENTS",
			always = true,
			image = "tutorial_powers_polaroids_0001",
			layout = N_POWER,
			signals = {
				{
					"show-balloon",
					"TB_POWER2"
				},
				{
					"unlock-user-power",
					2
				}
			}
		},
		TUTORIAL_1 = {
			next = "TUTORIAL_2",
			paper = "tutorial_slide1_notxt",
			always = true,
			layout = N_TUTORIAL
		},
		TUTORIAL_2 = {
			next = "TUTORIAL_3",
			paper = "tutorial_slide2_notxt",
			always = true,
			layout = N_TUTORIAL
		},
		TUTORIAL_3 = {
			always = true,
			paper = "tutorial_slide3_notxt",
			layout = N_TUTORIAL
		}
	},
	tutorial_balloons = {
		TB_BUILD = {
			origin = "world",
			image = "balloon_buildhere_bg",
			hide_cond = "tower_built",
			offset = v(621, 472)
		},
		TB_POWER1 = {
			hide_cond = "power_selected_1",
			balloon = "TB_ROAD",
			origin = "bottom-left",
			image = "balloon_newpower_bg",
			offset = v(251, -104)
		},
		TB_POWER2 = {
			hide_cond = "power_selected_2",
			balloon = "TB_ROAD",
			origin = "bottom-left",
			image = "balloon_newpower_bg",
			offset = v(317, -104)
		},
		TB_ROAD = {
			origin = "world",
			image = "balloon_taphere_bg",
			hide_cond = "power_used",
			offset = v(720, 437)
		},
		TB_NOTI = {
			origin = "top-left",
			image = "balloon_clickhere_bg",
			hide_cond = "noti_shown",
			offset = v(238, 105)
		},
		TB_START = {
			origin = "bottom-right",
			image = "balloon_startbattle_bg",
			hide_cond = "wave_sent",
			offset = v(-100, -88)
		},
		TB_WAVE = {
			origin = "top-right",
			image = "balloon_nextwave_bg",
			hide_cond = "wave_sent",
			offset = v(-158, 272)
		}
	},
	notification_slides = {
		TB_BUILD = {
			{
				vertical_align = "middle",
				fit_lines = 1,
				text = "BUILD HERE!",
				text_align = "center",
				pos = v(10, 6),
				size = v(160, 36),
				font_size = CJK(20, 24, nil, 28)
			}
		},
		TB_POWER1 = {
			{
				vertical_align = "middle",
				fit_lines = 1,
				text = "NEW POWER!",
				text_align = "center",
				pos = v(13, 6),
				size = v(156, 36),
				font_size = CJK(20, 24, nil, 28)
			}
		},
		TB_POWER2 = {
			{
				vertical_align = "middle",
				fit_lines = 1,
				text = "NEW POWER!",
				text_align = "center",
				pos = v(13, 6),
				size = v(156, 36),
				font_size = CJK(20, 24, nil, 28)
			}
		},
		TB_ROAD = {
			{
				vertical_align = "middle",
				fit_lines = 1,
				text = "CLICK ON THE ROAD",
				text_align = "center",
				pos = v(7, 6),
				size = v(176, 36),
				font_size = CJK(18, 21, nil, 25)
			}
		},
		TB_NOTI = {
			{
				vertical_align = "middle",
				fit_lines = 1,
				text = "CLICK HERE!",
				text_align = "center",
				pos = v(27, 7),
				size = v(155, 36),
				font_size = CJK(20, 24, nil, 28)
			}
		},
		TB_START = {
			{
				vertical_align = "middle",
				fit_lines = 2,
				line_height = 0.8,
				text_align = "center",
				text = "START BATTLE!",
				pos = v(8, 6),
				size = v(150, 36),
				font_size = CJK(18, 21, nil, 25)
			}
		},
		TB_WAVE = {
			{
				vertical_align = "middle",
				fit_lines = 1,
				text = "INCOMING NEXT WAVE!",
				text_align = "left",
				pos = v(12, 9),
				size = v(224, 26),
				font_size = CJK(18, 21, nil, 25)
			},
			{
				vertical_align = "middle",
				fit_lines = 1,
				text = "CLICK TO CALL IT EARLY",
				text_align = "left",
				pos = v(12, 35),
				size = v(224, 23),
				font_size = CJK(10, 14, nil, 20)
			}
		},
		TUTORIAL_1 = {
			{
				vertical_align = "middle",
				text = "Objective",
				font_size = 22,
				text_align = "center",
				pos = v(52, 60),
				size = v(380, 30),
				anchor = {
					y = 30
				}
			},
			{
				vertical_align = "middle",
				fit_lines = 1,
				text = "protect your lands from the enemy attacks.",
				font_size = 16,
				text_align = "center",
				line_height = 0.8,
				color = "gray",
				pos = v(47, 58),
				size = v(390, 18)
			},
			{
				vertical_align = "middle",
				fit_lines = 2,
				text = "build defensive towers along the road to stop them.",
				font_size = 12,
				text_align = "center",
				line_height = 0.8,
				color = "gray",
				pos = v(47, 78),
				size = v(390, 26)
			},
			{
				vertical_align = "middle",
				color = "black",
				font_size = 12,
				text_align = "center",
				text = "don't let enemies past this point.",
				pos = v(125, 128),
				size = v(135, 30),
				line_height = CJK(0.8, nil, 1.1)
			},
			{
				vertical_align = "middle",
				color = "black",
				font_size = 10,
				text_align = "center",
				text = "build towers to defend the road.",
				pos = v(299, 223),
				size = v(109, 32),
				line_height = CJK(0.8, nil, 1.1)
			},
			{
				vertical_align = "middle",
				color = "black",
				font_size = 11,
				text_align = "center",
				text = "earn gold by killing enemies.",
				pos = v(97, 258),
				size = v(106, 32),
				line_height = CJK(0.8, nil, 1.1)
			}
		},
		TUTORIAL_2 = {
			{
				text = "Tower construction",
				text_align = "center",
				r = 0,
				font_size = 22,
				pos = v(38, 50),
				size = v(389, 30),
				anchor = {
					y = 30
				}
			},
			{
				text = "Build towers on strategic points to stop the enemy hordes from getting through.",
				color = "gray",
				text_align = "center",
				r = 0,
				font_size = 14,
				pos = v(46, 52),
				size = v(373, 52)
			},
			{
				vertical_align = "middle",
				text_align = "center",
				text = "click these!",
				r = 0.17453292519943,
				font_size = 13,
				color = "dark_red",
				pos = v(26, 126),
				size = v(135, 30),
				line_height = CJK(0.8, nil, 1.1)
			},
			{
				vertical_align = "middle",
				text_align = "center",
				text = "this is a strategic point.",
				r = 0,
				font_size = 11,
				line_height = 0.8,
				color = "dark_red",
				pos = v(35, 195),
				size = v(123, 30)
			},
			{
				vertical_align = "middle",
				text_align = "center",
				text = "select the tower you want to build!",
				r = 0.087266462599716,
				font_size = 10,
				line_height = 0.8,
				color = "dark_red",
				pos = v(154, 244),
				size = v(154, 34)
			},
			{
				vertical_align = "middle",
				text_align = "center",
				text = "wOOt!",
				r = 0.17453292519943,
				font_size = 11,
				line_height = 0.8,
				color = "dark_red",
				pos = v(310, 126),
				size = v(135, 30)
			},
			{
				vertical_align = "middle",
				text_align = "center",
				text = "ready for action!",
				r = 0.17453292519943,
				font_size = 12,
				line_height = 0.8,
				color = "dark_red",
				pos = v(310, 221),
				size = v(135, 30)
			}
		},
		TUTORIAL_3 = {
			{
				text = "Basic Tower Types",
				font_size = 22,
				text_align = "center",
				pos = v(54, 55),
				size = v(482, 28),
				anchor = {
					y = 30
				}
			},
			{
				text = "There are four basic types of towers available.",
				color = "gray",
				fit_lines = 1,
				font_size = 16,
				text_align = "center",
				pos = v(54, 55),
				size = v(482, 22)
			},
			{
				text = "ARCHER TOWER",
				color = "dark_red",
				fit_lines = 1,
				font_size = 14,
				text_align = "center",
				pos = v(24, 94),
				size = v(127, 30)
			},
			{
				text = "BARRACKS",
				color = "dark_red",
				fit_lines = 1,
				font_size = 14,
				text_align = "center",
				pos = v(162, 94),
				size = v(127, 30)
			},
			{
				text = "MAGES’ GUILD",
				color = "dark_red",
				fit_lines = 1,
				font_size = 14,
				text_align = "center",
				pos = v(301, 94),
				size = v(127, 30)
			},
			{
				text = "ARTILLERY",
				color = "dark_red",
				fit_lines = 1,
				font_size = 14,
				text_align = "center",
				pos = v(441, 94),
				size = v(126, 30)
			},
			{
				vertical_align = "middle",
				fit_lines = 3,
				text = "good rate of fire",
				font_size = 12,
				text_align = "center",
				color = "gray",
				pos = v(33, 219),
				size = v(108, 30),
				line_height = CJK(0.7, nil, 1)
			},
			{
				vertical_align = "middle",
				fit_lines = 3,
				text = "soldiers block enemies",
				font_size = 12,
				text_align = "center",
				color = "gray",
				pos = v(170, 218),
				size = v(113, 33),
				line_height = CJK(0.7, nil, 1)
			},
			{
				vertical_align = "middle",
				fit_lines = 3,
				text = "high damage, armor piercing",
				font_size = 12,
				text_align = "center",
				color = "gray",
				pos = v(308, 219),
				size = v(113, 31),
				line_height = CJK(0.7, nil, 1)
			},
			{
				vertical_align = "middle",
				fit_lines = 3,
				text = "deals area damage",
				font_size = 12,
				text_align = "center",
				color = "gray",
				pos = v(448, 218),
				size = v(112, 31),
				line_height = CJK(0.7, nil, 1)
			}
		},
		TIP_ARMOR = {
			{
				text = "ARMORED ENEMIES!",
				fit_lines = 1,
				font_size = 24,
				pos = v(130, 50),
				size = v(320, 30)
			},
			{
				text = "some enemies wear armor of different strengths that protects them against non-magical attacks.",
				font_size = 16,
				fit_lines = 4,
				color = "gray",
				pos = v(130, CJK(80, nil, nil, 91)),
				size = v(320, 80)
			},
			{
				text = "resists damage from",
				text_align = "center",
				font_size = 15,
				color = "red",
				pos = v(151, 166),
				size = v(117, 42)
			},
			{
				text = "Armored enemies take less damage from marksmen, soldiers and artilleries.",
				text_align = "center",
				fit_lines = 3,
				font_size = 18,
				color = "gray",
				pos = v(44, 286),
				size = v(416, 70)
			}
		},
		TIP_ARMOR_MAGIC = {
			{
				text = "MAGIC RESISTANT ENEMIES!",
				fit_lines = 1,
				font_size = 24,
				pos = v(118, 81),
				size = v(337, 30),
				anchor = {
					y = 30
				}
			},
			{
				color = "gray",
				fit_lines = 4,
				text = "some enemies enjoy different levels of magic resistance that protects them against magical attacks.",
				font_size = 16,
				pos = v(118, CJK(78, 84, nil, 91)),
				size = v(338, 80),
				line_height = CJK(0.9, nil, 1)
			},
			{
				text = "resists damage from",
				text_align = "center",
				font_size = 15,
				color = "red",
				pos = v(196, 169),
				size = v(117, 42)
			},
			{
				text = "Magic resistant enemies take less damage from mages.",
				text_align = "center",
				fit_lines = 3,
				font_size = 18,
				color = "gray",
				pos = v(54, 286),
				size = v(400, 70)
			}
		},
		TIP_RALLY = {
			{
				text = "COMMAND YOUR TROOPS!",
				fit_lines = 1,
				font_size = 24,
				pos = v(118, 83),
				size = v(337, 30),
				anchor = {
					y = 30
				}
			},
			{
				color = "gray",
				fit_lines = 4,
				text = "you can adjust your soldiers rally point to make them defend a different area.",
				font_size = 16,
				pos = v(118, CJK(80, 86, nil, 91)),
				size = v(338, 80),
				line_height = CJK(0.9, nil, 1.1)
			},
			{
				text = "rally range",
				color = "blue",
				font_size = 12,
				text_align = "center",
				pos = v(254, 157),
				size = v(168, 21)
			},
			{
				color = "red",
				text = "select the rally point control",
				font_size = 12,
				text_align = "center",
				pos = v(71, 319),
				size = v(202, 42),
				line_height = CJK(0.9, nil, 1.1)
			},
			{
				color = "red",
				text = "select where you want to move your soldiers",
				font_size = 12,
				text_align = "center",
				pos = v(292, 319),
				size = v(173, 42),
				line_height = CJK(0.9, nil, 1.1)
			}
		},
		TIP_STRATEGY = {
			{
				text = "STRATEGY BASICS!",
				font_size = 24,
				text_align = "center",
				pos = v(53, 64),
				size = v(408, 34),
				anchor = {
					y = 30
				}
			},
			{
				color = "gray",
				fit_lines = 4,
				text = "Barracks are good for blocking the enemy but lack in attack power. Make sure you have enough firepower to support them!",
				font_size = 16,
				pos = v(60, 66),
				size = v(399, 65),
				line_height = CJK(0.9, nil, 1.1)
			},
			{
				vertical_align = "middle",
				color = "black",
				font_size = 12,
				text_align = "center",
				text = "Support your soldiers with ranged towers!",
				pos = v(157, 297),
				size = v(126, 52),
				line_height = CJK(0.8, nil, 1.1)
			}
		},
		TIP_HEROES = {
			{
				vertical_align = "middle",
				text = "Hero at your command!",
				font_size = 23,
				text_align = "center",
				pos = v(53, 60),
				size = v(408, 38),
				anchor = {
					y = 30
				}
			},
			{
				fit_lines = 3,
				color = "gray",
				font_size = 15,
				text_align = "center",
				text = "Heroes are elite units that can face strong enemies and support your forces.",
				pos = v(50, 62),
				size = v(408, 44),
				line_height = CJK(0.75, nil, 1.1)
			},
			{
				vertical_align = "middle",
				color = "black",
				font_size = 13,
				text_align = "center",
				text = "Select by clicking on the portrait or hero unit. Hotkey: space bar",
				pos = v(139, 113),
				size = v(205, 52),
				line_height = CJK(0.8, nil, 1.1)
			},
			{
				vertical_align = "middle",
				color = "black",
				font_size = 13,
				text_align = "center",
				text = "Click on the path to move the hero.",
				pos = v(297, 256),
				size = v(155, 43),
				line_height = CJK(0.8, nil, 1.1)
			},
			{
				color = "black",
				text = "Shows level, health and experience.",
				font_size = 15,
				text_align = "center",
				pos = v(34, 223),
				size = v(109, 69),
				line_height = CJK(0.8, nil, 1.1)
			},
			{
				fit_lines = 2,
				color = "gray",
				font_size = 17,
				text_align = "center",
				text = "Heroes gain experience every time they damage an enemy or use an ability.",
				pos = v(54, 310),
				size = v(400, 69),
				line_height = CJK(0.75, nil, 1.1)
			}
		},
		TIP_UPGRADES = {
			{
				vertical_align = "middle",
				text = "UPGRADES AND HEROES RESTRICTIONS!",
				font_size = 22,
				text_align = "left",
				pos = v(135, 35),
				size = v(310, 44)
			},
			{
				text = "iron and heroic challenges may have restrictions on upgrades!",
				font_size = 18,
				text_align = "center",
				pos = v(40, 108),
				size = v(194, 100)
			},
			{
				text = "check the stage description to see:",
				font_size = 17,
				text_align = "left",
				pos = v(48, 288),
				size = v(314, 26)
			},
			{
				text = "- max upgrade level allowed",
				font_size = 16,
				text_align = "left",
				pos = v(50, 310),
				size = v(286, 24)
			},
			{
				text = "- if heroes are allowed",
				font_size = 16,
				text_align = "left",
				pos = v(50, 328),
				size = v(286, 24)
			},
			{
				color = "red",
				text = "max lvl allowed",
				font_size = 10,
				text_align = "center",
				pos = v(396, 309),
				size = v(68, 20),
				line_height = CJK(0.8, nil, 1.1)
			},
			{
				color = "red",
				text = "no heroes",
				font_size = 10,
				text_align = "center",
				pos = v(405, 334),
				size = v(50, 20),
				line_height = CJK(0.8, nil, 1.1)
			}
		},
		TIP_SURVIVAL = {
			{
				vertical_align = "middle",
				text = "Survival mode!",
				font_size = 28,
				text_align = "center",
				pos = v(62, 41),
				size = v(380, 44)
			},
			{
				text = "Face an endless unrelenting enemy force and try to defeat as many as possible to compete for the best score!",
				font_size = 18,
				text_align = "center",
				pos = v(178, 103),
				size = v(274, 91)
			},
			{
				text = "Earn huge bonus points and gold by calling waves earlier!",
				font_size = 18,
				text_align = "center",
				pos = v(62, 236),
				size = v(216, 79)
			},
			{
				vertical_align = "middle-caps",
				text = "+1000",
				font_size = 24,
				text_align = "left",
				font_name = "numbers_bold",
				pos = v(394, 287),
				size = v(50, 25),
				colors = {
					text = {
						0,
						0,
						0,
						200
					}
				}
			},
			{
				vertical_align = "middle-caps",
				text = "+1000",
				font_size = 24,
				text_align = "left",
				font_name = "numbers_bold",
				pos = v(392, 285),
				size = v(50, 25),
				colors = {
					text = {
						255,
						255,
						255,
						255
					}
				}
			}
		}
	},
	tower_menu_button_places = {
		v(24, 20),
		v(124, 20),
		v(24, 120),
		v(124, 120),
		v(74, 2),
		v(12, 34),
		v(136, 34),
		v(128, 118),
		v(74, 140)
	},
	tower_menu_power_places = {
		v(29, 3),
		v(47, 10),
		v(53, 27)
	},
	range_center_offset = v(0, -12),
	damage_icons = {
		default = "base_info_icons_0001",
		magic = "base_info_icons_0002",
		sword = "base_info_icons_0001",
		fireball = "base_info_icons_0012",
		arrow = "base_info_icons_0010",
		shot = "base_info_icons_0011",
		[DAMAGE_TRUE] = "base_info_icons_0001",
		[DAMAGE_PHYSICAL] = "base_info_icons_0001",
		[DAMAGE_MAGICAL] = "base_info_icons_0002",
		[DAMAGE_EXPLOSION] = "base_info_icons_0001"
	}
}
