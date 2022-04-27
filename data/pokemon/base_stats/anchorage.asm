	db DEX_ANCHORAGE ; pokedex id

	db 90,  110,  50,  110, 105
	;   hp  atk  def  spd  spc

	db WATER , WATER ; type
	db 120 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/front/anchorage.pic", 0, 1 ; sprite dimensions
	dw AnchoragePicFront, AnchoragePicBack

	db WATER_GUN, BITE, RAGE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	; tm/hm learnset
	tmhm TOXIC,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     RAGE,         SOLARBEAM,    DRAGON_RAGE,        \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SKULL_BASH,   REST,      SUBSTITUTE,   SURF,         \
	     STRENGTH
	; end

	db BANK(AnchoragePicFront)

