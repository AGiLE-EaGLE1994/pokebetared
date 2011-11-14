FuncCoord: MACRO
Coord = $C3A0 + 20 * \2 + \1
	ENDM

; external map entry macro
EMAP: MACRO ; emap x-coordinate,y-coordinate,textpointer
; the appearance of towns and routes in the town map, indexed by map id
	; nybble: y-coordinate
	; nybble: x-coordinate
	; word  : pointer to map name
	db (\1 + (\2 << 4))
	dw \3
	ENDM

; internal map entry macro
IMAP: MACRO ; imap mapid_less_than,x-coordinate,y-coordinate,textpointer
; the appearance of buildings and dungeons in the town map
	; byte  : maximum map id subject to this rule
	; nybble: y-coordinate
	; nybble: x-coordinate
	; word  : pointer to map name
	db \1
	db \2 + \3 << 4
	dw \4
	ENDM

; tilesets' headers macro
TSETHEAD: MACRO
	db BANK(\2)
	dw \1,\2,\3
	db \4,\5,\6,\7,\8
	ENDM

; macro for putting a byte then a word
dbw: MACRO
	db \1
	dw \2
	ENDM

; data format macros
RGB: MACRO
	dw (\3 << 10 | \2 << 5 | \1)
	ENDM

; text macros
TX_FAR: MACRO
	db $17
	dw \1
	db BANK(\1)
	ENDM

TX_NULL: MACRO
	db $50
	ENDM

; wram locations
W_OPPONENTHP     EQU $CFE6 ; active opponent's hp (16 bits)
W_OPPONENTNUMBER EQU $CFE8 ; active opponent's position in team (0 to 5)
W_OPPONENTSTATUS EQU $CFE9 ; active opponent's status condition
	; bit 0 slp
	; bit 1 slp
	; bit 2 slp
	; bit 3 psn
	; bit 4 brn
	; bit 5 frz
	; bit 6 par
	; unused? (XXX confirm)


W_TRAINERCLASS EQU $D031

W_CUROPPONENT EQU $D059 ; in a wild battle, this is the species of pokemon
			; in a trainer battle, this is the trainer class + $C8

W_LONEATTACKNO EQU $D05C ; which entry in LoneAttacks to use
W_ISTRAINERBATTLE EQU $D057 ; boolean
W_TRAINERNO    EQU $D05D ; which instance of [youngster, lass, etc] is this?

W_CURENEMYLVL EQU $D127

W_ISLINKBATTLE EQU $D12B

W_CURMAP EQU $D35E

W_RIVALSTARTER EQU $D715

W_GRASSRATE EQU $D887
W_GRASSMONS EQU $D888
W_WATERRATE EQU $D8A4 ; OVERLOADED
W_WATERMONS EQU $D8A5 ; OVERLOADED

W_ENEMYMONCOUNT  EQU $D89C

W_ENEMYMON1HP EQU $D8A5 ; 16 bits

W_ENEMYMON1MOVE3 EQU $D8AE

W_ENEMYMON2MOVE3 EQU $D8DA

W_ENEMYMON3MOVE3 EQU $D906

W_ENEMYMON4MOVE3 EQU $D932

W_ENEMYMON5MOVE3 EQU $D95E

W_ENEMYMON6MOVE3 EQU $D98A

; hardware registers, from the pandocs http://nocash.emubase.de/pandocs.htm
rBGP EQU $FF47
rOBP0 EQU $FF48
rOBP1 EQU $FF49


