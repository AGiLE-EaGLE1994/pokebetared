PewterCity_Object:
	db $a ; border block

	def_warps
	warp 10,  3, 0, MUSEUM_1F
	warp 19,  5, 2, MUSEUM_1F
	warp 12, 15, 0, PEWTER_GYM
	warp 24, 15, 0, PEWTER_NIDORAN_HOUSE
	warp 31, 19, 0, PEWTER_MART
	warp 22, 21, 0, PEWTER_SPEECH_HOUSE
	warp 14, 25, 0, PEWTER_POKECENTER

	def_signs
	sign 19, 29,  6 ; PewterCityText6
	sign  9, 19,  7 ; PewterCityText7
	sign 30, 19,  8 ; MartSignText
	sign 15, 25,  9 ; PokeCenterSignText
	sign 15,  9, 10 ; PewterCityText10
	sign 11, 19, 11 ; PewterCityText11
	sign 25, 23, 12 ; PewterCityText12

	def_objects
	object SPRITE_COOLTRAINER_F,  8, 16, STAY, NONE, 1 ; person
	object SPRITE_COOLTRAINER_M, 10, 22, STAY, NONE, 2 ; person
	object SPRITE_SUPER_NERD, 27, 17, STAY, NONE, 3 ; person
	object SPRITE_SUPER_NERD, 16, 22, WALK, LEFT_RIGHT, 4 ; person
	object SPRITE_YOUNGSTER, 35, 16, STAY, DOWN, 5 ; person

	def_warps_to PEWTER_CITY
