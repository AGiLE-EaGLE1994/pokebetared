	db DEX_BLOONDER ; pokedex id

	db 187,  71,  85,  54,  109
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 170 ; catch rate
	db 76 ; base exp

	INCBIN "gfx/pokemon/front/bloonder.pic", 0, 1 ; sprite dimensions
	dw BloonderPicFront, BloonderPicBack

	db AMNESIA, RAZOR_WIND, RECOVER, MINIMIZE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,     THUNDERBOLT,  THUNDER,	PSYCHIC_M,\
		 TELEPORT,     MIMIC,	DOUBLE_TEAM,  REFLECT,      BIDE, \
         FIRE_BLAST,   SKULL_BASH,		REST,	THUNDER_WAVE, PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,     FLASH
	; end

	db BANK(BloonderPicFront)