; pokemon name constants
RHYDON     EQU $01
KANGASKHAN EQU $02
NIDORAN_M  EQU $03
CLEFAIRY   EQU $04
SPEAROW    EQU $05
VOLTORB    EQU $06
NIDOKING   EQU $07
SLOWBRO    EQU $08
IVYSAUR    EQU $09
EXEGGUTOR  EQU $0A
LICKITUNG  EQU $0B
EXEGGCUTE  EQU $0C
GRIMER     EQU $0D
GENGAR     EQU $0E
NIDORAN_F  EQU $0F
NIDOQUEEN  EQU $10
CUBONE     EQU $11
RHYHORN    EQU $12
LAPRAS     EQU $13
ARCANINE   EQU $14
MEW        EQU $15
GYARADOS   EQU $16
SHELLDER   EQU $17
TENTACOOL  EQU $18
GASTLY     EQU $19
SCYTHER    EQU $1A
STARYU     EQU $1B
BLASTOISE  EQU $1C
PINSIR     EQU $1D
TANGELA    EQU $1E
GROWLITHE  EQU $21
ONIX       EQU $22
FEAROW     EQU $23
PIDGEY     EQU $24
SLOWPOKE   EQU $25
KADABRA    EQU $26
GRAVELER   EQU $27
CHANSEY    EQU $28
MACHOKE    EQU $29
MR__MIME   EQU $2A
HITMONLEE  EQU $2B
HITMONCHAN EQU $2C
ARBOK      EQU $2D
PARASECT   EQU $2E
PSYDUCK    EQU $2F
DROWZEE    EQU $30
GOLEM      EQU $31
MAGMAR     EQU $33
ELECTABUZZ EQU $35
MAGNETON   EQU $36
KOFFING    EQU $37
MANKEY     EQU $39
SEEL       EQU $3A
DIGLETT    EQU $3B
TAUROS     EQU $3C
FARFETCH_D EQU $40
VENONAT    EQU $41
DRAGONITE  EQU $42
DODUO      EQU $46
POLIWAG    EQU $47
JYNX       EQU $48
MOLTRES    EQU $49
ARTICUNO   EQU $4A
ZAPDOS     EQU $4B
DITTO      EQU $4C
MEOWTH     EQU $4D
KRABBY     EQU $4E
VULPIX     EQU $52
NINETALES  EQU $53
PIKACHU    EQU $54
RAICHU     EQU $55
DRATINI    EQU $58
DRAGONAIR  EQU $59
KABUTO     EQU $5A
KABUTOPS   EQU $5B
HORSEA     EQU $5C
SEADRA     EQU $5D
SANDSHREW  EQU $60
SANDSLASH  EQU $61
OMANYTE    EQU $62
OMASTAR    EQU $63
JIGGLYPUFF EQU $64
WIGGLYTUFF EQU $65
EEVEE      EQU $66
FLAREON    EQU $67
JOLTEON    EQU $68
VAPOREON   EQU $69
MACHOP     EQU $6A
ZUBAT      EQU $6B
EKANS      EQU $6C
PARAS      EQU $6D
POLIWHIRL  EQU $6E
POLIWRATH  EQU $6F
WEEDLE     EQU $70
KAKUNA     EQU $71
BEEDRILL   EQU $72
DODRIO     EQU $74
PRIMEAPE   EQU $75
DUGTRIO    EQU $76
VENOMOTH   EQU $77
DEWGONG    EQU $78
CATERPIE   EQU $7B
METAPOD    EQU $7C
BUTTERFREE EQU $7D
MACHAMP    EQU $7E
GOLDUCK    EQU $80
HYPNO      EQU $81
GOLBAT     EQU $82
MEWTWO     EQU $83
SNORLAX    EQU $84
MAGIKARP   EQU $85
MUK        EQU $88
KINGLER    EQU $8A
CLOYSTER   EQU $8B
ELECTRODE  EQU $8D
CLEFABLE   EQU $8E
WEEZING    EQU $8F
PERSIAN    EQU $90
MAROWAK    EQU $91
HAUNTER    EQU $93
ABRA       EQU $94
ALAKAZAM   EQU $95
PIDGEOTTO  EQU $96
PIDGEOT    EQU $97
STARMIE    EQU $98
BULBASAUR  EQU $99
VENUSAUR   EQU $9A
TENTACRUEL EQU $9B
GOLDEEN    EQU $9D
SEAKING    EQU $9E
PONYTA     EQU $A3
RAPIDASH   EQU $A4
RATTATA    EQU $A5
RATICATE   EQU $A6
NIDORINO   EQU $A7
NIDORINA   EQU $A8
GEODUDE    EQU $A9
PORYGON    EQU $AA
AERODACTYL EQU $AB
MAGNEMITE  EQU $AD
CHARMANDER EQU $B0
SQUIRTLE   EQU $B1
CHARMELEON EQU $B2
WARTORTLE  EQU $B3
CHARIZARD  EQU $B4
ODDISH     EQU $B9
GLOOM      EQU $BA
VILEPLUME  EQU $BB
BELLSPROUT EQU $BC
WEEPINBELL EQU $BD
VICTREEBEL EQU $BE


