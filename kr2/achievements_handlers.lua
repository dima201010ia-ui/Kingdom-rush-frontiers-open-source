-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/kr2/achievements_handlers.lua

local log = require("klua.log"):new("achievements_handlers")
local signal = require("hump.signal")
local bit = require("bit")
local E = require("entity_db")
local GS = require("game_settings")
local storage = require("storage")
local ah = {}

function ah:register_handlers(A)
	self.A = A

	local function reg(name, fn)
		signal.register(name, function(...)
			fn(ah, ...)
		end)
	end

	reg("boss-killed", ah.h_boss_killed)
	reg("count-group-changed", ah.h_count_group_changed)
	reg("early-wave-called", ah.h_early_wave_called)
	reg("entity-damaged", ah.h_entity_damaged)
	reg("entity-healed", ah.h_entity_healed)
	reg("entity-killed", ah.h_entity_killed)
	reg("entity-revived", ah.h_entity_revived)
	reg("game-victory", ah.h_game_victory)
	reg("health-regen", ah.h_health_regen)
	reg("hero-level-increased", ah.h_hero_level_increased)
	reg("mod-applied", ah.h_mod_applied)
	reg("next-wave-ready", ah.h_next_wave_ready)
	reg("next-wave-sent", ah.h_next_wave_sent)
	reg("notification-shown", ah.h_notification_shown)
	reg("power-used", ah.h_power_used)
	reg("rally-point-changed", ah.h_rally_point_changed)
	reg("soldier-attack", ah.h_soldier_attack)
	reg("soldier-dodge", ah.h_soldier_dodge)
	reg("soldier-pickpocket", ah.h_soldier_pickpocket)
	reg("tower-removed", ah.h_tower_removed)
	reg("tower-spawn", ah.h_tower_spawn)
	reg("tower-upgraded", ah.h_tower_upgraded)
	reg("moon-changed", ah.h_moon_changed)
	reg("enemy-reached-goal", ah.h_enemy_reached_goal)
end

function ah:h_boss_killed(entity)
	if entity.template_name == "eb_efreeti" then
		self.A:got("GENIEINABOTTLE")
	elseif entity.template_name == "eb_gorilla" then
		self.A:got("KONGICIDE")
	elseif entity.template_name == "eb_umbra" then
		self.A:got("YOUSHALLNOTPASS")
	elseif entity.template_name == "eb_leviathan" then
		self.A:got("SQUIDINITSINK")
	elseif entity.template_name == "eb_dracula" then
		self.A:got("DEAD_AND_LOVING_IT")
	elseif entity.template_name == "eb_saurian_king" then
		self.A:got("LIZARD_KING")
	end
end

function ah:h_count_group_changed(entity, group_count, increment)
	if entity.count_group.name == "skeletons" and increment > 0 then
		local count = #table.filter(game.store.entities, function(k, e)
			return (e.template_name == "soldier_skeleton" or e.template_name == "soldier_skeleton_knight") and e.health and not e.health.dead
		end)

		if entity.health and not entity.health.dead then
			count = count + 1
		end

		self.A:high_check("NECROPOLIS", count)
	end
end

function ah:h_early_wave_called(group, reward, remaining_time)
	local count, ad = self.A:inc("FEARLESS", 1)

	if game.store and game.store.wave_group_total > 1 and count == game.store.wave_group_total - 1 then
		self.A:got(ad.name)
	end

	self.A:lap_check("IMPATIENT")
	self.A:inc_check("DARING", 1)
end

function ah:h_entity_damaged(entity, damage)
	if damage and damage.source_id then
		local s = game.store.entities[damage.source_id]

		if s and s.template_name == "bolt_blast" then
			self.A:inc_check("OVERCHARGED", damage.value)
		end
	end
end

function ah:h_entity_healed(mod, entity, amount)
	if entity.template_name == "soldier_dwarf" then
		self.A:high_check("OAKENSHIELD", entity.health.hp_healed)
	end
end

