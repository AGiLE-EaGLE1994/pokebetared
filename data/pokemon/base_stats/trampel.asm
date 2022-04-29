	db DEX_TRAMPEL ; pokedex id

	db  90, 120, 120,  50,  120
	;   hp  atk  def  spd  spc 

	db GROUND, GROUND ; type
	db 45 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/trampel.pic", 0, 1 ; sprite dimensions
	dw TrampelPicFront, TrampelPicBack

	db WATER_GUN, RAGE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   SURF,         STRENGTH
	; end

	db BANK(TrampelPicFront)
