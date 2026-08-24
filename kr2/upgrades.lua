-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/kr2/upgrades.lua

local E = require("entity_db")

require("constants")

local function T(name)
	return E:get_template(name)
end

local epsilon = 1e-09
local upgrades = {}

upgrades.max_level = nil
upgrades.levels = {}
upgrades.levels.archers = 0
upgrades.levels.barracks = 0
upgrades.levels.mages = 0
upgrades.levels.engineers = 0
upgrades.levels.rain = 0
upgrades.levels.reinforcements = 0
upgrades.display_order = {
	"archers",
	"barracks",
	"mages",
	"engineers",
	"rain",
	"reinforcements"
}
upgrades.list = {
	archer_improved_aim = {
		range_factor = 1.1,
		class = "archers",
		icon = 1,
		price = 1,
		level = 1
	},
	archer_lumbermill = {
		cost_reduction = 10,
		class = "archers",
		icon = 2,
		price = 1,
		level = 2
	},
	archer_focused_aim = {
		damage_factor = 1.05,
		class = "archers",
		icon = 3,
		price = 2,
		level = 3
	},
	archer_master_marksmanship = {
		range_factor = 1.05,
		damage_factor = 1.1,
		class = "archers",
		icon = 4,
		price = 2,
		level = 4
	},
	archer_twin_shot = {
		class = "archers",
		chance = 0.1,
		icon = 5,
		price = 3,
		level = 5
	},
	barrack_defensive_techniques = {
		class = "barracks",
		armor_increase = 0.1,
		icon = 6,
		price = 1,
		level = 1
	},
	barrack_boot_camp = {
		class = "barracks",
		icon = 7,
		price = 1,
		level = 2,
		health_factor = 1.1 - epsilon
	},
	barrack_esprit_des_corps = {
		rally_range_factor = 1.2,
		regen_factor = 1.2,
		class = "barracks",
		icon = 8,
		price = 2,
		level = 3
	},
	barrack_veteran_squad = {
		respawn_reduction = 2,
		class = "barracks",
		armor_increase = 0.1,
		icon = 9,
		price = 2,
		level = 4
	},
	barrack_courage = {
		regen_cooldown = 1,
		regen_factor = 0.01,
		class = "barracks",
		icon = 10,
		price = 3,
		level = 5
	},
	mage_rune_of_power = {
		range_factor = 1.1,
		class = "mages",
		icon = 11,
		price = 1,
		level = 1
	},
	mage_spell_of_penetration = {
		class = "mages",
		chance = 0.1,
		icon = 12,
		price = 1,
		level = 2
	},
	mage_eldrich_power = {
		damage_factor = 1.1,
		class = "mages",
		icon = 13,
		price = 2,
		level = 3
	},
	mage_wizard_academy = {
		class = "mages",
		cost_factor = 0.9,
		icon = 14,
		price = 2,
		level = 4
	},
	mage_brilliance = {
		class = "mages",
		icon = 15,
		price = 3,
		level = 5,
		damage_factors = {
			1,
			1.05,
			1.1,
			1.14,
			1.18,
			1.21,
			1.24,
			1.27,
			1.3
		}
	},
	engineer_smoothbore = {
		range_factor = 1.1,
		class = "engineers",
		icon = 16,
		price = 1,
		level = 1
	},
	engineer_alchemical_powder = {
		class = "engineers",
		chance = 0.1,
		icon = 17,
		price = 1,
		level = 2
	},
	engineer_improved_ordnance = {
		damage_factor = 1.1,
		class = "engineers",
		icon = 18,
		price = 2,
		level = 3
	},
	engineer_gnomish_tinkering = {
		cooldown_factor = 0.9,
		class = "engineers",
		icon = 19,
		price = 3,
		level = 4
	},
	engineer_shock_and_awe = {
		class = "engineers",
		chance = 0.2,
		icon = 20,
		price = 3,
		level = 5
	},
	rain_burning_skies = {
		cooldown_reduction = 5,
		class = "rain",
		damage_increase = 20,
		icon = 21,
		price = 2,
		level = 1
	},
	rain_scorched_earth = {
		price = 2,
		icon = 22,
		class = "rain",
		level = 2
	},
	rain_fire_and_brimstone = {
		cooldown_reduction = 5,
		class = "rain",
		icon = 23,
		price = 3,
		level = 3
	},
	rain_conflagration = {
		range_factor = 1.25,
		spread_increase = 10,
		class = "rain",
		damage_increase = 60,
		icon = 24,
		price = 3,
		level = 4
	},
	rain_armaggedon = {
		cooldown_reduction = 10,
		class = "rain",
		icon = 25,
		price = 3,
		level = 5
	},
	reinforcement_level_1 = {
		class = "reinforcements",
		template_name = "re_farmer_well_fed",
		icon = 26,
		price = 2,
		level = 1
	},
	reinforcement_level_2 = {
		class = "reinforcements",
		template_name = "re_conscript",
		icon = 27,
		price = 3,
		level = 2
	},
	reinforcement_level_3 = {
		class = "reinforcements",
		template_name = "re_warrior",
		icon = 28,
		price = 3,
		level = 3
	},
	reinforcement_level_4 = {
		class = "reinforcements",
		template_name = "re_legionnaire",
		icon = 29,
		price = 3,
		level = 4
	},
	reinforcement_level_5 = {
		class = "reinforcements",
		template_name = "re_legionnaire_ranged",
		icon = 30,
		price = 4,
		level = 5
	}
}

