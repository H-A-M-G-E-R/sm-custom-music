asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr04 = $17
!instr13 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr04,$FF,$EC,$B8,$0A,$02
  db !instr13,$FE,$F3,$B8,$04,$FF
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample04,Sample04+288
  dw Sample13,Sample13+369
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample04: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample13: incbin "Sample_4e4eabd94f1d721abc772633931c5756.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerDC7F

TrackerDC7F:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !tempo,23
  !musicVolume,240
  !echo,%11111111,0,0
  !echoParameters,2,30,2
  !dynamicEcho,80,20,20
  !instr,!instr02
  !pan,12
  !volume,240
  db 96
  !rest
  !rest
  db 16
  !rest
  !end

.pattern0_1
  !instr,!instr04
  !pan,10
  !volume,200
  db 48
  !rest
  db 12
  !rest
  db 12,$0A
  !g4
  !g4
  db 12,$09
  !g4
  db 12,$49
  !g4
  !pitchSlide,6,4 : !g3
  !g3
  !g3
  !g3
  db 48,$79
  !g3
  db 16
  !rest
  !end

.pattern0_2
  !instr,!instr13
  !pan,7
  !volume,240
  db 12
  !rest
  db 12,$1A
  !g6
  !g6
  db 12,$19
  !g6
  db 48
  !g6
  db 12
  !rest
  db 12,$1B
  !g5
  db 12,$1A
  !g5
  db 12,$09
  !g5
  db 30,$78
  !g5
  db 6
  !tie
  !g6
  !d6
  !a5
  db 10
  !e5
  !end

.pattern0_3
  !instr,!instr13
  !pan,8
  !volume,240
  db 12
  !rest
  db 12,$1A
  !b5
  !b5
  db 12,$19
  !b5
  db 48
  !b5
  db 12
  !rest
  db 12,$1B
  !b4
  db 12,$1A
  !b4
  db 12,$09
  !b4
  db 30,$78
  !b4
  db 8
  !tie
  db 6
  !f6
  !c6
  !g5
  db 8
  !d5
  !end

.pattern0_4
  !instr,!instr13
  !pan,9
  !volume,240
  db 12
  !rest
  db 12,$1A
  !g5
  !g5
  db 12,$19
  !g5
  db 48
  !g5
  db 12
  !rest
  db 12,$1B
  !g4
  db 12,$1A
  !g4
  db 12,$09
  !g4
  db 30,$78
  !g4
  db 10
  !tie
  db 6
  !e6
  !b5
  !f5
  !c5
  !end

.pattern1_0
  !tempo,23
  !musicVolume,240
  !instr,!instr02
  !pan,12
  !volume,240
  db 11,$1A
  !a4
  db 13,$02
  !b5
  db 11,$0A
  !b5
  db 12,$0F
  !b5
  db 12,$79
  !d4
  db 12,$78
  !d4
  db 12,$77
  !b3
  db 12,$0D
  !a4
  db 1,$7D
  !a4
  db 11,$01
  !tie
  db 12
  !b5
  db 12,$09
  !b5
  db 12,$0E
  !b5
  db 12,$7A
  !d4
  !d4
  db 12,$77
  !b3
  db 13,$0D
  !a4
  db 11,$1B
  !a4
  db 13,$00
  !a4
  db 12,$0B
  !b5
  db 11,$0F
  !b5
  db 12,$78
  !d4
  db 12,$79
  !d4
  db 13,$77
  !b3
  db 12,$0F
  !a4
  db 6,$18
  !a4
  db 6,$1C
  !a4
  db 11,$6F
  !a4
  db 12,$04
  !b5
  db 12,$0F
  !b5
  db 11,$78
  !d4
  db 13
  !d4
  db 12,$77
  !b3
  db 2,$7D
  !a4
  db 11
  !rest
  !end

.pattern1_1
  !instr,!instr04
  !pan,10
  !volume,200
  db 36,$49
  !c3
  db 11,$1A
  !e3
  db 13,$0A
  !g3
  db 12
  !g3
  db 24,$6A
  !e3
  db 36,$5A
  !f3
  db 12,$0A
  !a3
  !c4
  db 12,$09
  !c4
  db 23,$49
  !a3
  db 1,$79
  !c3
  db 36,$6A
  !tie
  db 11,$1A
  !e3
  db 12,$0A
  !g3
  !g3
  db 25,$6A
  !e3
  db 35,$4A
  !f3
  db 12,$19
  !a3
  db 12,$0A
  !c4
  !c4
  db 12,$7A
  !a3
  db 6,$37
  !a3
  db 7,$39
  !c4
  !end

.pattern1_2
  !instr,!instr13
  !pan,7
  !volume,240
  db 24
  !rest
  db 12,$1A
  !c6
  !g5
  db 12,$19
  !as5
  !as5
  db 24,$5B
  !g5
  !rest
  db 12,$1B
  !f6
  db 12,$1A
  !c6
  db 12,$09
  !ds6
  db 12,$08
  !ds6
  db 24,$6B
  !f6
  !rest
  db 12,$1A
  !c6
  db 12,$09
  !g5
  db 12,$08
  !as5
  !as5
  db 24,$5B
  !g5
  !rest
  db 12,$1A
  !f6
  db 12,$0A
  !c6
  !ds6
  db 12,$09
  !ds6
  db 21,$7C
  !f6
  db 3
  !rest
  !end

.pattern1_3
  !instr,!instr13
  !pan,8
  !volume,230
  db 24
  !rest
  db 12,$0A
  !g5
  db 12,$19
  !e5
  db 12,$09
  !g5
  db 12,$1A
  !e5
  db 24,$6A
  !e5
  !rest
  db 12,$07
  !c6
  db 12,$08
  !a5
  db 12,$02
  !as5
  db 12,$19
  !as5
  db 24,$6A
  !c6
  !rest
  db 12,$0A
  !g5
  db 12,$08
  !e5
  db 12,$0A
  !e5
  db 12,$1A
  !e5
  db 24,$69
  !e5
  !rest
  db 12,$08
  !c6
  db 12,$0A
  !a5
  db 12,$09
  !as5
  !as5
  db 21,$7A
  !c6
  db 3
  !rest
  !end

.pattern1_4
  !instr,!instr13
  !pan,9
  !volume,230
  db 24
  !rest
  db 12,$19
  !e5
  db 12,$1A
  !c5
  !e5
  !c5
  db 24,$6A
  !c5
  !rest
  db 12,$17
  !a5
  db 12,$0A
  !f5
  db 12,$09
  !g5
  db 12,$08
  !g5
  db 24,$6A
  !a5
  !rest
  db 12,$18
  !e5
  db 12,$08
  !c5
  db 12,$09
  !c5
  db 12,$08
  !c5
  db 24,$6A
  !c5
  !rest
  db 12,$16
  !a5
  db 12,$09
  !f5
  db 12,$0A
  !g5
  db 12,$09
  !g5
  db 20,$7A
  !a5
  db 4
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
