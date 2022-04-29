	db DEX_BLOTTLE ; pokedex id

	db  50,  30,  43,  85, 105
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 190 ; catch rate
	db 105 ; base exp

	INCBIN "gfx/pokemon/front/blottle.pic", 0, 1 ; sprite dimensions
	dw BlottlePicFront, BlottlePicBack

	db ACID, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MEGA_DRAIN,   \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   \
	     REST,         SUBSTITUTE,   CUT,          SURF
	; end

	db BANK(BlottlePicFront)
