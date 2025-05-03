asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr04 = $18
!instr05 = $19
!instr06 = $1A
!instr07 = $1B
!instr08 = $1C
!instr0B = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr03,$FF,$E9,$B8,$03,$00
  db !instr04,$FF,$F3,$B8,$06,$00
  db !instr05,$FF,$E8,$B8,$02,$30
  db !instr06,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$E0,$B8,$03,$C0
  db !instr08,$FF,$F4,$B8,$03,$90
  db !instr0B,$FC,$F1,$B8,$03,$E0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+153
  dw Sample03,Sample03+1386
  dw Sample04,Sample04+612
  dw Sample05,Sample05+1233
  dw Sample06,Sample06+1116
  dw Sample07,Sample07+1530
  dw Sample08,Sample08+1152
  dw Sample0B,Sample0B+549
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample03: incbin "Sample_146a6954706c31d4a7f0210f1a41430a.brr"
  Sample04: incbin "Sample_f45902c0951fdb47812a49b937fa662d.brr"
  Sample05: incbin "Sample_109c5729f128f87a93842e99c2b20c67.brr"
  Sample06: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample07: incbin "Sample_c38c118110713ed94b98dc70871a6061.brr"
  Sample08: incbin "Sample_902a1cfa6206b16ff325e6df14f7c7d7.brr"
  Sample0B: incbin "Sample_5cac8ed5aaaa86695a684f7f807906cc.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2404

Tracker2404:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr06
  !musicVolume,255
  !tempo,30
  db 6
  !rest
  !instr,!instr03
  !volume,146
  !pan,8
  !vibrato,48,30,96
  db 6,$79
  !fs5
  db 96
  !gs5
  db 90
  !tie
  db 6,$78
  !b5
  db 96,$79
  !gs5
  !tie
  !end

.pattern0_1
  db 12
  !rest
  db 96
  !rest
  db 84
  !rest
  !volume,198
  !instr,!instr08
  !pan,10
  db 12,$7C
  !g4
  db 96
  !rest
  !instr,!instr05
  !volume,166
  !pan,6
  !subtranspose,86
  db 48
  !rest
  db 6,$7A
  !gs5
  db 6,$78
  !gs5
  !rest
  db 6,$7B
  !gs5
  db 6,$72
  !gs5
  db 6,$7B
  !fs5
  db 6,$73
  !gs5
  !rest

.pattern0_2
  db 12
  !rest
  !volume,195
  !instr,!instr01
  db 84,$69
  !gs3
  db 12,$19
  !gs3
  db 84,$69
  !gs3
  db 12,$18
  !gs3
  db 84,$69
  !gs3
  db 12,$19
  !gs3
  db 48,$4A
  !gs3
  db 18,$6A
  !gs3
  db 18,$1A
  !gs3
  db 12,$7B
  !gs3

.pattern0_3
  db 12
  !rest
  !volume,198
  db 24,$7B
  %percNote(!instr06-!instr06)
  db 36,$7F
  %percNote(!instr07-!instr06)
  !instr,!instr08
  !pan,12
  db 6,$7A
  !c5
  !pan,10
  !g4
  !pan,8
  db 12,$7C
  !d4
  !pan,10
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 36,$7F
  %percNote(!instr07-!instr06)
  !instr,!instr08
  !pan,12
  db 24,$7A
  !c5
  !pan,10
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 36,$7F
  %percNote(!instr07-!instr06)
  !instr,!instr08
  !pan,12
  db 6,$7A
  !c5
  !pan,10
  !g4
  !pan,8
  db 12,$7C
  !d4
  !pan,10
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 24,$7F
  %percNote(!instr07-!instr06)
  db 6
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)

.pattern0_4
  !instr,!instr04
  !volume,166
  !pan,11
  db 6,$7C
  !fs4
  db 6,$7C
  !fs4
  !loop : dw .sub2C69 : db 2

