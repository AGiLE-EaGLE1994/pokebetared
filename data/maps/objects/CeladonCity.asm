CeladonCity_Object:
	db $f ; border block

	def_warps
	warp 10, -2, 0, CELADON_MART_1F
	warp  9, -2, 2, CELADON_MART_1F
	warp 20, 21, 0, CELADON_MANSION_1F
	warp 24,  3, 2, CELADON_MANSION_1F
	warp 25,  3, 2, CELADON_MANSION_1F
	warp 38, 23, 0, CELADON_POKECENTER
	warp 28,  7, 0, CELADON_GYM
	warp 18, 13, 0, GAME_CORNER
	warp 11, -2, 0, CELADON_MART_5F ; beta warp! no longer used
	warp 28, 13, 0, GAME_CORNER_PRIZE_ROOM
	warp 40,  7, 0, CELADON_DINER
	warp 16, 27, 0, CELADON_CHIEF_HOUSE
	warp  7, 23, 0, CELADON_HOTEL

	def_signs
	sign 27, 15, 10 ; CeladonCityText10
	sign  5,  9, 11 ; CeladonCityText11
	sign 37, 23, 12 ; PokeCenterSignText
	sign  7,  9, 13 ; CeladonCityText13
	sign 21,  9, 14 ; CeladonCityText14
	sign  9,  9, 15 ; CeladonCityText15
	sign 11,  9, 16 ; CeladonCityText16
	sign 13,  9, 17 ; CeladonCityText17
	sign 27, 21, 18 ; CeladonCityText18

	def_objects
	object SPRITE_LITTLE_GIRL, 10, 21, WALK, ANY_DIR, 1 ; person
	object SPRITE_GRAMPS, 14, 28, STAY, UP, 2 ; person
	object SPRITE_GIRL, 22,  6, WALK, UP_DOWN, 3 ; person
	object SPRITE_GRAMPS, 23, 22, STAY, DOWN, 4 ; person
	object SPRITE_GRAMPS, 15, 14, STAY, DOWN, 5 ; person
	object SPRITE_FISHER, 32, 12, STAY, LEFT, 6 ; person
	object SPRITE_MONSTER, 30, 12, STAY, RIGHT, 7 ; person
	object SPRITE_ROCKET, 33,  9, WALK, LEFT_RIGHT, 8 ; person
	object SPRITE_ROCKET, 42, 14, WALK, LEFT_RIGHT, 9 ; person

	def_warps_to CELADON_CITY
