UndergroundPathRoute7_Object:
	db $a ; border block

	def_warps
	warp 3, 7, 4, LAST_MAP
	warp 4, 7, 4, LAST_MAP
	warp 4, 4, 0, UNDERGROUND_PATH_WEST_EAST

	def_signs

	def_objects
	object SPRITE_MIDDLE_AGED_MAN, 2, 4, STAY, NONE, 1 ; person

	; warp-to
	warp_to 3, 7, UNDERGROUND_PATH_ROUTE_7_WIDTH
	warp_to 4, 7, UNDERGROUND_PATH_ROUTE_7_WIDTH
	warp_to 4, 4, UNDERGROUND_PATH_ROUTE_7_WIDTH ; UNDERGROUND_PATH_WEST_EAST