.pattern0_5
  db 6
  !rest
  !volume,234
  !pan,9
  !instr,!instr03
  db 6,$79
  !fs4
  db 96
  !gs4
  db 90
  !tie
  db 6,$78
  !b4
  db 96,$79
  !gs4
  db 48
  !tie
  !instr,!instr05
  !volume,166
  !pan,14
  !subtranspose,86
  db 6,$7A
  !ds5
  db 6,$79
  !ds5
  !rest
  db 6,$7B
  !ds5
  db 6,$73
  !ds5
  db 6,$7B
  !cs5
  db 6,$73
  !ds5
  !rest

.pattern0_6
  !instr,!instr04
  !volume,166
  !pan,9
  db 6,$7E
  !cs4
  db 6,$7D
  !cs4
  db 12,$7D
  !cs4
  !ds4
  !ds4
  db 12,$7C
  !ds4
  db 12,$7C
  !ds4
  db 12,$7C
  !ds4
  db 12,$7D
  !ds4
  db 6,$7D
  !ds4
  !ds4
  db 12,$7D
  !ds4
  db 12,$7D
  !ds4
  db 12,$7D
  !ds4
  db 12,$7C
  !ds4
  db 12,$7D
  !ds4
  db 12,$7C
  !ds4
  db 12,$7D
  !ds4
  db 6,$7C
  !ds4
  db 6,$7C
  !ds4
  db 12,$7D
  !cs4
  !ds4
  !ds4
  db 12,$7C
  !ds4
  db 12,$7C
  !ds4
  db 12,$7C
  !ds4
  db 12,$7D
  !ds4
  db 6,$7D
  !fs4
  !fs4
  db 12,$7D
  !ds4
  db 12,$7D
  !ds4
  db 12,$7D
  !ds4
  db 12,$7C
  !ds4
  db 12,$7D
  !ds4
  db 12,$7C
  !ds4
  !ds4
  db 6,$7C
  !cs4
  db 6,$7C
  !cs4

.pattern1_0
  !instr,!instr03
  !volume,146
  !pan,10
  !vibrato,48,24,128
  !subtranspose,0
  db 84,$7D
  !b5
  db 6,$7D
  !as5
  db 6,$7B
  !a5
  !loop : dw .sub2C9E : db 1
  !loop : dw .sub2D02 : db 1
  db 36,$7D
  !fs6
  db 48,$6D
  !a6
  db 6,$6B
  !d6
  !ds6
  !loop : dw .sub2D02 : db 1
  !loop : dw .sub2D19 : db 1
  db 12,$13
  !b6
  !instr,!instr05
  !volume,125
  !subtranspose,88
  db 12,$7C
  !b6
  db 12,$7D
  !as6
  db 12,$7C
  !a6
  db 6,$73
  !as6
  !a6
  db 12,$7C
  !gs6
  db 12,$7D
  !g6
  db 6,$73
  !gs6
  !g6
  !end