function ah:h_entity_killed(entity, damage)
	if entity then
		if entity.template_name == "enemy_alien_breeder" or entity.template_name == "enemy_alien_reaper" then
			self.A:inc_check("COLONIALMARINE", 1)
		end

		if entity.template_name == "enemy_cannibal_zombie" then
			self.A:inc_check("THEWALKINGDEAD", 1)
		end

		if entity.template_name == "enemy_gunboat" then
			self.A:inc_check("INTHENAVY", 1)
		end

		if entity.template_name == "enemy_bluegale" then
			for _, e in pairs(game.store.entities) do
				if e.template_name == "mod_bluegale_heal" and e.modifier.target_id == entity.id then
					self.A:inc_check("PERFECTSTORM", 1)

					break
				end
			end
		end

		if entity.template_name == "enemy_deviltide_shark" then
			self.A:inc_check("JAWS", 1)
		end

		if entity.water and entity.water.last_terrain_type and entity.water.last_terrain_type == TERRAIN_WATER and entity.template_name ~= "enemy_cannibal" and entity.template_name ~= "enemy_hunter" then
			self.A:inc_check("WATERWORLD", 1)
		end

		if entity.cliff and entity.cliff.last_terrain_type == TERRAIN_CLIFF then
			self.A:inc_check("ISTHATWILHELM", 1)
		end

		if entity.enemy then
			self.A:inc_check("FIRST_BLOOD", 1)
			self.A:inc_check("BLOODLUST", 1)
			self.A:inc_check("SLAYER", 1)
			self.A:inc_check("MULTIKILL", 1)
		end

		if entity.soldier and not entity.hero then
			self.A:inc_check("CANNON_FODDER", 1)
		end

		if entity.hero then
			self.A:inc("SANDWARRIOR")
			self.A:inc("TARZANBOY")
			self.A:inc("CAVEMAN")
		end

		if entity.template_name == "enemy_phantom_warrior" and not entity.aura_applied then
			self.A:inc_check("DEAD_PEOPLE")
		end

		if damage and damage.source_id then
			local s = game.store.entities[damage.source_id]

			if s then
				if entity.soldier and s.template_name == "sand_worm" then
					self.A:inc("MUADIB")
				end

				if entity.enemy then
					if s.template_name == "power_fireball" then
						self.A:inc_check("DEATH_FROM_ABOVE")
					end

					if s.template_name == "bomb_pirate_camp" then
						self.A:inc_check("THEBLACKPEARL")
					end

					if s.template_name == "drill" then
						self.A:inc_check("DEADFROMBELOW")
					end

					if s.template_name == "soldier_death_rider" then
						self.A:inc_check("GRIMREAPER")
					end

					if s.template_name == "bomb_mecha" then
						self.A:inc_check("OPTIMUSPRIME")
					end

					if s.template_name == "missile_mecha" then
						self.A:inc_check("OPTIMUSPRIME")
					end

					if s.template_name == "carnivorous_plant" then
						self.A:inc_check("FEEDMESEYMOUR")
					end

					if s.template_name == "mod_blood" then
						self.A:inc_check("LETITBLEED")
					end

					if s.template_name == "mod_beastmaster_lash" then
						self.A:inc_check("LETITBLEED")
					end
				end
			end
		end

		if entity.template_name == "enemy_halloween_zombie" and entity.moon and entity.moon.active then
			self.A:inc_check("ZOMBIE_WALK", 1)
		end

		if game.store.level_idx == 82 and (entity.template_name == "enemy_alien_reaper" or entity.template_name == "enemy_alien_breeder") then
			self.A:inc_check("WANT_PIECE_OF_ME")
		end
	end
end

function ah:h_entity_revived(entity, count)
	if entity.template_name == "soldier_templar" then
		self.A:high_check("HIGHLANDER", count)
	end
end

