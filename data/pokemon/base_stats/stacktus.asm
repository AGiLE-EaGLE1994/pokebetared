	db DEX_STACKTUS ; pokedex id

	db  132,  120,  72,  75,  110
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 255 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/stacktus.pic", 0, 1 ; sprite dimensions
	dw StacktusPicFront, StacktusPicBack

	db VINE_WHIP, SPIKE_CANNON, HORN_ATTACK , GROWTH ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         REST,         SUBSTITUTE,   CUT
	; end

	db BANK(StacktusPicFront)
