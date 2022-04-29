	db DEX_WEIRDUCK ; pokedex id

	db  72,  77,  70,  82,  72
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 75 ; catch rate
	db 174 ; base exp

	INCBIN "gfx/pokemon/front/weirduck.pic", 0, 1 ; sprite dimensions
	dw WeirduckPicFront, WeirduckPicBack

	db SCRATCH, TAIL_WHIP, DISABLE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   SURF,         \
	     STRENGTH
	; end

	db BANK(WeirduckPicFront)
