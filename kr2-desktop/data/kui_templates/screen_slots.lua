-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/kr2-desktop/data/kui_templates/screen_slots.lua

return {
	class = "KWindow",
	id = "99001",
	colors = {
		background = {
			200,
			200,
			200,
			255
		}
	},
	scale = {
		x = 0.7111111111111111,
		y = 0.7111111111111111
	},
	size = {
		x = 1440,
		y = 1080
	},
	children = {
		{
			class = "KImageView",
			id = "bg_view",
			image_name = "main_menu_bg",
			anchor = {
				x = 960,
				y = 540
			},
			colors = {},
			pos = {
				x = 720,
				y = 540
			},
			size = {
				x = 1920,
				y = 1080
			},
			children = {
				{
					id = "main_menu_subtitle_cn",
					hidden = true,
					class = "KImageView",
					image_name = "main_menu_subtitle_cn"
				},
				{
					id = "slot_panel",
					class = "KImageView",
					image_name = "main_menu_slots_bg",
					anchor = {
						x = 0,
						y = 521
					},
					pos = {
						x = 0,
						y = 1100
					},
					size = {
						x = 726,
						y = 521
					},
					children = {
						{
							id = "slot_1",
							class = "SlotView",
							template_name = "slot_view",
							slot_idx = 1,
							pos = {
								x = 503,
								y = 141
							}
						},
						{
							id = "slot_2",
							class = "SlotView",
							template_name = "slot_view",
							slot_idx = 2,
							pos = {
								x = 503,
								y = 248
							}
						},
						{
							id = "slot_3",
							class = "SlotView",
							template_name = "slot_view",
							slot_idx = 3,
							pos = {
								x = 503,
								y = 357
							}
						}
					}
				},
				{
					id = "banner",
					class = "KImageView",
					image_name = "main_menu_banner_bg",
					anchor = {
						x = 0,
						y = 521
					},
					pos = {
						x = 160,
						y = 1100
					},
					size = {
						x = 726,
						y = 521
					},
					children = {
						{
							hover_image_name = "main_menu_start_hover_en",
							image_name = "main_menu_start_normal_en",
							class = "KImageButton",
							id = "banner_button_start",
							default_image_name = "main_menu_start_normal_en",
							click_image_name = "main_menu_start_down_en",
							pos = {
								x = 183,
								y = 53
							},
							size = {
								x = 277,
								y = 123
							}
						},
						{
							hover_image_name = "main_menu_options_hover_en",
							image_name = "main_menu_options_normal_en",
							class = "KImageButton",
							id = "banner_button_options",
							default_image_name = "main_menu_options_normal_en",
							click_image_name = "main_menu_options_down_en",
							pos = {
								x = 210,
								y = 186
							},
							size = {
								x = 203,
								y = 72
							}
						},
						{
							hover_image_name = "main_menu_credits_hover_en",
							image_name = "main_menu_credits_normal_en",
							class = "KImageButton",
							id = "banner_button_credits",
							default_image_name = "main_menu_credits_normal_en",
							click_image_name = "main_menu_credits_down_en",
							pos = {
								x = 261,
								y = 274
							},
							size = {
								x = 145,
								y = 49
							}
						},
						{
							hover_image_name = "main_menu_quit_hover_en",
							image_name = "main_menu_quit_normal_en",
							class = "KImageButton",
							id = "banner_button_quit",
							default_image_name = "main_menu_quit_normal_en",
							click_image_name = "main_menu_quit_down_en",
							pos = {
								x = 246,
								y = 339
							},
							size = {
								x = 124,
								y = 60
							}
						}
					}
				},
				{
					text_key = "LEGAL_GOV_APPROVAL",
					hidden = true,
					font_size = 20,
					line_height = 1,
					class = "GGLabel",
					id = "gov_approval_view",
					font_name = "sans",
					size = {
						x = 1920,
						y = 18
					},
					pos = {
						x = 0,
						y = 1020
					},
					colors = {
						text = {
							255,
							255,
							255,
							255
						}
					}
				},
				{
					text_key = "LEGAL_HEALTH_ADVICE",
					hidden = true,
					font_size = 20,
					line_height = 1,
					class = "GGLabel",
					id = "health_advice_view",
					font_name = "sans",
					size = {
						x = 1920,
						y = 18
					},
					pos = {
						x = 0,
						y = 1046
					},
					colors = {
						text = {
							255,
							255,
							255,
							255
						}
					}
				},
				{
					class = "PopUpView",
					id = "delete_view",
					colors = {
						background = {
							0,
							0,
							0,
							80
						}
					},
					size = {
						x = 1920,
						y = 1080
					},
					children = {
						{
							class = "KImageView",
							id = "99029",
							image_name = "homeMenu_confirm_menu_0001",
							anchor = {
								x = 360,
								y = 130
							},
							colors = {},
							pos = {
								x = 960,
								y = 490
							},
							size = {
								x = 960,
								y = 260
							},
							children = {
								{
									font_size = 28.125,
									text = "¿Borrar el espacio?",
									text_key = "DELETE SLOT?",
									fit_step = 0.5,
									class = "GGOptionsLabel",
									id = "99030",
									font_name = "h",
									anchor = {
										x = 280,
										y = 15
									},
									colors = {
										text = {
											233,
											233,
											178,
											255
										}
									},
									pos = {
										x = 360,
										y = 86.666666666667
									},
									shader_args = {
										{
											thickness = 2.53125,
											glow_color = {
												0,
												0,
												0,
												1
											}
										}
									},
									shaders = {
										"p_glow"
									},
									size = {
										x = 560,
										y = 30
									},
									text_shadow_offset = {
										x = 1,
										y = 1
									}
								},
								{
									hover_image_name = "options_button_bg_0002",
									label_font_name = "h",
									label_font_size = 23.90625,
									image_name = "options_button_bg_0001",
									label_text = "Si",
									label_text_key = "Yes",
									class = "GGOptionsButton",
									id = "delete_button_yes",
									default_image_name = "options_button_bg_0001",
									click_image_name = "options_button_bg_0002",
									anchor = {
										x = 97,
										y = 0
									},
									label_colors = {
										default = {
											233,
											233,
											178,
											255
										},
										hover = {
											246,
											228,
											132,
											255
										}
									},
									label_shader_args = {
										{
											thickness = 2.53125,
											glow_color = {
												0,
												0,
												0,
												1
											}
										}
									},
									label_shaders = {
										"p_glow"
									},
									pos = {
										x = 250,
										y = 130
									},
									size = {
										x = 194,
										y = 76
									}
								},
								{
									hover_image_name = "options_button_bg_0002",
									label_font_name = "h",
									label_font_size = 23.90625,
									image_name = "options_button_bg_0001",
									label_text = "No",
									label_text_key = "No",
									class = "GGOptionsButton",
									id = "delete_button_no",
									default_image_name = "options_button_bg_0001",
									click_image_name = "options_button_bg_0002",
									anchor = {
										x = 97,
										y = 0
									},
									label_colors = {
										default = {
											233,
											233,
											178,
											255
										},
										hover = {
											246,
											228,
											132,
											255
										}
									},
									label_shader_args = {
										{
											thickness = 2.53125,
											glow_color = {
												0,
												0,
												0,
												1
											}
										}
									},
									label_shaders = {
										"p_glow"
									},
									pos = {
										x = 470,
										y = 130
									},
									size = {
										x = 194,
										y = 76
									}
								}
							}
						}
					}
				},
				{
					class = "PopUpView",
					id = "quit_view",
					colors = {
						background = {
							0,
							0,
							0,
							80
						}
					},
					size = {
						x = 1920,
						y = 1080
					},
					children = {
						{
							class = "KImageView",
							id = "99036",
							image_name = "homeMenu_confirm_menu_0001",
							anchor = {
								x = 360,
								y = 130
							},
							colors = {},
							pos = {
								x = 960,
								y = 540
							},
							size = {
								x = 960,
								y = 260
							},
							children = {
								{
									text = "ARE YOU SURE YOU WANT TO QUIT?",
									font_size = 28.125,
									text_key = "ARE YOU SURE YOU WANT TO QUIT?",
									fit_step = 0.5,
									class = "GGOptionsLabel",
									id = "99037",
									font_name = "h",
									anchor = {
										x = 280,
										y = 15
									},
									colors = {
										text = {
											233,
											233,
											178,
											255
										}
									},
									pos = {
										x = 360,
										y = 86.666666666667
									},
									size = {
										x = 560,
										y = 30
									},
									text_shadow_offset = {
										x = 1,
										y = 1
									}
								},
								{
									hover_image_name = "options_button_bg_0002",
									label_font_name = "h",
									label_font_size = 23.90625,
									label_text = "Si",
									image_name = "options_button_bg_0001",
									label_text_key = "Yes",
									class = "GGOptionsButton",
									id = "quit_button_yes",
									default_image_name = "options_button_bg_0001",
									click_image_name = "options_button_bg_0002",
									anchor = {
										x = 97,
										y = 0
									},
									label_colors = {
										default = {
											233,
											233,
											178,
											255
										},
										hover = {
											246,
											228,
											132,
											255
										}
									},
									pos = {
										x = 250,
										y = 130
									},
									size = {
										x = 194,
										y = 76
									}
								},
								{
									hover_image_name = "options_button_bg_0002",
									label_font_name = "h",
									label_font_size = 23.90625,
									label_text = "No",
									image_name = "options_button_bg_0001",
									label_text_key = "No",
									class = "GGOptionsButton",
									id = "quit_button_no",
									default_image_name = "options_button_bg_0001",
									click_image_name = "options_button_bg_0002",
									anchor = {
										x = 97,
										y = 0
									},
									label_colors = {
										default = {
											233,
											233,
											178,
											255
										},
										hover = {
											246,
											228,
											132,
											255
										}
									},
									pos = {
										x = 470,
										y = 130
									},
									size = {
										x = 194,
										y = 76
									}
								}
							}
						}
					}
				},
				{
					class = "PopUpView",
					id = "options_view",
					colors = {
						background = {
							0,
							0,
							0,
							80
						}
					},
					size = {
						x = 1920,
						y = 1080
					},
					children = {
						{
							id = "99043",
							class = "KImageView",
							image_name = "main_options_bg_notxt",
							anchor = {
								x = 350,
								y = 185
							},
							pos = {
								x = 960,
								y = 490
							},
							size = {
								x = 700,
								y = 370
							},
							children = {
								{
									text = "OPCIONES",
									text_key = "OPTIONS",
									class = "GGPanelHeader",
									id = "99044",
									pos = {
										x = 232,
										y = 18
									},
									size = {
										x = 242,
										y = 45
									}
								},
								{
									vertical_align = "top",
									text_key = "SFX",
									class = "GGOptionsLabel",
									fit_size = true,
									id = "99045",
									pos = {
										x = 250,
										y = 78
									},
									size = {
										x = 200,
										y = 32
									}
								},
								{
									image_name = "options_barBg",
									style = "sfx",
									class = "VolumeSlider",
									id = "s_sfx",
									pos = {
										x = 139,
										y = 118
									},
									size = {
										x = 422,
										y = 34
									}
								},
								{
									vertical_align = "top",
									text_key = "Music",
									class = "GGOptionsLabel",
									fit_size = true,
									id = "99049",
									pos = {
										x = 250,
										y = 170
									},
									size = {
										x = 200,
										y = 32
									}
								},
								{
									image_name = "options_barBg",
									style = "music",
									class = "VolumeSlider",
									id = "s_music",
									pos = {
										x = 139,
										y = 210
									},
									size = {
										x = 422,
										y = 34
									}
								},
								{
									hover_image_name = "options_button_bg_0002",
									label_text_key = "Done",
									image_name = "options_button_bg_0001",
									class = "GGOptionsButton",
									id = "options_button_done",
									default_image_name = "options_button_bg_0001",
									click_image_name = "options_button_bg_0002",
									anchor = {
										x = 97,
										y = 0
									},
									pos = {
										x = 350,
										y = 255
									},
									size = {
										x = 194,
										y = 76
									}
								}
							}
						}
					}
				},
				{
					class = "PopUpView",
					id = "cloudsave_progress_view",
					colors = {
						background = {
							0,
							0,
							0,
							80
						}
					},
					size = {
						x = 1920,
						y = 1080
					},
					children = {
						{
							class = "KImageView",
							image_name = "homeMenu_confirm_menu_0001",
							anchor = {
								x = 360,
								y = 130
							},
							colors = {},
							pos = {
								x = 960,
								y = 540
							},
							size = {
								x = 960,
								y = 260
							},
							children = {
								{
									font_size = 28.125,
									fit_step = 0.5,
									class = "GGOptionsLabel",
									text_key = "UPDATING_CLOUDSAVE_MESSAGE",
									font_name = "h",
									anchor = {
										x = 280,
										y = 15
									},
									colors = {
										text = {
											233,
											233,
											178,
											255
										}
									},
									pos = {
										x = 360,
										y = 86.666666666667
									},
									size = {
										x = 560,
										y = 30
									},
									text_shadow_offset = {
										x = 1,
										y = 1
									}
								},
								{
									hover_image_name = "options_button_bg_0002",
									label_font_name = "h",
									label_font_size = 23.90625,
									label_text = "Cancel",
									image_name = "options_button_bg_0001",
									label_text_key = "Cancel",
									class = "GGOptionsButton",
									id = "cloudsave_cancel_button",
									default_image_name = "options_button_bg_0001",
									click_image_name = "options_button_bg_0002",
									anchor = {
										x = 97,
										y = 0
									},
									label_colors = {
										default = {
											233,
											233,
											178,
											255
										},
										hover = {
											246,
											228,
											132,
											255
										}
									},
									pos = {
										x = 350,
										y = 130
									},
									size = {
										x = 194,
										y = 76
									}
								}
							}
						}
					}
				},
				{
					class = "PopUpView",
					id = "cloudsave_error_view",
					colors = {
						background = {
							0,
							0,
							0,
							80
						}
					},
					size = {
						x = 1920,
						y = 1080
					},
					children = {
						{
							class = "KImageView",
							image_name = "homeMenu_confirm_menu_0001",
							anchor = {
								x = 360,
								y = 130
							},
							colors = {},
							pos = {
								x = 960,
								y = 540
							},
							size = {
								x = 960,
								y = 260
							},
							children = {
								{
									text_key = "ERROR_MESSAGE_GENERIC",
									font_size = 28.125,
									fit_step = 0.5,
									class = "GGOptionsLabel",
									id = "cloudsave_error_label",
									font_name = "h",
									anchor = {
										x = 280,
										y = 15
									},
									colors = {
										text = {
											233,
											233,
											178,
											255
										}
									},
									pos = {
										x = 360,
										y = 75
									},
									size = {
										x = 560,
										y = 30
									},
									text_shadow_offset = {
										x = 1,
										y = 1
									}
								},
								{
									text = "Error code: XXX",
									font_size = 28.125,
									fit_step = 0.5,
									class = "GGOptionsLabel",
									id = "cloudsave_error_code_label",
									font_name = "h",
									anchor = {
										x = 280,
										y = 15
									},
									colors = {
										text = {
											233,
											233,
											178,
											255
										}
									},
									pos = {
										x = 360,
										y = 110
									},
									size = {
										x = 560,
										y = 30
									},
									text_shadow_offset = {
										x = 1,
										y = 1
									}
								},
								{
									hover_image_name = "options_button_bg_0002",
									label_font_name = "h",
									label_font_size = 23.90625,
									label_text_key = "Done",
									image_name = "options_button_bg_0001",
									class = "GGOptionsButton",
									id = "cloudsave_close_button",
									default_image_name = "options_button_bg_0001",
									click_image_name = "options_button_bg_0002",
									anchor = {
										x = 97,
										y = 0
									},
									label_colors = {
										default = {
											233,
											233,
											178,
											255
										},
										hover = {
											246,
											228,
											132,
											255
										}
									},
									pos = {
										x = 350,
										y = 130
									},
									size = {
										x = 194,
										y = 76
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
