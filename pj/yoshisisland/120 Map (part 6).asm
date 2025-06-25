asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr04 = $17
!instr08 = $18
!instr0A = $19
!instr10 = $1A
!instr13 = $1B
!instr1A = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr04,$FF,$EC,$B8,$0A,$02
  db !instr08,$FF,$E0,$B8,$0A,$12
  db !instr0A,$FF,$E0,$B8,$03,$74
  db !instr10,$8D,$E0,$B8,$03,$00
  db !instr13,$FE,$F3,$B8,$04,$FF
  db !instr1A,$FF,$E0,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample04,Sample04+288
  dw Sample08,Sample08+1782
  dw Sample0A,Sample0A+882
  dw Sample10,Sample10+27
  dw Sample13,Sample13+369
  dw Sample19_1A,Sample19_1A+1008
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample04: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample08: incbin "Sample_c9c40f868146997acc8be0cb97700a9f.brr"
  Sample0A: incbin "Sample_59a3d5a1f3b6271960c6172c3401533b.brr"
  Sample10: incbin "Sample_57baebb26796008057e695fab7d3fd38.brr"
  Sample13: incbin "Sample_4e4eabd94f1d721abc772633931c5756.brr"
  Sample19_1A: incbin "Sample_5208388da726b4ff3c057f432c18490c.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDCA7

TrackerDCA7:
-
  dw .pattern0
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,25
  !musicVolume,200
  !instr,!instr13
  !pan,8
  !volume,200
  !loop : dw .subE098 : db 1
  db 48
  !tie
  !end

.pattern0_1
  !loop : dw .subE36D : db 1
  db 48
  !tie
  !end

.pattern0_2
  !loop : dw .subE3F9 : db 1
  db 48
  !tie
  !end

.pattern0_3
  !instr,!instr1A
  !pan,4
  !volume,140
  !loop : dw .subE14A : db 1
  db 48
  !tie
  !end

.pattern0_4
  !loop : dw .subE1A0 : db 1
  !end

.pattern0_5
  !loop : dw .subE453 : db 1
  db 48
  !tie
  !end

.pattern0_6
  !loop : dw .subE3CB : db 1
  db 48
  !tie
  !end

.pattern0_7
  !instr,!instr08
  !pan,18
  !volume,140
  !loop : dw .subE320 : db 2
  db 6,$07
  !c6
  !c6
  !c6
  !c6
  db 6,$37
  !c6
  db 6,$07
  !c6
  !c6
  db 6,$3D
  !c6
  !end

.subE098
  db 6,$2B
  !b4
  db 6,$38
  !b4
  db 12,$0C
  !c5
  db 12,$2C
  !e5
  db 12,$0B
  !c5
  db 18,$4D
  !d5
  db 30,$0D
  !d5
  db 6,$3C
  !e5
  db 18,$2B
  !e5
  db 12,$0C
  !e5
  db 12,$07
  !c5
  db 18,$6D
  !d5
  db 30,$0D
  !c5
  db 6,$2C
  !b4
  db 6,$3A
  !b4
  db 12,$2B
  !c5
  db 12,$2C
  !e5
  db 12,$0B
  !c5
  db 18,$5D
  !d5
  db 30,$0C
  !d5
  db 6,$4D
  !e5
  db 6,$3B
  !e5
  db 12,$07
  !e5
  db 12,$0B
  !e5
  !c5
  db 18,$6E
  !d5
  db 18,$0C
  !c5
  db 12,$7C
  !b4
  !end

.subE36D
  !instr,!instr04
  !pan,10
  !volume,220
  db 24,$3C
  !g2
  db 24,$0C
  !a2
  db 18,$6C
  !b2
  db 30,$0C
  !c3
  db 24,$3C
  !d3
  db 24,$0C
  !c3
  db 18,$6C
  !b2
  db 30,$0B
  !a2
  db 24,$3D
  !g2
  db 24,$0C
  !a2
  db 18,$6C
  !b2
  db 30,$0C
  !c3
  db 24,$3C
  !d3
  db 24,$0C
  !c3
  db 18,$6C
  !as2
  db 18,$0C
  !gs2
  db 12,$7D
  !g2
  !end

.subE3F9
  !instr,!instr1A
  !pan,12
  !volume,220
  db 6,$3C
  !d6
  !d6
  db 12,$0B
  !e6
  db 12,$2D
  !g6
  db 12,$0B
  !e6
  db 18,$5D
  !g6
  db 30,$0C
  !b6
  db 6,$4D
  !c7
  db 6,$7B
  !c7
  db 12,$0B
  !b6
  db 12,$0D
  !g6
  db 12,$0B
  !e6
  db 18,$5D
  !g6
  db 30,$0D
  !g6
  db 6,$2C
  !d6
  db 6,$3C
  !d6
  db 12,$0B
  !e6
  db 12,$2D
  !g6
  db 12,$0B
  !e6
  db 18,$4D
  !g6
  db 30,$0D
  !b6
  db 6,$5D
  !c7
  db 6,$6B
  !c7
  db 12,$0B
  !b6
  db 12,$0C
  !g6
  !e6
  db 18,$6E
  !g6
  db 18,$0D
  !g6
  db 12,$7D
  !g6
  !end

