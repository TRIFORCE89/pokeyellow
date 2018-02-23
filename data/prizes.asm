PrizeDifferentMenuPtrs:
  dw PrizeMenuMon1Entries
  dw PrizeMenuMon1Cost

  dw PrizeMenuMon2Entries
  dw PrizeMenuMon2Cost

  dw PrizeMenuTMsEntries
  dw PrizeMenuTMsCost

PrizeDifferentMenuPtrs_GotHitmonlee:
	dw PrizeMenuMon1Entries
	dw PrizeMenuMon1Cost

  dw PrizeMenuMon2Entries_GotHitmonlee
  dw PrizeMenuMon2Cost_GotHitmonlee

  dw PrizeMenuTMsEntries
  dw PrizeMenuTMsCost

PrizeDifferentMenuPtrs_GotHitmonchan:
	dw PrizeMenuMon1Entries
	dw PrizeMenuMon1Cost

  dw PrizeMenuMon2Entries_GotHitmonchan
  dw PrizeMenuMon2Cost_GotHitmonchan

  dw PrizeMenuTMsEntries
  dw PrizeMenuTMsCost

PrizeMenuMon1Entries:
	db ABRA
	db CLEFAIRY
	db EEVEE
	db "@"

PrizeMenuMon1Cost:
	coins 230
	coins 750
	coins 2680
	db "@"

PrizeMenuMon2Entries:
	db CUBONE
	db DRATINI
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
	coins 2800
	coins 4600
	coins 9999
	db "@"

PrizeMenuMon2Entries_GotHitmonlee:
	db DRATINI
	db HITMONCHAN
	db PORYGON
	db "@"

PrizeMenuMon2Cost_GotHitmonlee:
	coins 4600
	coins 6500
	coins 9999
	db "@"

PrizeMenuMon2Entries_GotHitmonchan:
	db DRATINI
	db HITMONLEE
	db PORYGON
	db "@"

PrizeMenuMon2Cost_GotHitmonchan:
	coins 4600
	coins 6500
	coins 9999
	db "@"

PrizeMenuTMsEntries:
	db TM_23
	db TM_15
	db TM_50
	db "@"

PrizeMenuTMsCost:
	coins 3300
	coins 5500
	coins 7700
	db "@"
