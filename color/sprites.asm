; Handles sprite attributes

ATK_PAL_GREY    EQU 0
ATK_PAL_BLUE    EQU 1
ATK_PAL_RED     EQU 2
ATK_PAL_BROWN   EQU 3
ATK_PAL_YELLOW  EQU 4
ATK_PAL_GREEN   EQU 5
ATK_PAL_ICE	EQU 6
ATK_PAL_PURPLE	EQU 7
; 8: color based on attack type
; 9: don't change color palette (assume it's already set properly from elsewhere)


SPR_PAL_ORANGE	EQU 0
SPR_PAL_BLUE	EQU 1
SPR_PAL_GREEN	EQU 2
SPR_PAL_BROWN	EQU 3

LoadOverworldSpritePalettes:
	ld hl,SpritePalettes
	jr LoadPaletteData

LoadAttackSpritePalettes:
	ld hl,AttackSpritePalettes

LoadPaletteData:
	ld de,W2_SprPaletteData
	ld b,$40
.sprCopyLoop
	ld a,[hli]
	ld [de],a
	inc de
	dec b
	jr nz,.sprCopyLoop
	ld a,1
	ld [W2_LastOBP0],a
	ret

; Set an overworld sprite's colors
; On entering, A contains the flags (without a color palette) and de is the destination.
; This is called in the middle of a loop in engine/overworld/oam.asm, once per sprite.
ColorOverworldSprite:
	push af
	push bc
	push de
	and $f8
	ld b,a

	ld a,[hSpriteOffset2]
	ld e,a
	ld d,wSpriteStateData1>>8
	ld a,[de]		; Load A with picture ID
	dec a

	ld de, SpritePaletteAssignments
	add e
	ld e,a
	jr nc,.noCarry
	inc d
.noCarry
	ld a,[de]		; Get the picture ID's palette

	; If it's 4, that means no particular palette is assigned
	cp 4
	jr nz,.norandomColor

	; This is a (somewhat) random but consistent color
	ld a,[hSpriteOffset2]
	swap a
	and 3

.norandomColor

	pop de
	or b
	ld [de],a
	inc hl
	inc e
	pop bc
	pop af
	ret

; This is called whenever [wUpdateSpritesEnabled] != 1 (overworld sprites not enabled?).
;
; This sometimes does occur on the overworld, such as when exclamation marks appear, and
; when trees are being cut or boulders are being moved. Though, when in the overworld,
; W2_SpritePaletteMap is all blanked out (set to 9) except for the exclamation mark tile,
; so this function usually won't do anything.
;
; This colorizes: attack sprites, party menu, exclamation mark, perhaps more?
ColorNonOverworldSprites:
	ld a,2
	ld [rSVBK],a

	ld hl, wOAMBuffer
	ld b, 40

