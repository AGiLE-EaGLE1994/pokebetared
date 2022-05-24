VictoryRoad2F_Object:
	db $7d ; border block

	def_warps
	warp -2,  4, 2, VICTORY_ROAD_1F
	warp  8,  0, 3, LAST_MAP
	warp  9,  0, 3, LAST_MAP
	warp 21,  7, 0, VICTORY_ROAD_3F
	warp 21,  9, 2, VICTORY_ROAD_3F
	warp 21,  5, 1, VICTORY_ROAD_3F
	warp  8,  5, 3, VICTORY_ROAD_3F

	def_signs

	def_objects
	object SPRITE_HIKER, 18, 13, STAY, LEFT, 1, OPP_BLACKBELT, 9
	object SPRITE_SUPER_NERD, 15, 11, STAY, LEFT, 2, OPP_JUGGLER, 2
	object SPRITE_COOLTRAINER_M, 13,  6, STAY, DOWN, 3, OPP_TAMER, 5
	object SPRITE_SUPER_NERD,  6,  4, STAY, DOWN, 4, OPP_POKEMANIAC, 6
	object SPRITE_SUPER_NERD,  4, 11, STAY, LEFT, 5, OPP_JUGGLER, 5
	object SPRITE_BIRD,  5,  3, STAY, UP, 6, MOLTRES, 50
	object SPRITE_POKE_BALL, 16, 12, STAY, NONE, 7, TM_SUBMISSION
	object SPRITE_POKE_BALL, 10,  7, STAY, NONE, 8, FULL_HEAL
	object SPRITE_POKE_BALL,  3,  9, STAY, NONE, 9, TM_MEGA_KICK
	object SPRITE_POKE_BALL,  8,  7, STAY, NONE, 10, GUARD_SPEC
	object SPRITE_BOULDER,  1, 11, STAY, BOULDER_MOVEMENT_BYTE_2, 11 ; person
	object SPRITE_BOULDER,  2, 11, STAY, BOULDER_MOVEMENT_BYTE_2, 12 ; person
	object SPRITE_BOULDER,  5,  9, STAY, BOULDER_MOVEMENT_BYTE_2, 13 ; person

	def_warps_to VICTORY_ROAD_2F