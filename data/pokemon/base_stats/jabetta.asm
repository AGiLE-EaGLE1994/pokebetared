	db DEX_JABETTA ; pokedex id

	db  110,  66,  44,  75,  79
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 83 ; base exp

	INCBIN "gfx/pokemon/front/jabetta.pic", 0, 1 ; sprite dimensions
	dw JabettaPicFront, JabettaPicBack

	db BUBBLE, WATER_GUN, SING, GROWL ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     RAGE,         MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     SURF
	; end

	db BANK(JabettaPicFront)
