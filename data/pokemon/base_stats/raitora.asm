	db DEX_RAITORA ; pokedex id

	db 110,  63,  51,  78,  148
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/raitora.pic", 0, 1 ; sprite dimensions
	dw RaitoraPicFront, RaitoraPicBack

	db THUNDERSHOCK, GROWL, THUNDER_WAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	
	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   FLASH
	; end

	db BANK(RaitoraPicFront)
