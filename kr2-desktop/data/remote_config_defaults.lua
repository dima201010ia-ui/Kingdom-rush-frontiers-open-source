-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/kr2-desktop/data/remote_config_defaults.lua

local d = {
	ask_for_rating_level = 4,
	premium_show_more_games = false,
	show_free_gems_for_video_button = true,
	ask_for_rating = true,
	premium_show_news = false,
	test_token = "000",
	link_more_games = {
		["net.kalio.test.android.krf.DEVEL"] = "http://bit.ly/2EDuvaQ",
		["com.ironhidegames.android.kingdomrushfrontiers.amazon"] = "amzn://apps/android?p=com.ironhidegames.android.kingdomrushfrontiers.amazon&showAll=1",
		["com.ironhidegames.android.kingdomrushfrontiers"] = "https://play.google.com/store/apps/dev?id=9170275381782328383"
	},
	url_facebook = {
		default = "http://www.facebook.com/ironhidegames"
	},
	url_privacy_policy = {
		default = "https://www.ironhidegames.com/PrivacyPolicy"
	},
	url_strategy_guide = {
		default = "http://www.kingdomrushfrontiers.com/strategy.php"
	},
	url_terms_of_service = {
		default = "https://www.ironhidegames.com/TermsOfService"
	},
	url_twitter = {
		default = "https://twitter.com/ironhidegames"
	},
	ads_prio = {
		"admob",
		"adcolony",
		"chartboost"
	},
	products_gpiab = {
		"premium_unlock",
		"gem_pack_bag",
		"gem_pack_barrel",
		"gem_pack_chest",
		"gem_pack_wagon",
		"gem_pack_vault",
		"hero_pirate",
		"hero_wizard",
		"hero_priest",
		"hero_giant",
		"hero_alien",
		"hero_dragon",
		"hero_crab",
		"hero_monk",
		"hero_van_helsing",
		"hero_dracolich",
		"hero_minotaur",
		"hero_monkey_god",
		"offer1",
		"offer2",
		"offer3",
		"offer4",
		"offer5",
		"offer6",
		"offer7",
		"offerall"
	},
	hero_sales_gpiab = {},
	offers_gpiab = {},
	default_offer_conditions = {
		offer_was_shown = false,
		seconds_elapsed_since_any_offer_purchased = 172800,
		offer_includes_hero_on_sale = false,
		offer_was_purchased = false,
		seconds_elapsed_since_any_offer_shown = 172800,
		offer_includes_purchased_product = false,
		player_made_purchases = "any",
		offer_includes_unpurchased_products_count = 1
	},
	default_offer_params = {
		seconds_icon_is_visible = 172800
	},
	product_premium_unlock = {
		premium = true,
		skus = {
			default = "com.ironhidegames.kingdomrush.frontiers.googlepass"
		}
	},
	product_gem_pack_handful = {
		reward = 100,
		play_ad = true,
		gems = true
	},
	product_gem_pack_bag = {
		reward = 1500,
		gems = true,
		consumable = true,
		skus = {
			gpiab = "com.ironhidegames.frontiers.gempackbag"
		}
	},
	product_gem_pack_barrel = {
		reward = 2500,
		gems = true,
		consumable = true,
		skus = {
			gpiab = "com.ironhidegames.frontiers.gempackbarrel"
		}
	},
	product_gem_pack_chest = {
		reward = 6000,
		gems = true,
		consumable = true,
		skus = {
			gpiab = "com.ironhidegames.frontiers.gempackchest"
		}
	},
	product_gem_pack_wagon = {
		reward = 14000,
		gems = true,
		consumable = true,
		skus = {
			gpiab = "com.ironhidegames.frontiers.gempackwagon"
		}
	},
	product_gem_pack_vault = {
		reward = 40000,
		gems = true,
		consumable = true,
		skus = {
			gpiab = "com.ironhidegames.frontiers.gempackvault"
		}
	},
	product_hero_alien = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.heroalien"
		}
	},
	product_hero_crab = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.herokarkinos"
		}
	},
	product_hero_dracolich = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.dracolich"
		}
	},
	product_hero_dragon = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.herodragon"
		}
	},
	product_hero_giant = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.herogolem"
		}
	},
	product_hero_minotaur = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.herominotaur2"
		}
	},
	product_hero_monk = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.heromonk"
		}
	},
	product_hero_monkey_god = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.heromonkeygod"
		}
	},
	product_hero_pirate = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.heropirate"
		}
	},
	product_hero_priest = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.heropriest"
		}
	},
	product_hero_van_helsing = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.herovanhelsing2"
		}
	},
	product_hero_wizard = {
		skus = {
			gpiab = "com.ironhidegames.frontiers.herowizard"
		}
	},
	product_offer1 = {
		skus = {
			gpiab = "com.ironhidegames.kingdomrush.frontiers.offer.heroalien"
		},
		includes = {
			"hero_alien"
		},
		conditions = {
			player_reached_sessions = 5,
			player_reached_level = 5
		}
	},
	product_offer2 = {
		skus = {
			gpiab = "com.ironhidegames.kingdomrush.frontiers.offer.heropack1"
		},
		includes = {
			"hero_van_helsing",
			"hero_priest"
		},
		conditions = {
			player_reached_sessions = 4,
			player_reached_level = 4
		}
	},
	product_offer3 = {
		skus = {
			gpiab = "com.ironhidegames.kingdomrush.frontiers.offer.heropack2"
		},
		includes = {
			"hero_monk",
			"hero_pirate"
		},
		conditions = {
			player_reached_sessions = 4,
			player_reached_level = 4
		}
	},
	product_offer4 = {
		skus = {
			gpiab = "com.ironhidegames.kingdomrush.frontiers.offer.heropack3"
		},
		includes = {
			"hero_minotaur",
			"hero_wizard"
		},
		conditions = {
			player_reached_sessions = 4,
			player_reached_level = 4
		}
	},
	product_offer5 = {
		skus = {
			gpiab = "com.ironhidegames.kingdomrush.frontiers.offer.heropack4"
		},
		includes = {
			"hero_giant",
			"hero_crab",
			"hero_minotaur"
		},
		conditions = {
			player_reached_sessions = 4,
			player_reached_level = 4
		}
	},
	product_offer6 = {
		skus = {
			gpiab = "com.ironhidegames.kingdomrush.frontiers.offer.heropack5"
		},
		includes = {
			"hero_dracolich",
			"hero_dragon"
		},
		conditions = {
			player_reached_sessions = 5,
			player_reached_level = 8
		}
	},
	product_offer7 = {
		skus = {
			gpiab = "com.ironhidegames.kingdomrush.frontiers.offer.heromonkeygod2"
		},
		includes = {
			"hero_monkey_god"
		},
		conditions = {
			offer_was_shown = "any",
			player_reached_level = 5,
			player_reached_sessions = 5
		}
	},
	product_offerall = {
		persistent = true,
		skus = {
			gpiab = "com.ironhidegames.kingdomrush.frontiers.offer.heropackall2"
		},
		includes = {
			"hero_dracolich",
			"hero_dragon",
			"hero_giant",
			"hero_crab",
			"hero_minotaur",
			"hero_wizard",
			"hero_monk",
			"hero_pirate",
			"hero_van_helsing",
			"hero_priest",
			"hero_alien",
			"hero_monkey_god"
		},
		conditions = {
			seconds_elapsed_since_any_offer_purchased = 0,
			player_reached_level = 4,
			offer_includes_hero_on_sale = "any",
			player_reached_sessions = 4,
			seconds_elapsed_since_any_offer_shown = 0,
			offer_includes_purchased_product = "any",
			offer_includes_unpurchased_products_count = 2
		}
	},
	product_offerallold = {
		skus = {
			gpiab = "com.ironhidegames.kingdomrush.frontiers.offer.heropackall"
		},
		includes = {
			"hero_dracolich",
			"hero_dragon",
			"hero_giant",
			"hero_crab",
			"hero_minotaur",
			"hero_wizard",
			"hero_monk",
			"hero_pirate",
			"hero_van_helsing",
			"hero_priest",
			"hero_alien",
			"hero_monkey_god"
		},
		conditions = {
			player_reached_level = 999
		}
	}
}

return d
