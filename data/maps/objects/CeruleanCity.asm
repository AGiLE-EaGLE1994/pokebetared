CeruleanCity_Object:
	db $f ; border block

	def_warps
	warp 32,  6, 0, CERULEAN_TRASHED_HOUSE
	warp 26, 13, 0, CERULEAN_TRADE_HOUSE
	warp 23, 29, 0, CERULEAN_POKECENTER
	warp 14, 11, 0, CERULEAN_GYM
	warp  9, 29, 0, BIKE_SHOP
	warp 20, 13, 0, CERULEAN_MART
	warp  2, 10, 0, CERULEAN_CAVE_1F
	warp 30,  6, 2, CERULEAN_TRASHED_HOUSE
	warp  7, 13, 1, CERULEAN_BADGE_HOUSE
	warp 38, 15, 0, CERULEAN_BADGE_HOUSE

	def_signs
	sign 23, 19, 12 ; CeruleanCityText12
	sign 17, 29, 13 ; CeruleanCityText13
	sign 21, 13, 14 ; MartSignText
	sign 25, 29, 15 ; PokeCenterSignText
	sign 10, 22, 16 ; CeruleanCityText16
	sign 15, 21, 17 ; CeruleanCityText17

	def_objects
	object SPRITE_BLUE, 20, 2, STAY, DOWN, 1 ; person
	object SPRITE_ROCKET, 30, 8, STAY, NONE, 2, OPP_ROCKET, 5
	object SPRITE_COOLTRAINER_M, 32, 14, STAY, DOWN, 3 ; person
	object SPRITE_SUPER_NERD, 15, 18, WALK, UP_DOWN, 4 ; person
	object SPRITE_SUPER_NERD, 9, 21, WALK, LEFT_RIGHT, 5 ; person
	object SPRITE_GUARD, 40,  6, STAY, DOWN, 6 ; person
	object SPRITE_COOLTRAINER_F, 29, 26, STAY, LEFT, 7 ; person
	object SPRITE_MONSTER, 28, 26, STAY, DOWN, 8 ; person
	object SPRITE_COOLTRAINER_F, 11, 19, WALK, LEFT_RIGHT, 9 ; person
	object SPRITE_SUPER_NERD, 12, 12, STAY, DOWN, 10 ; person
	object SPRITE_GUARD, 41,  6, STAY, DOWN, 11 ; person

	def_warps_to CERULEAN_CITY