; trainer name constants
; sometimes it's necessary to add $C8 to these values
YOUNGSTER     EQU $01
BUG_CATCHER   EQU $02
LASS          EQU $03
SAILOR        EQU $04
JR__TRAINER_M EQU $05
JR__TRAINER_F EQU $06
POKEMANIAC    EQU $07
SUPER_NERD    EQU $08
HIKER         EQU $09
BIKER         EQU $0A
BURGLAR       EQU $0B
ENGINEER      EQU $0C
JUGGLER_X     EQU $0D
FISHER        EQU $0E
SWIMMER       EQU $0F
CUE_BALL      EQU $10
GAMBLER       EQU $11
BEAUTY        EQU $12
PSYCHIC_TR    EQU $13
ROCKER        EQU $14
JUGGLER       EQU $15
TAMER         EQU $16
BIRD_KEEPER   EQU $17
BLACKBELT     EQU $18
SONY1         EQU $19
PROF_OAK      EQU $1A
CHIEF         EQU $1B
SCIENTIST     EQU $1C
GIOVANNI      EQU $1D
ROCKET        EQU $1E
COOLTRAINER_M EQU $1F
COOLTRAINER_F EQU $20
BRUNO         EQU $21
BROCK         EQU $22
MISTY         EQU $23
LT__SURGE     EQU $24
ERIKA         EQU $25
KOGA          EQU $26
BLAINE        EQU $27
SABRINA       EQU $28
GENTLEMAN     EQU $29
SONY2         EQU $2A
SONY3         EQU $2B
LORELEI       EQU $2C
CHANNELER     EQU $2D
AGATHA        EQU $2E
LANCE         EQU $2F

