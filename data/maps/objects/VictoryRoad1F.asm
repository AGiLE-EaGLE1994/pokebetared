VictoryRoad1F_Object:
	db $7d ; border block

	def_warps
	warp 14,  0, 2, LAST_MAP
	warp -3, 10, 2, LAST_MAP
	warp  8,  9, 0, VICTORY_ROAD_2F

	def_signs

	def_objects
	object SPRITE_COOLTRAINER_F,  4,  4, STAY, RIGHT, 1, OPP_COOLTRAINER_F, 5
	object SPRITE_COOLTRAINER_M,  6, 12, STAY, DOWN, 2, OPP_COOLTRAINER_M, 5
	object SPRITE_POKE_BALL, 10,  7, STAY, NONE, 3, TM_SKY_ATTACK
	object SPRITE_POKE_BALL,  9,  8, STAY, NONE, 4, RARE_CANDY
	object SPRITE_BOULDER,  7,  5, STAY, BOULDER_MOVEMENT_BYTE_2, 5 ; person
	object SPRITE_BOULDER,  7,  4, STAY, BOULDER_MOVEMENT_BYTE_2, 6 ; person
	object SPRITE_BOULDER,  7,  6, STAY, BOULDER_MOVEMENT_BYTE_2, 7 ; person

	def_warps_to VICTORY_ROAD_1F