function ah:h_game_victory(store)
	if store.level_idx == 1 then
		self.A:got("ANDSOITBEGINS")
	end

	if store.level_idx == 4 and store.level_mode == GAME_MODE_CAMPAIGN and self.A:get_count("MUADIB") == 0 then
		self.A:got("MUADIB")
	end

	if store.level_idx == 20 and store.level_mode == GAME_MODE_CAMPAIGN and self.A:get_count("GHOSTBUSTERS") == 0 then
		self.A:got("GHOSTBUSTERS")
	end

	if store.level_terrain_type == TERRAIN_STYLE_DESERT then
		if self.A:get_count("SANDWARRIOR") == 0 then
			self.A:got("SANDWARRIOR")
		end
	elseif store.level_terrain_type == TERRAIN_STYLE_JUNGLE then
		if self.A:get_count("TARZANBOY") == 0 then
			self.A:got("TARZANBOY")
		end
	elseif store.level_terrain_type == TERRAIN_STYLE_UNDERGROUND and self.A:get_count("CAVEMAN") == 0 then
		self.A:got("CAVEMAN")
	end

	local slot = storage:load_slot()
	local go = store.game_outcome
	local stars = 0

	if slot and slot.levels then
		for i = 1, GS.last_level do
			local l = slot.levels[i]

			if not l then
				log.debug("level %i missing in slot.levels", i)
			elseif i == go.level_idx then
				local l_stars = l.stars or 0
				local go_stars = go.stars or 0

				stars = stars + (go.level_mode == GAME_MODE_CAMPAIGN and math.max(l_stars, go_stars) or l_stars) + ((go.level_mode == GAME_MODE_HEROIC or l[GAME_MODE_HEROIC]) and 1 or 0) + ((go.level_mode == GAME_MODE_IRON or l[GAME_MODE_IRON]) and 1 or 0)
			else
				stars = stars + (l.stars or 0) + (l[GAME_MODE_HEROIC] and 1 or 0) + (l[GAME_MODE_IRON] and 1 or 0)
			end

			log.paranoid("level:%s stars:%s", i, stars)
		end
	end

	self.A:high_check("EARN15_STARS", stars)
	self.A:high_check("EARN30_STARS", stars)
	self.A:high_check("EARN45_STARS", stars)

	local done_c, done_h, done_i, done_g = true, true, true, true

	if slot and slot.levels then
		for i = 1, GS.main_campaign_levels do
			local lv = table.deepclone(slot.levels[i])

			if not lv then
				done_c, done_h, done_i, done_g = false, false, false, false

				break
			end

			if i == store.level_idx then
				lv[store.level_mode] = store.level_difficulty
			end

			done_c = done_c and lv[GAME_MODE_CAMPAIGN] ~= nil
			done_h = done_h and lv[GAME_MODE_HEROIC] ~= nil
			done_i = done_i and lv[GAME_MODE_IRON] ~= nil
			done_g = done_g and lv[GAME_MODE_CAMPAIGN] == DIFFICULTY_HARD
		end
	end

	if store.level_mode == GAME_MODE_CAMPAIGN then
		if done_c then
			self.A:got("GREAT_DEFENDER")
		end

		if done_g then
			self.A:got("DEFEAT_COMPLETE_HARD")
		end
	elseif store.level_mode == GAME_MODE_HEROIC and done_h then
		self.A:got("HEROIC_DEFENDER")
	elseif store.level_mode == GAME_MODE_IRON and done_i then
		self.A:got("IRON_DEFENDER")
	end
end

function ah:h_health_regen(entity, amount)
	if entity and entity.soldier then
		self.A:inc_check("DIE_HARD", amount)
	end
end

function ah:h_hero_level_increased(entity)
	self.A:got("HEROLEVELUP")

	if entity.hero then
		self.A:high_check("HERO_OF_THE_DAY", entity.hero.level)
	end

	if entity.hero then
		self.A:high_check("LEGENDARY", entity.hero.level)
	end
end

function ah:h_mod_applied(mod, target)
	if mod.template_name == "mod_weakness_totem" then
		self.A:inc_check("NOCOUNTRYFORWEAKMAN", 1)
	end

	if mod.template_name == "mod_silence_totem" then
		local names = {
			"enemy_munra",
			"enemy_shaman_shield",
			"enemy_shaman_magic",
			"enemy_shaman_priest",
			"enemy_shaman_necro",
			"enemy_darter",
			"enemy_nightscale",
			"enemy_savant"
		}

		if target and table.contains(names, target.template_name) then
			self.A:inc_check("SILENCEPLEASE", 1)
		end
	end

	if mod.template_name == "mod_crossbow_eagle" then
		local active = self.A:count_active_mods("mod_crossbow_eagle", function(m)
			return m.modifier.source_id == mod.modifier.source_id
		end)

		self.A:high_check("HAWKEYE", active + 1 - 1)
	end

	if mod.template_name == "mod_lava" and not self.A:have("POPULARBBQ") then
		self.A:high_check("POPULARBBQ", self.A:count_active_mods("mod_lava") + 1)
	end
end

function ah:h_next_wave_ready(group)
	if group.group_idx > 1 then
		self.A:lap_start("IMPATIENT")
	end
end

function ah:h_next_wave_sent(group)
	if game.store.level_idx == 82 then
		self.A:inc_check("COME_ON_YOU_APES")
	end
end

function ah:h_notification_shown(n)
	if n.layout == N_ENEMY or n.template == "enemy" then
		self.A:inc_check("WHATS_THAT", 1)
	end
end

function ah:h_power_used(power_id)
	if power_id == 1 then
		self.A:inc_check("ARMAGGEDON", 1)
	end
end

function ah:h_rally_point_changed(tower)
	self.A:inc_check("TACTICIAN", 1)
end

function ah:h_soldier_attack(entity, attack, signal_prop)
	if not self.A:have("TWISTANDSHOUT") and signal_prop == "whirlwind" then
		self.A:inc_check("TWISTANDSHOUT", 1)
	end
end

function ah:h_soldier_dodge(entity)
	self.A:inc_check("DODGETHIS", 1)
