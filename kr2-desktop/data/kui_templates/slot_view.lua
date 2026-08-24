-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/kr2-desktop/data/kui_templates/slot_view.lua

return {
	class = "SlotView",
	id = "slot_3",
	pos = {
		x = 503,
		y = 357
	},
	size = {
		x = 0,
		y = 0
	},
	children = {
		{
			id = "slot_used",
			class = "KView",
			size = {
				x = 0,
				y = 0
			},
			children = {
				{
					hover_image_name = "main_menu_slot_3_hover_en",
					class = "KImageButton",
					id = "button_slot",
					default_image_name = "main_menu_slot_3_normal_en",
					click_image_name = "main_menu_slot_3_down_en",
					size = {
						x = 159,
						y = 54
					}
				},
				{
					hover_image_name = "main_menu_slot_close_hover",
					class = "KImageButton",
					id = "button_slot_delete",
					default_image_name = "main_menu_slot_close_normal",
					click_image_name = "main_menu_slot_close_down",
					pos = {
						x = 159,
						y = 0
					},
					size = {
						x = 34,
						y = 30
					}
				},
				{
					class = "KView",
					id = "99013",
					pos = {
						x = 0,
						y = 54
					},
					size = {
						x = 193,
						y = 0
					},
					children = {
						{
							image_name = "main_menu_icon_star",
							class = "KImageView",
							id = "99014",
							pos = {
								x = 0,
								y = 0
							},
							size = {
								x = 28,
								y = 27
							}
						},
						{
							image_name = "main_menu_icon_heroic",
							class = "KImageView",
							id = "99015",
							pos = {
								x = 96.5,
								y = 0
							},
							size = {
								x = 28,
								y = 27
							}
						},
						{
							image_name = "main_menu_icon_iron",
							class = "KImageView",
							id = "99016",
							pos = {
								x = 144.75,
								y = 0
							},
							size = {
								x = 28,
								y = 27
							}
						},
						{
							text = "0/110",
							id = "l_stars",
							class = "KLabel",
							text_align = "left",
							font_size = 14,
							font_name = "Comic Book Italic",
							pos = {
								x = 28,
								y = 6
							},
							size = {
								x = 64.333333333333,
								y = 27
							}
						},
						{
							text = "0",
							id = "l_heroic",
							class = "KLabel",
							text_align = "left",
							font_size = 14,
							font_name = "Comic Book Italic",
							pos = {
								x = 126.5,
								y = 6
							},
							size = {
								x = 64.333333333333,
								y = 27
							}
						},
						{
							text = "0",
							id = "l_iron",
							class = "KLabel",
							text_align = "left",
							font_size = 14,
							font_name = "Comic Book Italic",
							pos = {
								x = 171.75,
								y = 6
							},
							size = {
								x = 64.333333333333,
								y = 27
							}
						}
					}
				}
			}
		},
		{
			id = "slot_empty",
			class = "KView",
			size = {
				x = 0,
				y = 0
			},
			children = {
				{
					hover_image_name = "main_menu_new_game_hover_en",
					class = "KImageButton",
					id = "button_slot_new",
					default_image_name = "main_menu_new_game_normal_en",
					click_image_name = "main_menu_new_game_down_en",
					pos = {
						x = 0,
						y = 18
					},
					size = {
						x = 193,
						y = 54
					}
				}
			}
		}
	}
}