function upgrades:set_levels(levels)
	for k, v in pairs(levels) do
		self.levels[k] = v
	end
end

function upgrades:has_upgrade(name)
	local u = self.list[name]

	return u and u.level <= self.levels[u.class] and (not self.max_level or u.level <= self.max_level)
end

function upgrades:get_upgrade(name)
	local u = self.list[name]

	if not u or u.level > self.levels[u.class] or not self.max_level or u.level > self.max_level then
		return nil
	else
		return u
	end
end

function upgrades:get_total_stars()
	local total = 0

	for k, v in pairs(self.list) do
		total = total + v.price
	end

	return total
end

function upgrades:patch_templates(max_level)
	if max_level then
		self.max_level = max_level
	end

	local u

	u = self:get_upgrade("archer_improved_aim")

	if u then
		for _, n in pairs({
			"tower_archer_1",
			"tower_archer_2",
			"tower_archer_3",
			"tower_totem",
			"tower_crossbow"
		}) do
			T(n).attacks.range = math.ceil(T(n).attacks.range * u.range_factor)
		end
	end

	u = self:get_upgrade("archer_lumbermill")

	if u then
		for _, n in pairs({
			"tower_archer_1",
			"tower_archer_2",
			"tower_archer_3"
		}) do
			T(n).tower.price = T(n).tower.price - u.cost_reduction
		end
	end

	u = self:get_upgrade("archer_focused_aim")

	if u then
		for _, n in pairs({
			"arrow_1",
			"arrow_2",
			"arrow_3",
			"arrow_crossbow",
			"axe_totem"
		}) do
			T(n).bullet.damage_min = math.ceil(T(n).bullet.damage_min * u.damage_factor)
			T(n).bullet.damage_max = math.ceil(T(n).bullet.damage_max * u.damage_factor)
		end
	end

	u = self:get_upgrade("archer_master_marksmanship")

	if u then
		for _, n in pairs({
			"tower_archer_1",
			"tower_archer_2",
			"tower_archer_3",
			"tower_totem",
			"tower_crossbow"
		}) do
			T(n).attacks.range = math.ceil(T(n).attacks.range * u.range_factor)
		end

		for _, n in pairs({
			"arrow_1",
			"arrow_2",
			"arrow_3",
			"arrow_crossbow",
			"axe_totem"
		}) do
			T(n).bullet.damage_min = math.ceil(T(n).bullet.damage_min * u.damage_factor)
			T(n).bullet.damage_max = math.ceil(T(n).bullet.damage_max * u.damage_factor)
		end
	end

	u = self:get_upgrade("barrack_defensive_techniques")

	if u then
		for _, n in pairs({
			"soldier_militia",
			"soldier_footmen",
			"soldier_knight",
			"soldier_templar",
			"soldier_assassin"
		}) do
			T(n).health.armor = T(n).health.armor + u.armor_increase
		end
	end

	u = self:get_upgrade("barrack_boot_camp")

	if u then
		for _, n in pairs({
			"soldier_militia",
			"soldier_footmen",
			"soldier_knight",
			"soldier_templar",
			"soldier_assassin"
		}) do
			T(n).health.hp_max = math.ceil(T(n).health.hp_max * u.health_factor)
		end
	end

	u = self:get_upgrade("barrack_esprit_des_corps")

	if u then
		for _, n in pairs({
			"soldier_militia",
			"soldier_footmen",
			"soldier_knight",
			"soldier_templar",
			"soldier_assassin"
		}) do
			T(n).regen.health = math.ceil(T(n).regen.health * u.regen_factor)
		end

		for _, n in pairs({
			"tower_barrack_1",
			"tower_barrack_2",
			"tower_barrack_3",
			"tower_templar",
			"tower_assassin"
		}) do
			T(n).barrack.rally_range = math.ceil(T(n).barrack.rally_range * u.rally_range_factor)
		end
	end

	u = self:get_upgrade("barrack_veteran_squad")

	if u then
		for _, n in pairs({
			"soldier_militia",
			"soldier_footmen",
			"soldier_knight",
			"soldier_templar",
			"soldier_assassin"
		}) do
			T(n).health.armor = T(n).health.armor + u.armor_increase
			T(n).health.dead_lifetime = T(n).health.dead_lifetime - u.respawn_reduction
		end
	end

	u = self:get_upgrade("mage_rune_of_power")

	if u then
		for _, n in pairs({
			"tower_mage_1",
			"tower_mage_2",
			"tower_mage_3",
			"tower_archmage",
			"tower_necromancer"
		}) do
			T(n).attacks.range = math.ceil(T(n).attacks.range * u.range_factor)
		end
	end

	u = self:get_upgrade("mage_eldrich_power")

	if u then
		for _, n in pairs({
			"bolt_1",
			"bolt_2",
			"bolt_3",
			"bolt_archmage",
			"bolt_necromancer"
		}) do
			T(n).bullet.damage_min = math.ceil(T(n).bullet.damage_min * u.damage_factor)
			T(n).bullet.damage_max = math.ceil(T(n).bullet.damage_max * u.damage_factor)
		end
	end

	u = self:get_upgrade("mage_wizard_academy")

	if u then
		for _, p in pairs({
			T("tower_archmage").powers.twister,
			T("tower_archmage").powers.blast,
			T("tower_necromancer").powers.pestilence,
			T("tower_necromancer").powers.rider
		}) do
			p.price_base = math.floor(p.price_base * u.cost_factor)
			p.price_inc = math.floor(p.price_inc * u.cost_factor)
		end
	end

	u = self:get_upgrade("engineer_smoothbore")

	if u then
		for _, n in pairs({
			"tower_engineer_1",
			"tower_engineer_2",
			"tower_engineer_3",
			"tower_dwaarp"
		}) do
			T(n).attacks.range = math.ceil(T(n).attacks.range * u.range_factor)
		end

		T("soldier_mecha").attacks.list[1].max_range = T("soldier_mecha").attacks.list[1].max_range * u.range_factor
		T("soldier_mecha").attacks.list[2].max_range = T("soldier_mecha").attacks.list[2].max_range * u.range_factor
	end

	u = self:get_upgrade("engineer_alchemical_powder")

	if u then
		for _, n in pairs({
			"bomb",
			"bomb_dynamite",
			"bomb_black",
			"bomb_mecha"
		}) do
			T(n).up_alchemical_powder_chance = u.chance
		end
	end

	u = self:get_upgrade("engineer_improved_ordnance")

	if u then
		for _, n in pairs({
			"bomb",
			"bomb_dynamite",
			"bomb_black",
			"bomb_mecha"
		}) do
			T(n).bullet.damage_min = math.ceil(T(n).bullet.damage_min * u.damage_factor)
			T(n).bullet.damage_max = math.ceil(T(n).bullet.damage_max * u.damage_factor)
		end

		T("tower_dwaarp").attacks.list[1].damage_min = T("tower_dwaarp").attacks.list[1].damage_min * u.damage_factor
		T("tower_dwaarp").attacks.list[1].damage_max = T("tower_dwaarp").attacks.list[1].damage_max * u.damage_factor
	end

	u = self:get_upgrade("engineer_gnomish_tinkering")

	if u then
		for _, a in pairs({
			T("tower_dwaarp").attacks.list[2],
			T("tower_dwaarp").attacks.list[3],
			T("soldier_mecha").attacks.list[2],
			T("soldier_mecha").attacks.list[3]
		}) do
			a.cooldown = a.cooldown * u.cooldown_factor
		end
	end

	u = self:get_upgrade("engineer_shock_and_awe")

	if u then
		for _, n in pairs({
			"bomb",
			"bomb_dynamite",
			"bomb_black",
			"bomb_mecha",
			"pirate_watchtower_bomb"
		}) do
			T(n).up_shock_and_awe_chance = u.chance
		end
	end

	T("power_fireball_control").user_power.level = self.levels.rain
	u = self:get_upgrade("rain_burning_skies")

	if u then
		T("power_fireball_control").cooldown = T("power_fireball_control").cooldown - u.cooldown_reduction
		T("power_fireball").bullet.damage_min = T("power_fireball").bullet.damage_min + u.damage_increase
		T("power_fireball").bullet.damage_max = T("power_fireball").bullet.damage_max + u.damage_increase
	end

	u = self:get_upgrade("rain_scorched_earth")

	if u then
		T("power_fireball").scorch_earth = true
	end

	u = self:get_upgrade("rain_fire_and_brimstone")

	if u then
		T("power_fireball_control").cooldown = T("power_fireball_control").cooldown - u.cooldown_reduction
		T("power_fireball_control").fireball_count = 5
	end

	u = self:get_upgrade("rain_conflagration")

	if u then
		T("power_fireball_control").max_spread = T("power_fireball_control").max_spread + u.spread_increase
		T("power_fireball").bullet.damage_radius = T("power_fireball").bullet.damage_radius * u.range_factor
		T("power_fireball").bullet.damage_min = T("power_fireball").bullet.damage_min + u.damage_increase
		T("power_fireball").bullet.damage_max = T("power_fireball").bullet.damage_max + u.damage_increase
		T("power_scorched_water").aura.damage_min = 20
		T("power_scorched_water").aura.damage_max = 30
		T("power_scorched_water").aura.duration = 10
		T("power_scorched_earth").aura.damage_min = 20
		T("power_scorched_earth").aura.damage_max = 30
		T("power_scorched_earth").aura.duration = 10
	end

	u = self:get_upgrade("rain_armaggedon")

	if u then
		T("power_fireball_control").cooldown = T("power_fireball_control").cooldown - u.cooldown_reduction
		T("power_fireball_control").cataclysm_count = 5
	end

	if self.levels.reinforcements > 0 then
		local rl = math.min(self.levels.reinforcements, self.max_level)

		u = self:get_upgrade("reinforcement_level_" .. rl)

		if u then
			for i = 1, 3 do
				E:set_template("re_current_" .. i, T(u.template_name .. "_" .. i))
			end
		end
	end
end

return upgrades
