PowerPlantMons:
	db 10 ; grass encounter rate
	db 21, VOLTORB
	db 21, MAGNEMITE
	db 20, PIKACHU
	db 24, KOTORA
	db 23, MAGNEMITE
	db 23, VOLTORB
	db 32, MAGNETON
	db 35, MAGNETON
IF DEF(_RED)
	db 33, ELECTABUZZ
	db 36, ELECTABUZZ
ENDC
IF DEF(_BLUE)
	db 33, RAICHU
	db 36, RAICHU
ENDC

	db 0 ; water encounter rate