.pattern1_1
  !volume,198
  !pan,10
  !subtranspose,0
  db 96,$7B
  %percNote(!instr0B-!instr06)
  !instr,!instr05
  !volume,125
  !pan,6
  !subtranspose,86
  db 12
  !rest
  db 6,$79
  !gs5
  db 12
  !rest
  db 6,$72
  !gs5
  db 6,$7A
  !gs5
  !rest
  db 18,$5B
  !gs5
  db 6,$7B
  !gs5
  db 12
  !rest
  db 6,$73
  !gs5
  !rest
  db 96
  !rest
  db 12
  !rest
  db 6,$79
  !gs5
  db 12
  !rest
  db 6,$7A
  !gs5
  db 12
  !rest
  db 6,$78
  !gs5
  db 6,$7B
  !gs5
  !rest
  db 6,$7B
  !gs5
  db 6,$73
  !gs5
  !rest
  db 12,$7C
  !fs5
  db 6
  !rest
  db 12,$73
  !fs5
  db 78
  !rest
  db 12
  !rest
  db 6,$7D
  !a5
  db 12
  !rest
  db 6,$73
  !a5
  db 6,$7C
  !a5
  !rest
  db 18,$4C
  !a5
  db 6,$7A
  !a5
  db 12
  !rest
  db 6,$7C
  !a5
  !rest
  !rest
  db 6,$73
  !a5
  db 84
  !rest
  db 12
  !rest
  db 6,$7C
  !a5
  db 12
  !rest
  db 6
  !a5
  db 12
  !rest
  db 6,$7A
  !a5
  db 6,$7C
  !a5
  !rest
  !b5
  db 6,$73
  !a5
  !rest
  db 12,$7B
  !a5
  !loop : dw .sub2D48 : db 1
  db 6,$7D
  !gs5
  db 6,$7D
  !gs5
  !rest
  db 6,$7D
  !b5
  !rest
  !rest
  db 48,$7D
  !gs5
  db 12,$73
  !gs5
  db 6
  !tie
  !rest
  db 6,$7B
  !g5
  !rest
  !rest
  db 6,$73
  !g5
  db 6,$7B
  !g5
  !rest
  db 13
  !g5
  db 5
  !rest
  db 6
  !g5
  db 6,$73
  !g5
  !rest
  db 6,$7B
  !g5
  !rest
  !loop : dw .sub2D48 : db 1
  db 6
  !d6
  !d6
  !pan,10
  db 6,$7B
  !e5
  db 12
  !rest
  db 6,$73
  !e5
  db 6,$7B
  !e5
  !rest
  db 12,$7A
  !e5
  db 6
  !rest
  db 6,$7B
  !e5
  db 6,$73
  !e5
  !rest
  db 6,$7A
  !e5
  !rest
  !loop : dw .sub2D6D : db 3
  !rest
  db 6,$73
  !e5
  db 6,$7A
  !e5
  db 12
  !rest
  db 6,$73
  !e5
  db 6,$7A
  !e5
  !rest
  db 6,$7A
  !e5
  db 6,$7B
  !e5
  !rest
  db 6,$7C
  !e5
  db 6,$73
  !e5
  !rest
  db 6,$7A
  !e5
  !f5
  !rest
  db 6,$73
  !e5
  !f5
  db 30
  !rest
  db 6,$7C
  !b5
  db 12
  !rest
  db 6,$7B
  !b5
  db 12
  !rest
  db 6
  !b5
  !rest
  !rest
  db 6,$73
  !b5
  db 72
  !rest
  db 6,$7A
  !b5
  !rest
  !rest
  db 6,$73
  !b5
  db 84
  !rest
  db 24
  !rest
  !rest
  !rest
  !rest

.pattern1_2
  !loop : dw .sub2DB0 : db 3
  db 18,$4C
  !gs3
  db 18,$0A
  !gs3
  db 12,$3B
  !gs3
  db 6,$3C
  !gs3
  db 12,$2C
  !gs3
  db 18,$0A
  !gs3
  db 12,$4C
  !gs3
  !loop : dw .sub2DC3 : db 3
  db 18,$4C
  !a3
  db 18,$0A
  !a3
  db 12,$3B
  !a3
  db 6,$3C
  !a3
  db 12,$2C
  !a3
  db 18,$0A
  !a3
  db 12,$4C
  !a3
  !loop : dw .sub2DD6 : db 1
  db 18,$6D
  !gs3
  db 18,$1B
  !gs4
  db 12,$1B
  !gs3
  db 6,$3D
  !gs3
  db 12,$4B
  !gs3
  db 18,$6C
  !gs4
  db 12,$3C
  !gs3
  db 18,$5D
  !g3
  db 18,$1C
  !g4
  db 12,$2C
  !g3
  db 6,$3D
  !g3
  db 12,$7B
  !g3
  db 18,$5C
  !g4
  db 12,$3C
  !g3
  !loop : dw .sub2DD6 : db 1
  !loop : dw .sub2E01 : db 4
  db 18,$5D
  !b3
  db 18,$0C
  !b3
  db 12,$0B
  !b3
  db 18,$5C
  !b3
  db 18,$0C
  !b3
  db 12,$0C
  !b3
  db 18,$5C
  !b3
  db 18,$0B
  !b3
  db 12,$1C
  !b3
  db 6,$4C
  !b3
  db 12,$6C
  !b3
  db 18,$0C
  !b3
  db 12,$1B
  !b3
  db 18,$5D
  !b3
  db 18,$0C
  !b3
  db 12,$0B
  !b3
  db 18,$5C
  !b3
  db 18,$0C
  !b3
  db 12,$0C
  !b3
  !rest
  db 12,$7B
  !b3
  db 12,$6D
  !as3
  db 24,$1B
  !a3
  db 12,$7C
  !gs3
  db 24,$6D
  !g3

