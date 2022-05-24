LavenderTown_Object:
	db $2c ; border block

	def_warps
	warp 10,  9, 0, LAVENDER_POKECENTER
	warp 16,  7, 0, POKEMON_TOWER_1F
	warp 12,  1, 0, MR_FUJIS_HOUSE
	warp 11, 15, 0, LAVENDER_MART
	warp  2, 13, 0, LAVENDER_CUBONE_HOUSE
	warp  2,  5, 0, NAME_RATERS_HOUSE

	def_signs
	sign  7, 15, 4 ; LavenderTownText4
	sign  7, 13, 5 ; LavenderTownText5
	sign 10, 15, 6 ; MartSignText
	sign 11,  9, 7 ; PokeCenterSignText
	sign  7, 11, 8 ; LavenderTownText8
	sign  7,  9, 9 ; LavenderTownText9

	def_objects
	object SPRITE_LITTLE_GIRL, 13,  4, WALK, ANY_DIR, 1 ; person
	object SPRITE_COOLTRAINER_M, 18,  8, STAY, NONE, 2 ; person
	object SPRITE_SUPER_NERD,  2,  8, WALK, LEFT_RIGHT, 3 ; person

	def_warps_to LAVENDER_TOWN
