-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/kr2/game_settings.lua

local GS = {}

GS.gameplay_tips_count = 30
GS.early_wave_reward_per_second = 1
GS.max_stars = 110
GS.max_difficulty = 3
GS.difficulty_enemy_hp_max_factor = {
	0.7,
	0.8,
	1
}
GS.difficulty_enemy_speed_factor = {
	1,
	1,
	1
}
GS.main_campaign_levels = 15
GS.last_level = 22
GS.endless_levels_count = 2
GS.level_ranges = {
	{
		1,
		15
	},
	{
		16,
		18
	},
	{
		19,
		21
	},
	{
		22
	}
}
GS.default_hero = "hero_alric"
GS.hero_xp_thresholds = {
	1300,
	5300,
	11300,
	19300,
	31800,
	46800,
	64300,
	88300,
	115300
}
GS.hero_level_expected = {
	1,
	1,
	2,
	2,
	3,
	4,
	5,
	5,
	6,
	7,
	8,
	9,
	9,
	10,
	10,
	8,
	9,
	10,
	8,
	9,
	10,
	10
}
GS.hero_level_expected[81] = 1
GS.hero_level_expected[82] = 1
GS.hero_level_expected_multipliers_below = {
	1,
	2
}
GS.hero_level_expected_multipliers_above = {
	0.5,
	0.25
}
GS.hero_xp_gain_per_difficulty_mode = {
	[DIFFICULTY_EASY] = 2.2,
	[DIFFICULTY_NORMAL] = 1.9,
	[DIFFICULTY_HARD] = 1
}
GS.skill_points_for_hero_level = {
	0,
	3,
	6,
	10,
	13,
	16,
	20,
	23,
	26,
	30
}
GS.endless_gems_for_wave = 1
GS.gems_factor_per_mode = {
	0.8,
	0.48,
	0.48
}
GS.gems_per_level = {
	100,
	150,
	200,
	250,
	250,
	300,
	300,
	300,
	400,
	400,
	400,
	500,
	500,
	500,
	500,
	500,
	500,
	500,
	500,
	500,
	500,
	500,
	500,
	500,
	500,
	500
}
GS.encyclopedia_tower_fmt = "encyclopedia_towers_01%02i"
GS.encyclopedia_tower_thumb_fmt = "encyclopedia_tower_thumbs_01%02i"
GS.encyclopedia_enemy_fmt = "encyclopedia_creeps_02%02i"
GS.encyclopedia_enemy_thumb_fmt = "encyclopedia_creep_thumbs_02%02i"
GS.encyclopedia_enemies = {
	{
		always_shown = true,
		name = "enemy_bouncer"
	},
	{
		name = "enemy_desert_raider"
	},
	{
		name = "enemy_desert_archer"
	},
	{
		name = "enemy_desert_wolf_small"
	},
	{
		name = "enemy_desert_wolf"
	},
	{
		name = "enemy_immortal"
	},
	{
		name = "enemy_fallen"
	},
	{
		name = "enemy_executioner"
	},
	{
		name = "enemy_scorpion"
	},
	{
		name = "enemy_wasp"
	},
	{
		name = "enemy_wasp_queen"
	},
	{
		name = "enemy_tremor"
	},
	{
		name = "enemy_munra"
	},
	{
		name = "enemy_jungle_spider_small"
	},
	{
		name = "enemy_jungle_spider_big"
	},
	{
		name = "enemy_cannibal"
	},
	{
		name = "enemy_hunter"
	},
	{
		name = "enemy_shaman_priest"
	},
	{
		name = "enemy_shaman_shield"
	},
	{
		name = "enemy_shaman_magic"
	},
	{
		name = "enemy_shaman_necro"
	},
	{
		name = "enemy_cannibal_zombie"
	},
	{
		name = "enemy_gorilla"
	},
	{
		name = "enemy_savage_bird_rider"
	},
	{
		name = "enemy_alien_breeder"
	},
	{
		name = "enemy_alien_reaper"
	},
	{
		name = "enemy_razorwing"
	},
	{
		name = "enemy_quetzal"
	},
	{
		name = "enemy_broodguard"
	},
	{
		name = "enemy_myrmidon"
	},
	{
		name = "enemy_blazefang"
	},
	{
		name = "enemy_nightscale"
	},
	{
		name = "enemy_darter"
	},
	{
		name = "enemy_brute"
	},
	{
		name = "enemy_savant"
	},
	{
		name = "enemy_efreeti_small"
	},
	{
		name = "eb_efreeti"
	},
	{
		name = "enemy_gorilla_small"
	},
	{
		name = "eb_gorilla"
	},
	{
		name = "enemy_umbra_minion"
	},
	{
		name = "eb_umbra"
	},
	{
		name = "enemy_greenfin"
	},
	{
		name = "enemy_deviltide"
	},
	{
		name = "enemy_redspine"
	},
	{
		name = "enemy_blacksurge"
	},
	{
		name = "enemy_bluegale"
	},
	{
		name = "enemy_bloodshell"
	},
	{
		name = "eb_leviathan"
	},
	{
		name = "enemy_halloween_zombie"
	},
	{
		name = "enemy_ghoul"
	},
	{
		name = "enemy_bat"
	},
	{
		name = "enemy_werewolf"
	},
	{
		name = "enemy_abomination"
	},
	{
		name = "enemy_lycan"
	},
	{
		name = "enemy_ghost"
	},
	{
		name = "enemy_phantom_warrior"
	},
	{
		name = "enemy_elvira"
	},
	{
		name = "eb_dracula"
	},
	{
		name = "enemy_sniper"
	},
	{
		name = "eb_saurian_king"
	}
}

for i = #GS.encyclopedia_enemies, 1, -1 do
	if GS.encyclopedia_enemies[i].target and GS.encyclopedia_enemies[i].target ~= KR_TARGET then
		table.remove(GS.encyclopedia_enemies, i)
	end
end

return GS