.pattern1_3
  db 18,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  !loop : dw .sub2E29 : db 2
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 18,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  !loop : dw .sub2E29 : db 2
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 18,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  !loop : dw .sub2E3E : db 2
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 18,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  !instr,!instr08
  db 12,$7F
  !g4
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7B
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  !loop : dw .sub2E6B : db 7
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 18,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)

.pattern1_4
  !loop : dw .sub2E83 : db 4
  !loop : dw .sub2E9F : db 3
  db 12,$7C
  !a4
  !a4
  db 12,$7B
  !a4
  db 12,$7C
  !a4
  db 12,$7C
  !a4
  db 12,$7B
  !a4
  db 12,$7C
  !a4
  db 6,$7C
  !a4
  db 6,$7C
  !a4
  db 6,$7B
  !gs4
  db 12,$7B
  !gs4
  db 18,$7A
  !gs4
  db 6,$7B
  !gs4
  !gs4
  !gs4
  db 12,$7B
  !gs4
  db 18,$7A
  !gs4
  db 12,$7A
  !gs4
  !loop : dw .sub2EBB : db 2
  db 6,$7B
  !g4
  db 12,$7B
  !g4
  db 18,$7A
  !g4
  db 6,$7B
  !g4
  db 6,$7B
  !g4
  db 6,$7B
  !g4
  db 12,$7B
  !g4
  db 18,$7A
  !g4
  db 12,$7A
  !g4
  !loop : dw .sub2EBB : db 2
  !loop : dw .sub2ED7 : db 2
  db 12,$7B
  !e4
  db 12,$7C
  !e4
  db 12,$7B
  !e4
  !e4
  !e4
  db 12,$7B
  !e4
  db 12,$7C
  !e4
  db 6,$7C
  !e4
  db 6,$7C
  !e4
  !loop : dw .sub2ED7 : db 5
  !loop : dw .sub2EF3 : db 3
  db 6,$7C
  !fs4
  db 6,$7C
  !fs4
  db 12,$7C
  !fs4
  db 12,$7B
  !fs4
  db 12,$7C
  !fs4
  db 12,$7C
  !fs4
  db 12,$7B
  !fs4
  db 12,$7C
  !fs4
  db 6,$7C
  !fs4
  db 6,$7C
  !fs4