end

function ah:h_soldier_pickpocket(entity, amount)
	if entity.template_name == "soldier_assassin" then
		self.A:inc_check("ALIBABA", amount)
	end
end

function ah:h_tower_removed(tower)
	return
end

function ah:h_tower_spawn(tower, entity)
	if entity and entity.soldier then
		self.A:inc_check("GI_JOE", 1)
	end

	if not self.A:have("MONEYTALKS") and string.find(tower.tower.type, "mercenaries_") then
		self.A:inc_check("MONEYTALKS", 1)
	end
end

function ah:h_tower_upgraded(new_tower, old_tower)
	if not self.A:have("LANDOWNER") then
		local holders = E:filter(game.store.entities, "tower_holder")

		if #holders == 1 and holders[1].id == old_tower.id then
			self.A:got("LANDOWNER")
		end
	end

	if old_tower.tower_holder and not new_tower.tower_holder then
		self.A:inc_check("EASY_TOWER_BUILDER", 1)
		self.A:inc_check("MEDIUM_TOWER_BUILDER", 1)
		self.A:inc_check("HARD_TOWER_BUILDER", 1)
	end

	if not self.A:have("UPGRADE_LEVEL3") then
		if new_tower.template_name == "tower_archer_3" then
			self.A:flag_check("UPGRADE_LEVEL3", 1)
		end

		if new_tower.template_name == "tower_barrack_3" then
			self.A:flag_check("UPGRADE_LEVEL3", 2)
		end

		if new_tower.template_name == "tower_engineer_3" then
			self.A:flag_check("UPGRADE_LEVEL3", 4)
		end

		if new_tower.template_name == "tower_mage_3" then
			self.A:flag_check("UPGRADE_LEVEL3", 8)
		end
	end

	if not self.A:have("SPECIALIZATION") then
		if new_tower.template_name == "tower_archmage" then
			self.A:flag_check("SPECIALIZATION", 1)
		end

		if new_tower.template_name == "tower_assassin" then
			self.A:flag_check("SPECIALIZATION", 2)
		end

		if new_tower.template_name == "tower_crossbow" then
			self.A:flag_check("SPECIALIZATION", 4)
		end

		if new_tower.template_name == "tower_dwaarp" then
			self.A:flag_check("SPECIALIZATION", 8)
		end

		if new_tower.template_name == "tower_mech" then
			self.A:flag_check("SPECIALIZATION", 16)
		end

		if new_tower.template_name == "tower_necromancer" then
			self.A:flag_check("SPECIALIZATION", 32)
		end

		if new_tower.template_name == "tower_templar" then
			self.A:flag_check("SPECIALIZATION", 64)
		end

		if new_tower.template_name == "tower_totem" then
			self.A:flag_check("SPECIALIZATION", 128)
		end
	end

	if not self.A:have("DIVIDEANDCONQUER") then
		if new_tower.template_name == "tower_archmage" then
			self.A:flag_check("DIVIDEANDCONQUER", 1)
		end

		if new_tower.template_name == "tower_assassin" then
			self.A:flag_check("DIVIDEANDCONQUER", 2)
		end

		if new_tower.template_name == "tower_crossbow" then
			self.A:flag_check("DIVIDEANDCONQUER", 4)
		end

		if new_tower.template_name == "tower_dwaarp" then
			self.A:flag_check("DIVIDEANDCONQUER", 8)
		end

		if new_tower.template_name == "tower_mech" then
			self.A:flag_check("DIVIDEANDCONQUER", 16)
		end

		if new_tower.template_name == "tower_necromancer" then
			self.A:flag_check("DIVIDEANDCONQUER", 32)
		end

		if new_tower.template_name == "tower_templar" then
			self.A:flag_check("DIVIDEANDCONQUER", 64)
		end

		if new_tower.template_name == "tower_totem" then
			self.A:flag_check("DIVIDEANDCONQUER", 128)
		end
	end

	if not self.A:have("LANDMANAGER") and old_tower.tower_holder and old_tower.tower_holder.blocked then
		self.A:inc_check("LANDMANAGER", 1)
	end

	if new_tower.template_name == "tower_mech" then
		self.A:inc_check("MECHWARRIOR")
	end
end

function ah:h_moon_changed(moon_active, store)
	if moon_active then
		self._moon_start_lives = store.lives
	elseif self._moon_start_lives == store.lives and store.lives > 0 then
		self.A:inc_check("MOONWALKER", 1)
	end
end

function ah:h_enemy_reached_goal(entity)
	if entity.template_name == "enemy_ghost" then
		self.A:inc("GHOSTBUSTERS")
	end
end

return ah