; pokemon dex numbers
DEX_BULBASAUR  EQU 1
DEX_IVYSAUR    EQU 2
DEX_VENUSAUR   EQU 3
DEX_CHARMANDER EQU 4
DEX_CHARMELEON EQU 5
DEX_CHARIZARD  EQU 6
DEX_SQUIRTLE   EQU 7
DEX_WARTORTLE  EQU 8
DEX_BLASTOISE  EQU 9
DEX_CATERPIE   EQU 10
DEX_METAPOD    EQU 11
DEX_BUTTERFREE EQU 12
DEX_WEEDLE     EQU 13
DEX_KAKUNA     EQU 14
DEX_BEEDRILL   EQU 15
DEX_PIDGEY     EQU 16
DEX_PIDGEOTTO  EQU 17
DEX_PIDGEOT    EQU 18
DEX_RATTATA    EQU 19
DEX_RATICATE   EQU 20
DEX_SPEAROW    EQU 21
DEX_FEAROW     EQU 22
DEX_EKANS      EQU 23
DEX_ARBOK      EQU 24
DEX_PIKACHU    EQU 25
DEX_RAICHU     EQU 26
DEX_SANDSHREW  EQU 27
DEX_SANDSLASH  EQU 28
DEX_NIDORAN_F  EQU 29
DEX_NIDORINA   EQU 30
DEX_NIDOQUEEN  EQU 31
DEX_NIDORAN_M  EQU 32
DEX_NIDORINO   EQU 33
DEX_NIDOKING   EQU 34
DEX_CLEFAIRY   EQU 35
DEX_CLEFABLE   EQU 36
DEX_VULPIX     EQU 37
DEX_NINETALES  EQU 38
DEX_JIGGLYPUFF EQU 39
DEX_WIGGLYTUFF EQU 40
DEX_ZUBAT      EQU 41
DEX_GOLBAT     EQU 42
DEX_ODDISH     EQU 43
DEX_GLOOM      EQU 44
DEX_VILEPLUME  EQU 45
DEX_PARAS      EQU 46
DEX_PARASECT   EQU 47
DEX_VENONAT    EQU 48
DEX_VENOMOTH   EQU 49
DEX_DIGLETT    EQU 50
DEX_DUGTRIO    EQU 51
DEX_MEOWTH     EQU 52
DEX_PERSIAN    EQU 53
DEX_PSYDUCK    EQU 54
DEX_GOLDUCK    EQU 55
DEX_MANKEY     EQU 56
DEX_PRIMEAPE   EQU 57
DEX_GROWLITHE  EQU 58
DEX_ARCANINE   EQU 59
DEX_POLIWAG    EQU 60
DEX_POLIWHIRL  EQU 61
DEX_POLIWRATH  EQU 62
DEX_ABRA       EQU 63
DEX_KADABRA    EQU 64
DEX_ALAKAZAM   EQU 65
DEX_MACHOP     EQU 66
DEX_MACHOKE    EQU 67
DEX_MACHAMP    EQU 68
DEX_BELLSPROUT EQU 69
DEX_WEEPINBELL EQU 70
DEX_VICTREEBEL EQU 71
DEX_TENTACOOL  EQU 72
DEX_TENTACRUEL EQU 73
DEX_GEODUDE    EQU 74
DEX_GRAVELER   EQU 75
DEX_GOLEM      EQU 76
DEX_PONYTA     EQU 77
DEX_RAPIDASH   EQU 78
DEX_SLOWPOKE   EQU 79
DEX_SLOWBRO    EQU 80
DEX_MAGNEMITE  EQU 81
DEX_MAGNETON   EQU 82
DEX_FARFETCH_D EQU 83
DEX_DODUO      EQU 84
DEX_DODRIO     EQU 85
DEX_SEEL       EQU 86
DEX_DEWGONG    EQU 87
DEX_GRIMER     EQU 88
DEX_MUK        EQU 89
DEX_SHELLDER   EQU 90
DEX_CLOYSTER   EQU 91
DEX_GASTLY     EQU 92
DEX_HAUNTER    EQU 93
DEX_GENGAR     EQU 94
DEX_ONIX       EQU 95
DEX_DROWZEE    EQU 96
DEX_HYPNO      EQU 97
DEX_KRABBY     EQU 98
DEX_KINGLER    EQU 99
DEX_VOLTORB    EQU 100
DEX_ELECTRODE  EQU 101
DEX_EXEGGCUTE  EQU 102
DEX_EXEGGUTOR  EQU 103
DEX_CUBONE     EQU 104
DEX_MAROWAK    EQU 105
DEX_HITMONLEE  EQU 106
DEX_HITMONCHAN EQU 107
DEX_LICKITUNG  EQU 108
DEX_KOFFING    EQU 109
DEX_WEEZING    EQU 110
DEX_RHYHORN    EQU 111
DEX_RHYDON     EQU 112
DEX_CHANSEY    EQU 113
DEX_TANGELA    EQU 114
DEX_KANGASKHAN EQU 115
DEX_HORSEA     EQU 116
DEX_SEADRA     EQU 117
DEX_GOLDEEN    EQU 118
DEX_SEAKING    EQU 119
DEX_STARYU     EQU 120
DEX_STARMIE    EQU 121
DEX_MR__MIME   EQU 122
DEX_SCYTHER    EQU 123
DEX_JYNX       EQU 124
DEX_ELECTABUZZ EQU 125
DEX_MAGMAR     EQU 126
DEX_PINSIR     EQU 127
DEX_TAUROS     EQU 128
DEX_MAGIKARP   EQU 129
DEX_GYARADOS   EQU 130
DEX_LAPRAS     EQU 131
DEX_DITTO      EQU 132
DEX_EEVEE      EQU 133
DEX_VAPOREON   EQU 134
DEX_JOLTEON    EQU 135
DEX_FLAREON    EQU 136
DEX_PORYGON    EQU 137
DEX_OMANYTE    EQU 138
DEX_OMASTAR    EQU 139
DEX_KABUTO     EQU 140
DEX_KABUTOPS   EQU 141
DEX_AERODACTYL EQU 142
DEX_SNORLAX    EQU 143
DEX_ARTICUNO   EQU 144
DEX_ZAPDOS     EQU 145
DEX_MOLTRES    EQU 146
DEX_DRATINI    EQU 147
DEX_DRAGONAIR  EQU 148
DEX_DRAGONITE  EQU 149
DEX_MEWTWO     EQU 150
DEX_MEW        EQU 151