.pattern1_5
  !instr,!instr05
  !volume,146
  !pan,14
  !subtranspose,84
  !endVibrato
  db 96
  !rest
  db 12
  !rest
  db 6,$7B
  !ds5
  db 12
  !rest
  db 6,$73
  !ds5
  db 6,$7B
  !ds5
  !rest
  db 18,$5B
  !ds5
  db 6,$7B
  !ds5
  db 12
  !rest
  db 6,$73
  !ds5
  !rest
  db 96
  !rest
  db 12
  !rest
  db 6,$78
  !ds5
  db 12
  !rest
  db 6,$7B
  !ds5
  db 12
  !rest
  db 6,$7A
  !ds5
  db 6,$7B
  !ds5
  !rest
  db 6,$7C
  !ds5
  db 6,$73
  !ds5
  !rest
  db 12,$7A
  !cs5
  db 6
  !rest
  db 12,$73
  !cs5
  db 78
  !rest
  db 12
  !rest
  db 6,$7D
  !e5
  db 12
  !rest
  db 6,$73
  !e5
  db 6,$7C
  !e5
  !rest
  db 18,$4C
  !e5
  db 6,$7A
  !e5
  db 12
  !rest
  db 6,$7C
  !e5
  !rest
  !rest
  db 6,$73
  !e5
  db 84
  !rest
  db 12
  !rest
  db 6,$7C
  !e5
  db 12
  !rest
  db 6
  !e5
  db 12
  !rest
  db 6,$7A
  !e5
  db 6,$7C
  !e5
  !rest
  !fs5
  db 6,$73
  !e5
  !rest
  db 12,$7B
  !e5
  !loop : dw .sub2F0F : db 1
  db 6,$7D
  !ds5
  db 6,$7D
  !ds5
  !rest
  db 6,$7D
  !fs5
  db 12
  !rest
  db 48,$7D
  !ds5
  db 12,$73
  !ds5
  db 6
  !tie
  !rest
  db 6,$7B
  !d5
  db 12
  !rest
  db 6,$73
  !d5
  db 6,$7B
  !d5
  !rest
  db 13
  !d5
  db 5
  !rest
  db 6
  !d5
  db 6,$73
  !d5
  !rest
  db 6,$7B
  !d5
  !rest
  !loop : dw .sub2F0F : db 1
  !instr,!instr03
  !volume,125
  !pan,10
  !vibrato,48,24,128
  !subtranspose,0
  db 36,$7D
  !b5
  db 60
  !d6
  !loop : dw .sub2F34 : db 1
  db 36
  !cs6
  db 48
  !e6
  db 6,$7D
  !a5
  !as5
  db 36,$7D
  !b5
  db 60
  !d6
  !loop : dw .sub2F34 : db 1
  db 36
  !cs6
  db 48
  !e6
  db 6,$7D
  !e6
  !f6
  db 18,$3D
  !fs6
  db 18,$0B
  !fs6
  db 60,$0A
  !fs6
  db 12
  !rest
  db 18,$0D
  !fs6
  db 18,$0C
  !fs6
  db 18,$4D
  !fs6
  db 30,$0C
  !fs6
  db 12
  !rest
  db 18,$0D
  !fs6
  !fs6
  db 18,$5D
  !fs6
  db 18,$0B
  !fs6
  db 12,$1C
  !fs6
  db 12,$13
  !fs6
  db 12,$7C
  !fs6
  !fs6
  db 24,$7C
  !e6
  db 12,$7C
  !ds6
  db 24,$7D
  !ds6

