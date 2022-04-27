ViridianCity_Object:
	db $f ; border block

	def_warps
	warp 22, 27, 0, VIRIDIAN_POKECENTER
	warp 17, 11, 0, VIRIDIAN_MART
	warp 22, 19, 0, VIRIDIAN_SCHOOL_HOUSE
	warp 21,  9, 0, VIRIDIAN_NICKNAME_HOUSE
	warp 14, 23, 0, VIRIDIAN_GYM

	def_signs
	sign 17, 17,  8 ; ViridianCityText8
	sign 19,  1,  9 ; ViridianCityText9
	sign 21, 29, 10 ; ViridianCityText10
	sign 16, 11, 11 ; MartSignText
	sign 23, 27, 12 ; PokeCenterSignText
	sign 16, 13, 13 ; ViridianCityText13

	def_objects
	object SPRITE_YOUNGSTER, 11, 14, WALK, ANY_DIR, 1 ; person
	object SPRITE_GAMBLER, 28, 18, STAY, NONE, 2 ; person
	object SPRITE_YOUNGSTER,  7, 14, WALK, ANY_DIR, 3 ; person
	object SPRITE_GIRL, 17,  3, STAY, RIGHT, 4 ; person
	object SPRITE_GAMBLER_ASLEEP, 18,  3, STAY, NONE, 5 ; person
	object SPRITE_FISHER, 12, 24, STAY, DOWN, 6 ; person
	object SPRITE_GAMBLER, 17, 5, WALK, LEFT_RIGHT, 7 ; person

	def_warps_to VIRIDIAN_CITY