; item name constants
MASTER_BALL   EQU $01
ULTRA_BALL    EQU $02
GREAT_BALL    EQU $03
POKE_BALL     EQU $04
TOWN_MAP      EQU $05
BICYCLE       EQU $06
; XXX ?????         EQU $07
SAFARI_BALL   EQU $08
POKEDEX       EQU $09
MOON_STONE    EQU $0A
ANTIDOTE      EQU $0B
BURN_HEAL     EQU $0C
ICE_HEAL      EQU $0D
AWAKENING     EQU $0E
PARLYZ_HEAL   EQU $0F
FULL_RESTORE  EQU $10
MAX_POTION    EQU $11
HYPER_POTION  EQU $12
SUPER_POTION  EQU $13
POTION        EQU $14
BOULDERBADGE  EQU $15
CASCADEBADGE  EQU $16
THUNDERBADGE  EQU $17
RAINBOWBADGE  EQU $18
SOULBADGE     EQU $19
MARSHBADGE    EQU $1A
VOLCANOBADGE  EQU $1B
EARTHBADGE    EQU $1C
ESCAPE_ROPE   EQU $1D
REPEL         EQU $1E
OLD_AMBER     EQU $1F
FIRE_STONE    EQU $20
THUNDER_STONE EQU $21
WATER_STONE   EQU $22
HP_UP         EQU $23
PROTEIN       EQU $24
IRON          EQU $25
CARBOS        EQU $26
CALCIUM       EQU $27
RARE_CANDY    EQU $28
DOME_FOSSIL   EQU $29
HELIX_FOSSIL  EQU $2A
SECRET_KEY    EQU $2B
; XXX ????? EQU $2C
BIKE_VOUCHER  EQU $2D
X_ACCURACY    EQU $2E
LEAF_STONE    EQU $2F
CARD_KEY      EQU $30
NUGGET        EQU $31
PP_UP         EQU $32
POKE_DOLL     EQU $33
FULL_HEAL     EQU $34
REVIVE        EQU $35
MAX_REVIVE    EQU $36
GUARD_SPEC_   EQU $37
SUPER_REPEL   EQU $38
MAX_REPEL     EQU $39
DIRE_HIT      EQU $3A
COIN          EQU $3B
FRESH_WATER   EQU $3C
SODA_POP      EQU $3D
LEMONADE      EQU $3E
S_S__TICKET   EQU $3F
GOLD_TEETH    EQU $40
X_ATTACK      EQU $41
X_DEFEND      EQU $42
X_SPEED       EQU $43
X_SPECIAL     EQU $44
COIN_CASE     EQU $45
OAK_S_PARCEL  EQU $46
ITEMFINDER    EQU $47
SILPH_SCOPE   EQU $48
POKE_FLUTE    EQU $49
LIFT_KEY      EQU $4A
EXP__ALL      EQU $4B
OLD_ROD       EQU $4C
GOOD_ROD      EQU $4D
SUPER_ROD     EQU $4E
; XXX todo: compare this to $32
;PP_UP         EQU $4F
ETHER         EQU $50
MAX_ETHER     EQU $51
ELIXER        EQU $52
MAX_ELIXER    EQU $53
HM_01         EQU $C4
HM_02         EQU $C5
HM_03         EQU $C6
HM_04         EQU $C7
HM_05         EQU $C8
TM_01         EQU $C9
TM_02         EQU $CA
TM_03         EQU $CB
TM_04         EQU $CC
TM_05         EQU $CD
TM_06         EQU $CE
TM_07         EQU $CF
TM_08         EQU $D0
TM_09         EQU $D1
TM_10         EQU $D2
TM_11         EQU $D3
TM_12         EQU $D4
TM_13         EQU $D5
TM_14         EQU $D6
TM_15         EQU $D7
TM_16         EQU $D8
TM_17         EQU $D9
TM_18         EQU $DA
TM_19         EQU $DB
TM_20         EQU $DC
TM_21         EQU $DD
TM_22         EQU $DE
TM_23         EQU $DF
TM_24         EQU $E0
TM_25         EQU $E1
TM_26         EQU $E2
TM_27         EQU $E3
TM_28         EQU $E4
TM_29         EQU $E5
TM_30         EQU $E6
TM_31         EQU $E7
TM_32         EQU $E8
TM_33         EQU $E9
TM_34         EQU $EA
TM_35         EQU $EB
TM_36         EQU $EC
TM_37         EQU $ED
TM_38         EQU $EE
TM_39         EQU $EF
TM_40         EQU $F0
TM_41         EQU $F1
TM_42         EQU $F2
TM_43         EQU $F3
TM_44         EQU $F4
TM_45         EQU $F5
TM_46         EQU $F6
TM_47         EQU $F7
TM_48         EQU $F8
TM_49         EQU $F9
TM_50         EQU $FA