.pattern1_6
  db 12,$7D
  !ds4
  db 12,$7D
  !ds4
  db 12,$7D
  !ds4
  db 12,$7C
  !ds4
  db 12,$7D
  !ds4
  db 12,$7C
  !ds4
  db 12,$7D
  !ds4
  db 6
  !cs4
  db 6,$7C
  !cs4
  !loop : dw .sub2F42 : db 3
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  db 12,$7D
  !e4
  db 6,$7E
  !ds4
  db 6,$7D
  !ds4
  db 12
  !e4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  db 12,$7D
  !e4
  db 6,$7E
  !ds4
  db 6,$7D
  !ds4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  db 12,$7D
  !e4
  db 6,$7E
  !ds4
  db 6,$7D
  !ds4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  db 12,$7D
  !e4
  db 6,$7E
  !e4
  db 6,$7D
  !e4
  db 6,$7C
  !ds4
  db 12,$7C
  !ds4
  db 18,$7B
  !ds4
  db 6,$7C
  !ds4
  db 6,$7C
  !ds4
  db 6,$7C
  !ds4
  db 12,$7B
  !ds4
  db 18,$7B
  !ds4
  db 12,$7B
  !ds4
  db 6,$7C
  !d4
  db 12,$7C
  !d4
  db 18,$7B
  !d4
  db 6,$7C
  !d4
  db 6,$7C
  !d4
  db 6,$7C
  !d4
  db 12,$7C
  !d4
  db 18,$7B
  !d4
  db 12,$7B
  !d4
  db 6,$7C
  !ds4
  db 12,$7C
  !ds4
  db 18,$7B
  !ds4
  db 6,$7C
  !ds4
  db 6,$7C
  !ds4
  db 6,$7C
  !ds4
  db 12
  !ds4
  db 18,$7B
  !ds4
  db 12,$7B
  !ds4
  db 6,$7C
  !d4
  db 12,$7B
  !d4
  db 18,$7B
  !d4
  db 6,$7C
  !d4
  db 6,$7C
  !d4
  db 6,$7C
  !d4
  db 12,$7C
  !d4
  db 18,$7B
  !d4
  db 12,$7B
  !d4
  db 6,$7C
  !ds4
  db 12,$7C
  !ds4
  db 18,$7B
  !ds4
  db 6,$7C
  !ds4
  db 6,$7C
  !ds4
  db 6,$7C
  !ds4
  db 12,$7C
  !ds4
  db 18,$7B
  !ds4
  db 12,$7B
  !ds4
  db 6,$7C
  !d4
  db 12,$7C
  !d4
  db 18,$7B
  !d4
  db 6,$7C
  !d4
  db 6,$7C
  !d4
  db 6,$7C
  !d4
  db 12,$7C
  !d4
  db 18,$7B
  !d4
  db 12,$7B
  !d4
  !volume,198
  db 96,$7F
  %percNote(!instr0B-!instr06)
  !loop : dw .sub2F5E : db 7
  !instr,!instr04
  !volume,146
  db 12,$7B
  !b4
  db 12,$7C
  !b4
  db 12,$7B
  !b4
  db 12,$7C
  !b4
  db 12,$7C
  !b4
  db 12,$7B
  !b4
  db 12,$7C
  !b4
  db 6,$7C
  !b4
  db 6,$7C
  !b4
  !loop : dw .sub2F60 : db 2
  db 6,$7C
  !b4
  db 6,$7C
  !b4
  db 12,$7C
  !b4
  db 12,$7B
  !b4
  db 12,$7C
  !b4
  db 12,$7C
  !b4
  db 12,$7B
  !b4
  db 12,$7C
  !b4
  db 6,$7C
  !b4
  db 6,$7C
  !b4

.pattern1_7
  db 18
  !rest
  !instr,!instr03
  !volume,83
  !pan,10
  !vibrato,48,24,128
  !subtranspose,8
  db 84,$7D
  !b5
  db 6,$7D
  !as5
  db 6,$7B
  !a5
  !loop : dw .sub2C9E : db 1
  !loop : dw .sub2D02 : db 1
  db 36,$7D
  !fs6
  db 48,$6D
  !a6
  db 6,$6B
  !d6
  !ds6
  !loop : dw .sub2D02 : db 1
  !loop : dw .sub2D19 : db 1
  db 12,$13
  !b6
  db 24
  !rest
  !rest
  db 6
  !rest
  db 12
  !rest

.sub2C69
  db 12,$7C
  !fs4
  db 12,$7C
  !gs4
  db 12,$7C
  !gs4
  !gs4
  db 12,$7B
  !gs4
  db 12,$7B
  !gs4
  db 12,$7D
  !gs4
  db 6,$7E
  !b4
  db 6,$7D
  !gs4
  db 12,$7B
  !gs4
  db 12,$7C
  !gs4
  db 12,$7B
  !gs4
  db 12,$7C
  !gs4
  db 12,$7C
  !gs4
  db 12,$7B
  !gs4
  db 12,$7C
  !gs4
  db 6,$7C
  !fs4
  db 6,$7C
  !fs4
  !end