.subE14A
  db 4
  !rest
  db 6,$3C
  !d5
  !d5
  db 12,$0B
  !e5
  db 12,$2D
  !g5
  db 12,$0B
  !e5
  db 18,$5D
  !g5
  db 30,$0C
  !b5
  db 6,$4D
  !c6
  db 6,$7B
  !c6
  db 12,$0B
  !b5
  db 12,$0D
  !g5
  db 12,$0B
  !e5
  db 18,$5D
  !g5
  db 30,$0D
  !g5
  db 6,$2C
  !d5
  db 6,$3C
  !d5
  db 12,$0B
  !e5
  db 12,$2D
  !g5
  db 12,$0B
  !e5
  db 18,$4D
  !g5
  db 30,$0D
  !b5
  db 6,$5D
  !c6
  db 6,$6B
  !c6
  db 12,$0B
  !b5
  db 12,$0C
  !g5
  !e5
  db 18,$6E
  !g5
  db 18,$0D
  !g5
  db 8,$7D
  !g5
  !end

.subE1A0
  !instr,!instr02
  !pan,14
  !volume,250
  db 7,$17
  !b5
  db 10,$00
  !b5
  db 6,$12
  !b5
  db 12,$0F
  !b5
  db 12,$25
  !a4
  db 18,$0F
  !b5
  db 6,$16
  !b5
  db 12,$0F
  !b5
  db 6,$26
  !a4
  db 6,$10
  !b5
  db 1,$7F
  !b5
  db 5,$12
  !tie
  db 12,$02
  !b5
  db 6,$13
  !b5
  db 12,$0D
  !b5
  db 12,$27
  !a4
  db 6,$1C
  !b5
  db 6,$12
  !b5
  !b5
  db 7,$15
  !b5
  db 11,$0B
  !b5
  db 13,$76
  !a4
  db 7,$17
  !b5
  db 10,$00
  !b5
  db 6,$12
  !b5
  db 12,$0F
  !b5
  db 12,$25
  !a4
  db 18,$0F
  !b5
  db 6,$16
  !b5
  db 12,$0F
  !b5
  db 6,$26
  !a4
  db 6,$10
  !b5
  db 1,$7F
  !b5
  db 5,$12
  !tie
  db 12,$02
  !b5
  db 6,$13
  !b5
  db 12,$0D
  !b5
  db 12,$27
  !a4
  db 6,$1C
  !b5
  db 6,$12
  !b5
  !b5
  db 7,$15
  !b5
  db 11,$0B
  !b5
  db 13,$76
  !a4
  db 6,$16
  !b5
  db 12
  !rest
  db 7,$15
  !b5
  db 11,$0B
  !b5
  db 12,$76
  !a4
  !end

.subE453
  !instr,!instr10
  !pan,7
  !volume,200
  !vibrato,10,28,24
  db 48
  !rest
  db 18,$7D
  !b6
  db 30,$1C
  !c7
  db 48
  !rest
  db 18,$5D
  !b6
  db 30,$1D
  !a6
  db 48
  !rest
  db 18,$7D
  !b6
  db 30,$1F
  !c7
  db 48
  !rest
  db 18,$6E
  !b6
  db 18,$1E
  !a6
  db 12,$7E
  !g6
  !end

.subE3CB
  !instr,!instr0A
  !pan,11
  !volume,230
  !vibrato,10,27,29
  db 48
  !rest
  db 18,$7D
  !d5
  db 30,$1C
  !e5
  db 48
  !rest
  db 18,$5D
  !d5
  db 30,$1D
  !c5
  db 48
  !rest
  db 18,$7D
  !d5
  db 30,$1F
  !e5
  db 48
  !rest
  db 18,$6E
  !d5
  db 18,$1E
  !c5
  db 12,$7E
  !b4
  !end

.subE320
  db 6,$07
  !c6
  !c6
  !c6
  !c6
  db 6,$3D
  !c6
  db 6,$07
  !c6
  !c6
  db 6,$3D
  !c6
  db 6,$37
  !c6
  db 6,$07
  !c6
  !c6
  db 6,$3D
  !c6
  db 6,$1D
  !c6
  db 6,$09
  !c6
  db 6,$1D
  !c6
  db 6,$09
  !c6
  db 6,$07
  !c6
  !c6
  !c6
  !c6
  db 6,$3D
  !c6
  db 6,$07
  !c6
  !c6
  db 6,$3D
  !c6
  db 6,$3D
  !c6
  db 6,$07
  !c6
  !c6
  db 6,$3D
  !c6
  db 6,$1D
  !c6
  db 6,$09
  !c6
  db 6,$1D
  !c6
  db 6,$09
  !c6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
