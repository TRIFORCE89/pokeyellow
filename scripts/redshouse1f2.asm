Func_f1b73:
	ld a, [wd72e]
	bit 3, a
	jp nz, MomHealPokemon ; if player has received a Pokémon from Oak, heal team
	ld a, [wPlayerGender]
	bit 2, a
	jr nz, .girl
	ld hl, MomWakeUpText
	jr .continue
.girl
	ld hl, MomWakeUpText2
.continue
	call PrintText
	ret

MomWakeUpText:
	TX_FAR _MomWakeUpText
	db "@"

MomWakeUpText2:
	TX_FAR _MomWakeUpText2
	db "@"

MomHealPokemon:
	ld hl, MomHealText1
	call PrintText
	call GBFadeOutToWhite
	call ReloadMapData
	predef HealParty
	ld a, MUSIC_PKMN_HEALED
	ld [wNewSoundID], a
	call PlaySound
.loop
	ld a, [wChannelSoundIDs]
	cp MUSIC_PKMN_HEALED
	jr z, .loop
	ld a, [wMapMusicSoundID]
	ld [wNewSoundID], a
	call PlaySound
	call GBFadeInFromWhite
	ld hl, MomHealText2
	call PrintText
	ret

MomHealText1:
	TX_FAR _MomHealText1
	db "@"
MomHealText2:
	TX_FAR _MomHealText2
	db "@"

Func_f1bc4:
	ld hl, TVWrongSideText
	ld a, [wPlayerFacingDirection]
	cp SPRITE_FACING_UP
	jp nz, .notUp
	ld a, [wPlayerGender]
	bit 2, a
	jr nz, .girl2
	ld hl, StandByMeText
	jr .notUp
.girl2
	ld hl, WizardOfOzText
.notUp
	call PrintText
	ret

StandByMeText:
	TX_FAR _StandByMeText
	db "@"

WizardOfOzText:
	TX_FAR _WizardOfOzText
	db "@"

TVWrongSideText:
	TX_FAR _TVWrongSideText
	db "@"
