PalletTown_Object:
	db $b ; border block

	def_warps
	warp  6,  5, 0, REDS_HOUSE_1F
	warp 14,  5, 0, BLUES_HOUSE
	warp 12, 11, 1, OAKS_LAB
	warp 14, 11, 1, CITRINE

	def_signs
	sign 13, 13, 4 ; PalletTownText4
	sign  7,  9, 5 ; PalletTownText5
	sign  8, 13, 6 ; PalletTownText6
	sign 11,  5, 7 ; PalletTownText7

	def_objects
	object SPRITE_OAK, 8, 5, STAY, NONE, 1 ; person
	object SPRITE_GIRL,  7,  7, WALK, ANY_DIR, 2 ; person
	object SPRITE_FISHER, 11, 14, WALK, ANY_DIR, 3 ; person

	def_warps_to PALLET_TOWN
