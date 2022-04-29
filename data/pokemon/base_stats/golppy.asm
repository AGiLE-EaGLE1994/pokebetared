	db DEX_GOLPPY ; pokedex id

	db  40,  50,  50,  52,  70
	;   hp  atk  def  spd  spc 

	db WATER, WATER ; type
	db 225 ; catch rate
	db 111 ; base exp

	INCBIN "gfx/pokemon/front/golppy.pic", 0, 1 ; sprite dimensions
	dw GolppyPicFront, GolppyPicBack

	db PECK, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     SUBSTITUTE,   SURF
	; end

	db BANK(GolppyPicFront)