.sub2C9E
  db 18,$7D
  !gs5
  db 78
  !rest
  db 84,$7D
  !b5
  db 6,$7C
  !as5
  db 6,$7C
  !a5
  db 18,$7D
  !ds6
  db 78
  !rest
  db 84,$7D
  !e6
  db 6,$7D
  !ds6
  db 6,$7B
  !d6
  db 18,$7D
  !cs6
  db 78
  !rest
  db 84,$7D
  !e6
  db 6,$7C
  !ds6
  db 6,$7C
  !d6
  db 18,$7D
  !a6
  db 78
  !rest
  db 78,$7A
  !gs5
  db 6
  !rest
  db 6,$76
  !e5
  db 6,$68
  !ds5
  db 90,$79
  !d5
  db 6
  !rest
  db 36,$79
  !ds5
  db 36,$78
  !fs5
  db 24,$79
  !cs6
  db 12
  !tie
  db 78,$7B
  !a5
  db 6
  !rest
  db 78,$79
  !ds5
  db 6
  !rest
  db 6,$77
  !fs5
  db 6,$78
  !gs5
  db 78,$79
  !a5
  db 6
  !rest
  db 6,$6B
  !d6
  !ds6
  !end

.sub2D02
  db 36,$7D
  !e6
  db 60,$7D
  !g6
  db 36,$7D
  !fs6
  db 48,$6D
  !f6
  db 6,$6B
  !d6
  !ds6
  db 36,$7D
  !e6
  db 60,$7D
  !g6
  !end

.sub2D19
  db 36,$6D
  !fs6
  db 48,$6D
  !a6
  db 6,$6B
  !a6
  !as6
  db 18,$3D
  !b6
  db 18,$0B
  !b6
  db 60,$0C
  !b6
  db 12
  !rest
  db 18,$0D
  !b6
  !b6
  db 18,$4D
  !b6
  db 30,$0C
  !b6
  db 12
  !rest
  db 18,$0D
  !b6
  !b6
  db 18,$5D
  !b6
  db 18,$0B
  !b6
  db 12,$1C
  !b6
  !end

.sub2D48
  db 6,$7D
  !gs5
  db 6,$7D
  !gs5
  !rest
  db 6,$7D
  !b5
  db 6,$73
  !gs5
  !rest
  db 48,$7D
  !gs5
  db 12,$23
  !gs5
  db 6,$7B
  !d6
  db 12,$73
  !gs5
  db 6
  !d6
  db 12
  !rest
  db 48,$7D
  !d6
  db 12,$73
  !d6
  !end

.sub2D6D
  !rest
  db 6,$73
  !e5
  db 6,$7A
  !e5
  db 12
  !rest
  db 6,$73
  !e5
  db 6,$7A
  !e5
  !rest
  db 6,$7A
  !e5
  db 6,$7B
  !e5
  !rest
  db 6,$7C
  !e5
  db 6,$73
  !e5
  !rest
  db 6,$7A
  !e5
  !rest
  !rest
  db 6,$73
  !e5
  db 6,$7B
  !e5
  db 12
  !rest
  db 6,$73
  !e5
  db 6,$7B
  !e5
  !rest
  db 12,$7A
  !e5
  db 6
  !rest
  db 6,$7B
  !e5
  db 6,$73
  !e5
  !rest
  db 6,$7A
  !e5
  !rest
  !end

.sub2DB0
  db 18,$4C
  !gs3
  db 18,$0A
  !gs3
  db 12,$3B
  !gs3
  db 18,$5C
  !gs3
  db 18,$0A
  !gs3
  db 12,$4C
  !gs3
  !end

.sub2DC3
  db 18,$4C
  !a3
  db 18,$0A
  !a3
  db 12,$3B
  !a3
  db 18,$5C
  !a3
  db 18,$0A
  !a3
  db 12,$4C
  !a3
  !end

.sub2DD6
  db 18,$6D
  !gs3
  db 18,$1B
  !gs4
  db 12,$1B
  !gs3
  db 6,$3D
  !gs3
  db 12,$4B
  !gs3
  db 18,$6C
  !gs4
  db 12,$3C
  !gs3
  db 18,$5D
  !a3
  db 18,$1C
  !a4
  db 12,$2C
  !a3
  db 6,$3D
  !a3
  db 12,$7B
  !a3
  db 18,$5C
  !a4
  db 12,$3C
  !a3
  !end

