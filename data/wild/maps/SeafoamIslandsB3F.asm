IslandMonsB3:
	db 10 ; grass encounter rate
IF DEF(_RED)
	db 31, SLOWPOKE
	db 31, SEEL
	db 33, SLOWPOKE
	db 33, BAWLIGUA
	db 29, HORSEA
	db 31, SHELLDER
	db 31, HORSEA
	db 29, SKIMPER
	db 39, SEADRA
ENDC
IF DEF(_BLUE)
	db 31, PSYDUCK
	db 31, SEEL
	db 33, PSYDUCK
	db 33, SEEL
	db 29, KRABBY
	db 31, STARYU
	db 31, KRABBY
	db 29, STARYU
	db 39, KINGLER
ENDC
	db 37, DEWGONG

	db 0 ; water encounter rate
