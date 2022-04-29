	db DEX_DECILLA ; pokedex id

	db  60,  80, 110,  45,  50
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 75 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/front/decilla.pic", 0, 1 ; sprite dimensions
	dw DecillaPicFront, DecillaPicBack

	db NO_MOVE, GROWL, LEER, FOCUS_ENERGY ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         FIRE_BLAST,   SKULL_BASH,   REST,         SUBSTITUTE,   \
	     STRENGTH
	; end

	db BANK(DecillaPicFront)
