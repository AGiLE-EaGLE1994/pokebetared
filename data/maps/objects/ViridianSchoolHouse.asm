ViridianSchoolHouse_Object:
	db $a ; border block

	def_warps
	warp 2, 7, 2, LAST_MAP
	warp 3, 7, 2, LAST_MAP

	def_signs

	def_objects
	object SPRITE_BRUNETTE_GIRL, 3, 5, STAY, UP, 1 ; person
	object SPRITE_COOLTRAINER_F, 4, 1, STAY, DOWN, 2 ; person

	; warp-to
	warp_to 2, 7, VIRIDIAN_SCHOOL_HOUSE_WIDTH
	warp_to 3, 7, VIRIDIAN_SCHOOL_HOUSE_WIDTH
