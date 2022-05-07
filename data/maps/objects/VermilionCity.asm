VermilionCity_Object:
	db $43 ; border block

	def_warps
	warp  9, 27, 0, VERMILION_POKECENTER
	warp 28, 15, 0, POKEMON_FAN_CLUB
	warp 23, 29, 0, VERMILION_MART
	warp 36,  5, 0, VERMILION_GYM
	warp 34, 15, 0, VERMILION_PIDGEY_HOUSE
	warp 22, 35, 0, VERMILION_DOCK
	warp 23, 35, 0, VERMILION_DOCK
	warp 15, 13, 0, VERMILION_TRADE_HOUSE
	warp 30,  9, 0, VERMILION_OLD_ROD_HOUSE

	def_signs
	sign 27,  3,  7 ; VermilionCityText7
	sign 37, 21,  8 ; VermilionCityText8
	sign 22, 29,  9 ; MartSignText
	sign  8, 27, 10 ; PokeCenterSignText
	sign 25, 15, 11 ; VermilionCityText11
	sign 37,  5, 12 ; VermilionCityText12
	sign 24, 32, 13 ; VermilionCityText13

	def_objects
	object SPRITE_BEAUTY, 19, 7, WALK, LEFT_RIGHT, 1 ; person
	object SPRITE_GAMBLER, 14, 6, STAY, NONE, 2 ; person
	object SPRITE_SAILOR, 19, 30, STAY, UP, 3 ; person
	object SPRITE_GAMBLER, 21, 14, STAY, NONE, 4 ; person
	object SPRITE_MONSTER, 25,  9, WALK, UP_DOWN, 5 ; person
	object SPRITE_SAILOR, 26, 30, WALK, LEFT_RIGHT, 6 ; person

	def_warps_to VERMILION_CITY
