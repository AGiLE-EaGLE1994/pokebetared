	db DEX_FREEZETI ; pokedex id

	db  125,  108,  66,  92,  90
	;   hp  atk  def  spd  spc

	db ICE, ICE; type
	db 45 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/front/freezeti.pic", 0, 1 ; sprite dimensions
	dw FreezetiPicFront, FreezetiPicBack

	db POUND, ICE_PUNCH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         PSYWAVE,      \
	     SUBSTITUTE
	; end

	db BANK(FreezetiPicFront)
