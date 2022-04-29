	db DEX_RIBBITO ; pokedex id

	db  79,  88,  85,  98,  66
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 120 ; catch rate
	db 131 ; base exp

	INCBIN "gfx/pokemon/front/ribbito.pic", 0, 1 ; sprite dimensions
	dw RibbitoPicFront, RibbitoPicBack

	db BUBBLE, RAGE, WATER_GUN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     METRONOME,    SKULL_BASH,   REST,         PSYWAVE,      SUBSTITUTE,   \
	     SURF,         STRENGTH
	; end

	db BANK(RibbitoPicFront)