; move name constants
POUND        EQU $01
KARATE_CHOP  EQU $02
DOUBLESLAP   EQU $03
COMET_PUNCH  EQU $04
MEGA_PUNCH   EQU $05
PAY_DAY      EQU $06
FIRE_PUNCH   EQU $07
ICE_PUNCH    EQU $08
THUNDERPUNCH EQU $09
SCRATCH      EQU $0A
VICEGRIP     EQU $0B
GUILLOTINE   EQU $0C
RAZOR_WIND   EQU $0D
SWORDS_DANCE EQU $0E
CUT          EQU $0F
GUST         EQU $10
WING_ATTACK  EQU $11
WHIRLWIND    EQU $12
FLY          EQU $13
BIND         EQU $14
SLAM         EQU $15
VINE_WHIP    EQU $16
STOMP        EQU $17
DOUBLE_KICK  EQU $18
MEGA_KICK    EQU $19
JUMP_KICK    EQU $1A
ROLLING_KICK EQU $1B
SAND_ATTACK  EQU $1C
HEADBUTT     EQU $1D
HORN_ATTACK  EQU $1E
FURY_ATTACK  EQU $1F
HORN_DRILL   EQU $20
TACKLE       EQU $21
BODY_SLAM    EQU $22
WRAP         EQU $23
TAKE_DOWN    EQU $24
THRASH       EQU $25
DOUBLE_EDGE  EQU $26
TAIL_WHIP    EQU $27
POISON_STING EQU $28
TWINEEDLE    EQU $29
PIN_MISSILE  EQU $2A
LEER         EQU $2B
BITE         EQU $2C
GROWL        EQU $2D
ROAR         EQU $2E
SING         EQU $2F
SUPERSONIC   EQU $30
SONICBOOM    EQU $31
DISABLE      EQU $32
ACID         EQU $33
EMBER        EQU $34
FLAMETHROWER EQU $35
MIST         EQU $36
WATER_GUN    EQU $37
HYDRO_PUMP   EQU $38
SURF         EQU $39
ICE_BEAM     EQU $3A
BLIZZARD     EQU $3B
PSYBEAM      EQU $3C
BUBBLEBEAM   EQU $3D
AURORA_BEAM  EQU $3E
HYPER_BEAM   EQU $3F
PECK         EQU $40
DRILL_PECK   EQU $41
SUBMISSION   EQU $42
LOW_KICK     EQU $43
COUNTER      EQU $44
SEISMIC_TOSS EQU $45
STRENGTH     EQU $46
ABSORB       EQU $47
MEGA_DRAIN   EQU $48
LEECH_SEED   EQU $49
GROWTH       EQU $4A
RAZOR_LEAF   EQU $4B
SOLARBEAM    EQU $4C
POISONPOWDER EQU $4D
STUN_SPORE   EQU $4E
SLEEP_POWDER EQU $4F
PETAL_DANCE  EQU $50
STRING_SHOT  EQU $51
DRAGON_RAGE  EQU $52
FIRE_SPIN    EQU $53
THUNDERSHOCK EQU $54
THUNDERBOLT  EQU $55
THUNDER_WAVE EQU $56
THUNDER      EQU $57
ROCK_THROW   EQU $58
EARTHQUAKE   EQU $59
FISSURE      EQU $5A
DIG          EQU $5B
TOXIC        EQU $5C
CONFUSION    EQU $5D
PSYCHIC_M    EQU $5E
HYPNOSIS     EQU $5F
MEDITATE     EQU $60
AGILITY      EQU $61
QUICK_ATTACK EQU $62
RAGE         EQU $63
TELEPORT     EQU $64
NIGHT_SHADE  EQU $65
MIMIC        EQU $66
SCREECH      EQU $67
DOUBLE_TEAM  EQU $68
RECOVER      EQU $69
HARDEN       EQU $6A
MINIMIZE     EQU $6B
SMOKESCREEN  EQU $6C
CONFUSE_RAY  EQU $6D
WITHDRAW     EQU $6E
DEFENSE_CURL EQU $6F
BARRIER      EQU $70
LIGHT_SCREEN EQU $71
HAZE         EQU $72
REFLECT      EQU $73
FOCUS_ENERGY EQU $74
BIDE         EQU $75
METRONOME    EQU $76
MIRROR_MOVE  EQU $77
SELFDESTRUCT EQU $78
EGG_BOMB     EQU $79
LICK         EQU $7A
SMOG         EQU $7B
SLUDGE       EQU $7C
BONE_CLUB    EQU $7D
FIRE_BLAST   EQU $7E
WATERFALL    EQU $7F
CLAMP        EQU $80
SWIFT        EQU $81
SKULL_BASH   EQU $82
SPIKE_CANNON EQU $83
CONSTRICT    EQU $84
AMNESIA      EQU $85
KINESIS      EQU $86
SOFTBOILED   EQU $87
HI_JUMP_KICK EQU $88
GLARE        EQU $89
DREAM_EATER  EQU $8A
POISON_GAS   EQU $8B
BARRAGE      EQU $8C
LEECH_LIFE   EQU $8D
LOVELY_KISS  EQU $8E
SKY_ATTACK   EQU $8F
TRANSFORM    EQU $90
BUBBLE       EQU $91
DIZZY_PUNCH  EQU $92
SPORE        EQU $93
FLASH        EQU $94
PSYWAVE      EQU $95
SPLASH       EQU $96
ACID_ARMOR   EQU $97
CRABHAMMER   EQU $98
EXPLOSION    EQU $99
FURY_SWIPES  EQU $9A
BONEMERANG   EQU $9B
REST         EQU $9C
ROCK_SLIDE   EQU $9D
HYPER_FANG   EQU $9E
SHARPEN      EQU $9F
CONVERSION   EQU $A0
TRI_ATTACK   EQU $A1
SUPER_FANG   EQU $A2
SLASH        EQU $A3
SUBSTITUTE   EQU $A4
STRUGGLE     EQU $A5
; these do double duty as animation identifiers
SLP_ANIM     EQU $BD ; sleeping monster
CONF_ANIM    EQU $BF ; confused monster
TOSS_ANIM    EQU $C1 ; try to catch a monster
SEND_ANIM    EQU $C3 ; send out a monster