.sub2E01
  db 18,$5D
  !e3
  db 18,$0C
  !e3
  db 12,$0B
  !e3
  db 18,$5C
  !e3
  db 18,$0C
  !e3
  db 12,$0C
  !e3
  db 18,$5C
  !e3
  db 18,$0B
  !e3
  db 12,$1C
  !e3
  db 6,$4C
  !e3
  db 12,$6C
  !e3
  db 18,$0C
  !e3
  db 12,$1B
  !e3
  !end

.sub2E29
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  !end

.sub2E3E
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  !end

.sub2E6B
  db 18
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7B
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  !instr,!instr08
  db 12,$7F
  !g4
  db 6
  %percNote(!instr06-!instr06)
  db 12,$7B
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  !end

.sub2E83
  db 12,$7B
  !gs4
  db 12,$7C
  !gs4
  db 12,$7B
  !gs4
  db 12,$7C
  !gs4
  db 12,$7C
  !gs4
  db 12,$7B
  !gs4
  db 12,$7C
  !gs4
  db 6,$7C
  !fs4
  db 6,$7C
  !fs4
  !end

.sub2E9F
  db 12,$7B
  !a4
  db 12,$7C
  !a4
  db 12,$7B
  !a4
  db 12,$7C
  !a4
  db 12,$7C
  !a4
  db 12,$7B
  !a4
  db 12,$7C
  !a4
  db 6,$7C
  !gs4
  db 6,$7C
  !gs4
  !end

.sub2EBB
  db 6,$7B
  !a4
  db 12,$7B
  !a4
  db 18,$7A
  !a4
  db 6,$7B
  !a4
  db 6,$7B
  !a4
  db 6,$7B
  !a4
  db 12,$7B
  !a4
  db 18,$7A
  !a4
  db 12,$7A
  !a4
  !end

.sub2ED7
  db 12,$7B
  !e4
  db 12,$7C
  !e4
  db 12,$7B
  !e4
  db 12,$7C
  !e4
  db 12,$7B
  !e4
  db 12,$7B
  !e4
  db 12,$7C
  !e4
  db 6,$7C
  !e4
  db 6,$7C
  !e4
  !end

.sub2EF3
  db 12,$7B
  !fs4
  db 12,$7C
  !fs4
  db 12,$7B
  !fs4
  db 12,$7C
  !fs4
  db 12,$7C
  !fs4
  db 12,$7B
  !fs4
  db 12,$7C
  !fs4
  db 6,$7C
  !fs4
  db 6,$7C
  !fs4
  !end

.sub2F0F
  db 6,$7D
  !ds5
  db 6,$7D
  !ds5
  !rest
  db 6,$7D
  !fs5
  db 6,$73
  !ds5
  !rest
  db 48,$7D
  !ds5
  db 12,$73
  !ds5
  db 6,$7B
  !a5
  db 12,$73
  !ds5
  db 6
  !a5
  db 12
  !rest
  db 48,$7D
  !a5
  db 12,$73
  !a5
  !end

.sub2F34
  db 36
  !cs6
  db 48
  !c6
  db 6,$7D
  !a5
  !as5
  db 36,$7D
  !b5
  db 60
  !d6
  !end

.sub2F42
  db 12,$7D
  !ds4
  db 12,$7D
  !ds4
  db 12,$7D
  !ds4
  db 12,$7C
  !ds4
  db 12,$7D
  !ds4
  db 12,$7C
  !ds4
  db 12,$7D
  !ds4
  db 6,$7C
  !cs4
  db 6,$7C
  !cs4
  !end

.sub2F5E
  !rest
  !end

.sub2F60
  db 12,$7B
  !b4
  db 12,$7C
  !b4
  db 12,$7B
  !b4
  db 12,$7C
  !b4
  db 12,$7C
  !b4
  db 12,$7B
  !b4
  db 12,$7C
  !b4
  db 6,$7C
  !b4
  db 6,$7C
  !b4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
