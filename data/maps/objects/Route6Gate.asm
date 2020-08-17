Route6Gate_Object:
	db $a ; border block

	def_warps
	warp 3, 5, 2, LAST_MAP
	warp 4, 5, 2, LAST_MAP
	warp 3, 0, 1, LAST_MAP
	warp 4, 0, 1, LAST_MAP

	def_signs

	def_objects
	object SPRITE_GUARD, 6, 2, STAY, LEFT, 1 ; person

	; warp-to
	warp_to 3, 5, ROUTE_6_GATE_WIDTH
	warp_to 4, 5, ROUTE_6_GATE_WIDTH
	warp_to 3, 0, ROUTE_6_GATE_WIDTH
	warp_to 4, 0, ROUTE_6_GATE_WIDTH