; super game boy palettes
PAL_ROUTE     EQU $00
PAL_PALLET    EQU $01
PAL_VIRIDIAN  EQU $02
PAL_PEWTER    EQU $03
PAL_CERULEAN  EQU $04
PAL_LAVENDER  EQU $05
PAL_VERMILION EQU $06
PAL_CELADON   EQU $07
PAL_FUCHSIA   EQU $08
PAL_CINNABAR  EQU $09
PAL_INDIGO    EQU $0A
PAL_SAFFRON   EQU $0B
; XXX
PAL_LOGO1     EQU $0D
; XXX
PAL_LOGO2     EQU $0F
PAL_MEWMON    EQU $10
PAL_BLUEMON   EQU $11
PAL_REDMON    EQU $12
PAL_CYANMON   EQU $13
PAL_PURPLEMON EQU $14
PAL_BROWNMON  EQU $15
PAL_GREENMON  EQU $16
PAL_PINKMON   EQU $17
PAL_YELLOWMON EQU $18
PAL_GREYMON   EQU $19
PAL_SLOTS1    EQU $1A
PAL_SLOTS2    EQU $1B
PAL_SLOTS3    EQU $1C
PAL_SLOTS4    EQU $1D
PAL_BLACK     EQU $1E
PAL_GREENBAR  EQU $1F
PAL_YELLOWBAR EQU $20
PAL_REDBAR    EQU $21
PAL_BADGE     EQU $22
PAL_CAVE      EQU $23
; XXX