.spriteLoop
	inc hl
	inc hl
	ld a,[hli] ; tile
	ld e, a
	ld d, W2_SpritePaletteMap>>8
	ld a,[de]
	cp 8 ; if 8, colorize based on attack type
	jr z,.getAttackType
	cp 9 ; if 9, do not colorize (use whatever palette it's set to already)
	jr z,.nextSprite
	; Otherwise, use the value as-is
	jr .setPalette

.getAttackType
	push hl

	; Load animation (move) being used
	xor a
	ld [rSVBK],a
	ld a,[wAnimationID]
	ld d,a
	ld a,2
	ld [rSVBK],a

	; If the absorb animation is playing, it's always green. (Needed for leech seed)
	ld a,d
	cp ABSORB
	ld a,GRASS
	jr z,.gotType

	; Make stun spore yellow despite being a grass move
	ld a,d
	cp STUN_SPORE
	ld a,ELECTRIC
	jr z,.gotType

	ld a,[H_WHOSETURN]
	and a
	jr z,.playersTurn
	ld a,[wEnemyMoveType] ; Enemy move type
	jr .gotType
.playersTurn
	ld a,[wPlayerMoveType] ; Move type
.gotType
	ld hl, TypeColorTable
	add l
	ld l,a
	jr nc,.noCarry
	inc h
.noCarry
	ld a,[hl]
	pop hl

.setPalette
	ld c,a
	ld a,$f8
	and [hl]
	or c
	ld [hl],a

.nextSprite
	inc hl
	dec b
	jr nz, .spriteLoop

.end
	xor a
	ld [rSVBK],a
	ret

; Called when starting a battle
LoadAnimationTilesetPalettes:
	push de
	ld a,[wWhichBattleAnimTileset] ; Animation tileset
	ld c,a
	ld a,2
	ld [rSVBK],a

	xor a
	ld [W2_UseOBP1],a

	call LoadAttackSpritePalettes

	ld a,c
	and a
	ld hl, AnimationTileset1Palettes
	jr z,.gotPalette
	ld hl, AnimationTileset2Palettes
.gotPalette
	ld de, W2_SpritePaletteMap
	ld b, $80
.copyLoop
	ld a,[hli]
	ld [de],a
	inc e
	dec b
	jr nz,.copyLoop

	ld a,1
	ld [W2_ForceOBPUpdate],a

	xor a
	ld [rSVBK],a

	pop de
	ret


; Set all sprite palettes to not be colorized by "ColorNonOverworldSprites".
; ASSUMES THAT WRAM BANK 2 IS LOADED.
ClearSpritePaletteMap:
	ld hl, W2_SpritePaletteMap
	ld b,$0 ; $100
	ld a,9
.loop
	ld [hli],a
	dec b
	jr nz,.loop
	ret


SpritePaletteAssignments: ; Characters on the overworld
	; 0x01: SPRITE_RED
	db SPR_PAL_ORANGE

	; 0x02: SPRITE_BLUE
	db SPR_PAL_BLUE

	; 0x03: SPRITE_OAK
	db SPR_PAL_BROWN

	; 0x04: SPRITE_BUG_CATCHER
	db 4

	; 0x05: SPRITE_SLOWBRO
	db SPR_PAL_ORANGE

	; 0x06: SPRITE_LASS
	db 4

	; 0x07: SPRITE_BLACK_HAIR_BOY_1
	db 4

	; 0x08: SPRITE_LITTLE_GIRL
	db 4

	; 0x09: SPRITE_BIRD
	db SPR_PAL_ORANGE

	; 0x0a: SPRITE_FAT_BALD_GUY
	db 4

	; 0x0b: SPRITE_GAMBLER
	db 4

	; 0x0c: SPRITE_BLACK_HAIR_BOY_2
	db 4

	; 0x0d: SPRITE_GIRL
	db 4

	; 0x0e: SPRITE_HIKER
	db 4

	; 0x0f: SPRITE_FOULARD_WOMAN
	db 4

	; 0x10: SPRITE_GENTLEMAN
	db SPR_PAL_BLUE

	; 0x11: SPRITE_DAISY
	db SPR_PAL_BLUE

	; 0x12: SPRITE_BIKER
	db 4

	; 0x13: SPRITE_SAILOR
	db 4

	; 0x14: SPRITE_COOK
	db 4

	; 0x15: SPRITE_BIKE_SHOP_GUY
	db 4

	; 0x16: SPRITE_MR_FUJI
	db SPR_PAL_GREEN

	; 0x17: SPRITE_GIOVANNI
	db SPR_PAL_BLUE

	; 0x18: SPRITE_ROCKET
	db SPR_PAL_BROWN

	; 0x19: SPRITE_MEDIUM
	db 4

	; 0x1a: SPRITE_WAITER
	db 4

	; 0x1b: SPRITE_ERIKA
	db 4

	; 0x1c: SPRITE_MOM_GEISHA
	db 4

	; 0x1d: SPRITE_BRUNETTE_GIRL
	db 4

	; 0x1e: SPRITE_LANCE
	db SPR_PAL_ORANGE

	; 0x1f: SPRITE_OAK_SCIENTIST_AIDE
	db SPR_PAL_BROWN

	; 0x20: SPRITE_OAK_AIDE
	db SPR_PAL_BROWN

	; 0x21: SPRITE_ROCKER ($20)
	db 4

	; 0x22: SPRITE_SWIMMER
	db 4

	; 0x23: SPRITE_WHITE_PLAYER
	db 4

	; 0x24: SPRITE_GYM_HELPER
	db 4

	; 0x25: SPRITE_OLD_PERSON
	db 4

	; 0x26: SPRITE_MART_GUY
	db 4

	; 0x27: SPRITE_FISHER
	db 4

	; 0x28: SPRITE_OLD_MEDIUM_WOMAN
	db 4

	; 0x29: SPRITE_NURSE
	db SPR_PAL_BLUE

	; 0x2a: SPRITE_CABLE_CLUB_WOMAN
	db SPR_PAL_GREEN

	; 0x2b: SPRITE_MR_MASTERBALL
	db 4

	; 0x2c: SPRITE_LAPRAS_GIVER
	db 4

	; 0x2d: SPRITE_WARDEN
	db 4

	; 0x2e: SPRITE_SS_CAPTAIN
	db 4

	; 0x2f: SPRITE_FISHER2
	db 4

	; 0x30: SPRITE_BLACKBELT
	db 4

	; 0x31: SPRITE_GUARD ($30)
	db 4

	; 0x32: $32
	db 4

	; 0x33: SPRITE_MOM
	db 4

	; 0x34: SPRITE_BALDING_GUY
	db 4

	; 0x35: SPRITE_YOUNG_BOY
	db 4

	; 0x36: SPRITE_GAMEBOY_KID
	db 4

	; 0x37: SPRITE_GAMEBOY_KID_COPY
	db 4

	; 0x38: SPRITE_CLEFAIRY
	db SPR_PAL_ORANGE

	; 0x39: SPRITE_AGATHA
	db SPR_PAL_BLUE

	; 0x3a: SPRITE_BRUNO
	db SPR_PAL_BROWN

	; 0x3b: SPRITE_LORELEI
	db SPR_PAL_ORANGE

	; 0x3c: SPRITE_SEEL
	db SPR_PAL_ORANGE

	; 0x3d: SPRITE_BALL
	db SPR_PAL_ORANGE

	; 0x3e: SPRITE_OMANYTE
	db SPR_PAL_ORANGE

	; 0x3f: SPRITE_BOULDER
	db SPR_PAL_BROWN

	; 0x40: SPRITE_PAPER_SHEET
	db SPR_PAL_ORANGE

	; 0x41: SPRITE_BOOK_MAP_DEX
	db SPR_PAL_ORANGE

	; 0x42: SPRITE_CLIPBOARD
	db SPR_PAL_BROWN

	; 0x43: SPRITE_SNORLAX
	db SPR_PAL_ORANGE

	; 0x44: SPRITE_OLD_AMBER_COPY
	db SPR_PAL_BROWN

	; 0x45: SPRITE_OLD_AMBER
	db SPR_PAL_BROWN

	; 0x46: SPRITE_LYING_OLD_MAN_UNUSED_1
	db 4

	; 0x47: SPRITE_LYING_OLD_MAN_UNUSED_2
	db 4

	; 0x48: SPRITE_LYING_OLD_MAN
	db SPR_PAL_BROWN


AnimationTileset1Palettes:
	INCBIN "color/data/animtileset1palettes.bin"

AnimationTileset2Palettes:
	INCBIN "color/data/animtileset2palettes.bin"

TypeColorTable: ; Used for a select few sprites to be colorized based on attack type
	db 0 ; NORMAL EQU $00
	db 0 ; FIGHTING EQU $01
	db 0 ; FLYING EQU $02
	db 7 ; POISON EQU $03
	db 3 ; GROUND EQU $04
	db 3 ; ROCK EQU $05
	db 0
	db 0 ; BUG EQU $07
	db 7 ; GHOST EQU $08
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 2 ; FIRE EQU $14
	db 1 ; WATER EQU $15
	db 5 ; GRASS EQU $16
	db 4 ; ELECTRIC EQU $17
	db 7 ; PSYCHIC EQU $18
	db 6 ; ICE EQU $19
	db 1 ; DRAGON EQU $1A

INCLUDE "color/data/spritepalettes.asm"
