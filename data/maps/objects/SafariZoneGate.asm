SafariZoneGate_Object:
	db $a ; border block

	def_warps
	warp 3, 5, 4, LAST_MAP
	warp 4, 5, 4, LAST_MAP
	warp 3, 0, 0, SAFARI_ZONE_CENTER
	warp 4, 0, 1, SAFARI_ZONE_CENTER

	def_signs

	def_objects
	object SPRITE_SAFARI_ZONE_WORKER, 6, 2, STAY, LEFT, 1 ; person
	object SPRITE_SAFARI_ZONE_WORKER, 1, 4, STAY, RIGHT, 2 ; person

	; warp-to
	warp_to 3, 5, SAFARI_ZONE_GATE_WIDTH
	warp_to 4, 5, SAFARI_ZONE_GATE_WIDTH
	warp_to 3, 0, SAFARI_ZONE_GATE_WIDTH ; SAFARI_ZONE_CENTER
	warp_to 4, 0, SAFARI_ZONE_GATE_WIDTH ; SAFARI_ZONE_CENTER