; map name constants
PALLET_TOWN     EQU $00
VIRIDIAN_CITY   EQU $01
PEWTER_CITY     EQU $02
CERULEAN_CITY   EQU $03
LAVENDER_TOWN   EQU $04
VERMILION_CITY  EQU $05
CELADON_CITY    EQU $06
FUCHSIA_CITY    EQU $07
CINNABAR_ISLAND EQU $08
INDIGO_PLATEAU  EQU $09
SAFFRON_CITY    EQU $0A
; unused        EQU $0B
ROUTE_1         EQU $0C
ROUTE_2         EQU $0D
ROUTE_3         EQU $0E
ROUTE_4         EQU $0F
ROUTE_5         EQU $10
ROUTE_6         EQU $11
ROUTE_7         EQU $12
ROUTE_8         EQU $13
ROUTE_9         EQU $14
ROUTE_10        EQU $15
ROUTE_11        EQU $16
ROUTE_12        EQU $17
ROUTE_13        EQU $18
ROUTE_14        EQU $19
ROUTE_15        EQU $1A
ROUTE_16        EQU $1B
ROUTE_17        EQU $1C
ROUTE_18        EQU $1D
ROUTE_19        EQU $1E
ROUTE_20        EQU $1F
ROUTE_21        EQU $20
ROUTE_22        EQU $21
ROUTE_23        EQU $22
ROUTE_24        EQU $23
ROUTE_25        EQU $24

; Evolution types
EV_LEVEL	EQU 1
EV_ITEM 	EQU 2
EV_TRADE	EQU 3

; Elemental types
NORMAL EQU $00
FIGHTING EQU $01
FLYING EQU $02
POISON EQU $03
GROUND EQU $04
ROCK EQU $05
BUG EQU $07
GHOST EQU $08
FIRE EQU $14
WATER EQU $15
GRASS EQU $16
ELECTRIC EQU $17
PSYCHIC EQU $18
ICE EQU $19
DRAGON EQU $1A

EAST EQU 1
WEST EQU 2
SOUTH EQU 4
NORTH EQU 8

; different kinds of people events
ITEM EQU $80
TRAINER EQU $40
