	db DEX_CROAKOZUNA ; pokedex id

	db  115,  105,  125,  85,  74
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 180 ; catch rate
	db 131 ; base exp

	INCBIN "gfx/pokemon/front/croakozuna.pic", 0, 1 ; sprite dimensions
	dw CroakozunaPicFront, CroakozunaPicBack

	db BUBBLE, RAGE, WATER_GUN, DOUBLE_TEAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     METRONOME,    SKULL_BASH,   REST,         PSYWAVE,      SUBSTITUTE,   \
	     SURF,         STRENGTH
	; end

	db BANK(CroakozunaPicFront)
