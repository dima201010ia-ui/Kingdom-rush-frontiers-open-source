-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/features.lua

local _ft = {
	libs = {
		"steam_api"
	},
	platform_services = {
		achievements = {
			src = "platform_services_steam",
			name = "steam",
			enabled = "true",
			params = {
				app_id = 458710
			}
		},
		iap = {
			src = "platform_services_iap_premium",
			name = "iap_premium",
			enabled = true
		},
		leaderboards = {
			src = "platform_services_steam",
			name = "steam",
			enabled = "true",
			params = {
				app_id = 458710
			}
		}
	}
}

return _ft
