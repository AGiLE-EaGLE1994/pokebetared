Citrine_Object:
	db $43 ; border block

	def_warps
	warp  6,  5, REDS_HOUSE_1F, 1
	warp 14,  5, CINNABAR_MART_COPY, 1
	warp 12, 11, OAKS_LAB, 2

	def_signs
	sign 13, 13, 4 ; CitrineText4
	sign  8,  9, 5 ; CitrineText5
	sign  3,  5, 6 ; CitrineText6
	sign 11,  5, 7 ; CitrineText7

	def_objects
	object SPRITE_OAK, 8, 5, STAY, NONE, 1 ; person
	object SPRITE_GIRL,  7,  7, WALK, ANY_DIR, 2 ; person
	object SPRITE_FISHER, 11, 14, WALK, ANY_DIR, 3 ; person

	def_warps_to CITRINE
