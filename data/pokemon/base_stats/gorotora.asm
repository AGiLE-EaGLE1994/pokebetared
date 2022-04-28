	db DEX_GOROTORA ; pokedex id

	db 120,  83,  66,  86,  151
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/gorotora.pic", 0, 1 ; sprite dimensions
	dw GorotoraPicFront, GorotoraPicBack

	db THUNDERSHOCK, GROWL, THUNDER_WAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	
	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   FLASH
	; end

	db BANK(GorotoraPicFront)
