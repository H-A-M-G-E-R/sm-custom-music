asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr04 = $19
!instr05 = $1A
!instr06 = $1B
!instr07 = $1C
!instr08 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$06,$1C
  db !instr01,$FF,$E0,$B8,$02,$1E
  db !instr02,$FF,$E0,$B8,$03,$C5
  db !instr04,$FF,$E0,$B8,$08,$02
  db !instr05,$FF,$E0,$B8,$04,$7E
  db !instr06,$FF,$EC,$B8,$0A,$02
  db !instr07,$FF,$E0,$B8,$07,$A8
  db !instr08,$FF,$E0,$B8,$07,$A8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+36
  dw Sample01,Sample01+27
  dw Sample02,Sample02+2475
  dw Sample04,Sample04+1053
  dw Sample05,Sample05+27
  dw Sample06,Sample06+288
  dw Sample07,Sample07+2961
  dw Sample08,Sample08+837
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_2d44270102c3a9ad755cf5f2a2798a81.brr"
  Sample01: incbin "Sample_e2bc2d2c4c6fe01775d28728b3be3dde.brr"
  Sample02: incbin "Sample_13a532fa5ec032aea7b9cde775dffa1b.brr"
  Sample04: incbin "Sample_e1308e6a6bdda4b8dbb04128e738f11a.brr"
  Sample05: incbin "Sample_df4d4d10eddeabbb86fa37c0ec9b0086.brr"
  Sample06: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample07: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample08: incbin "Sample_84ecbfd5a3396d1864db1a473ec3479e.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
  dw .pattern1
  dw .pattern1
  dw .pattern2
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
-
  dw .pattern7
  dw .pattern8
  dw .pattern6
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw 0, 0, 0, 0, .pattern1_4, .pattern1_5, 0, .pattern1_7
.pattern2: dw .pattern2_0, 0, 0, 0, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern3_4, .pattern3_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern3_4, .pattern3_5, 0, 0
.pattern6: dw .pattern5_0, .pattern5_1, .pattern6_2, .pattern5_3, .pattern6_4, .pattern3_5, .pattern6_6, 0
.pattern7: dw .pattern5_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, .pattern7_5, .pattern6_6, 0
.pattern8: dw .pattern5_0, .pattern4_1, .pattern3_2, .pattern4_3, .pattern6_4, .pattern8_5, .pattern6_6, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !musicVolume,255
  !tempo,20
  !instr,!instr00
  !volume,40
  !dynamicVolume,200,160
  !pan,13
  db 96,$7F
  !c4
  !tie
  !tie
  !dynamicVolume,96,80
  !tie
  !tie
  !dynamicVolume,96,140
  !tie
  !dynamicVolume,200,0
  !tie
  !tie
  !dynamicVolume,96,120
  !c4
  !tie
  db 122
  !tie
  !dynamicVolume,96,0
  db 96
  !tie
  !end

.pattern0_1
  !instr,!instr00
  !volume,40
  !dynamicVolume,200,130
  !pan,7
  db 96,$7F
  !cs4
  !tie
  !dynamicVolume,96,20
  !tie
  !b3
  !dynamicVolume,96,140
  !tie
  !tie
  !tie
  !dynamicVolume,96,0
  !tie
  !tie
  !tie
  db 122
  !tie
  db 96
  !tie
  !end

.pattern0_2
  !instr,!instr01
  db 96
  !rest
  !rest
  !rest
  !rest
  !volume,40
  !dynamicVolume,200,140
  db 96,$7F
  !c5
  !tie
  !dynamicVolume,96,60
  !tie
  !dynamicVolume,96,180
  !a4
  !dynamicVolume,96,40
  !tie
  !dynamicVolume,96,120
  !c5
  !dynamicVolume,96,40
  db 122
  !tie
  db 96
  !tie
  !end

.pattern0_3
  !instr,!instr01
  db 96
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !pan,8
  !volume,120
  db 8,$7F
  !c6
  !c6
  !c6
  db 12
  !c6
  !pan,3
  db 8,$7B
  !c6
  db 8,$79
  !c6
  db 8,$77
  !c6
  db 12,$73
  !c6
  db 24
  !rest
  db 96
  !rest
  !rest
  !pan,5
  !volume,80
  db 8,$7F
  !c6
  !c6
  !c6
  db 12
  !c6
  !pan,1
  db 8,$7B
  !c6
  db 8,$79
  !c6
  db 8,$77
  !c6
  db 12,$73
  !c6
  db 50
  !rest
  db 96
  !rest
  !rest
  !end

.pattern0_4
  !instr,!instr02
  db 96
  !rest
  !loop : dw .subD5A7 : db 7
  !volume,60
  !dynamicVolume,96,180
  db 19,$7F
  !g5
  db 9
  !d6
  db 11
  !b5
  !a5
  db 8
  !g5
  db 11
  !a5
  db 10
  !a5
  db 9
  !g5
  db 8,$7B
  !f5
  db 3
  !rest
  db 13,$79
  !b4
  db 12
  !d5
  db 12,$75
  !a5
  db 10,$73
  !a5
  db 11
  !g5
  !f5
  db 10
  !b4
  db 14
  !d5
  !dynamicVolume,96,230
  !pan,9
  db 16,$79
  !g4
  db 9
  !tie
  db 16,$77
  !f5
  db 10
  !tie
  db 9,$79
  !g4
  db 8
  !tie
  db 15,$7B
  !b4
  db 8
  !tie
  db 13
  !g5
  db 6
  !tie
  db 6,$79
  !g5
  !tie
  db 12,$7F
  !g4
  db 6
  !tie
  db 12
  !f4
  db 6
  !tie
  !g4
  !tie
  db 12,$7B
  !b4
  db 6
  !tie
  db 12
  !g5
  db 6
  !tie
  db 6,$79
  !b4
  !tie
  !end

.pattern0_5
  db 96
  !rest
  !loop : dw .subD5A7 : db 9
  !volume,180
  !dynamicVolume,96,230
  !instr,!instr02
  !pan,8
  db 16
  !rest
  db 9,$77
  !d5
  db 16
  !tie
  db 10
  !d5
  db 9
  !tie
  db 8
  !d5
  db 15
  !tie
  db 8,$75
  !f5
  db 13
  !tie
  db 6,$79
  !a5
  !tie
  db 6,$77
  !f5
  db 12
  !rest
  db 6,$7B
  !d5
  db 12
  !tie
  db 6
  !d5
  !tie
  !d5
  db 12
  !tie
  db 6,$79
  !f5
  db 12
  !tie
  db 6
  !f5
  !tie
  db 6,$77
  !d5
  !end

.pattern1_4
  !loop : dw .subD5A9 : db 1
  !end

.pattern1_5
  !loop : dw .subD5C8 : db 1
  !end

.pattern1_7
  !endEcho
  !musicVolume,255
  !tempo,20
  db 96
  !rest
  !end

.pattern2_0
  !instr,!instr08
  !volume,230
  !pan,18
  db 6,$7F
  !f5
  db 6,$79
  !f5
  db 6,$7D
  !g5
  db 6,$79
  !f5
  db 72
  !rest
  !end

.pattern2_4
  db 12,$7F
  !g4
  db 6
  !tie
  db 12
  !f4
  db 6
  !tie
  !g4
  !tie
  db 12,$7B
  !b4
  db 6
  !tie
  db 12
  !g5
  db 6
  !tie
  db 6,$79
  !b4
  !tie
  !end

.pattern2_5
  db 12
  !rest
  db 6,$7D
  !d5
  db 12,$5B
  !tie
  db 6,$7B
  !d5
  db 6,$5B
  !tie
  db 6,$7B
  !d5
  db 12,$59
  !tie
  db 6,$79
  !f5
  db 12,$59
  !tie
  db 6,$79
  !f5
  db 6,$57
  !tie
  db 6,$77
  !d5
  !end

.pattern3_0
  !echo,%00000110,0,0
  !echoParameters,2,60,2
  !dynamicEcho,80,60,60
  !loop : dw .subD5F2 : db 4
  !end

.pattern3_1
  !instr,!instr04
  !volume,200
  !pan,12
  !loop : dw .subD601 : db 1
  !end

.pattern3_2
  !loop : dw .subD654 : db 1
  !end

.pattern3_3
  !instr,!instr06
  !volume,200
  !pan,10
  db 96
  !rest
  !rest
  !rest
  db 84
  !rest
  db 12,$6D
  !g3
  !pitchSlide,3,12 : !g2
  !end

.pattern3_4
  !loop : dw .subD6A8 : db 4
  !end

.pattern3_5
  !loop : dw .subD6C1 : db 4
  !end

.pattern4_0
  !echo,%00000110,60,60
  !echoParameters,2,60,2
  !loop : dw .subD5F2 : db 4
  !end

.pattern4_1
  !loop : dw .subD601 : db 1
  !end

.pattern4_2
  !loop : dw .subD809 : db 1
  !end

.pattern4_3
  !instr,!instr06
  !volume,200
  !pan,11
  !loop : dw .subD77E : db 1
  db 18,$6F
  !g2
  db 6,$2D
  !d3
  db 6,$15
  !d3
  db 6,$2D
  !d3
  db 13,$6D
  !f3
  db 17,$6F
  !g3
  db 6,$2D
  !d3
  db 6,$15
  !d3
  db 6,$2D
  !d3
  db 9,$6D
  !f3
  db 3,$45
  !g3
  !end

.pattern5_0
  !loop : dw .subD6E5 : db 4
  !end

.pattern5_1
  !loop : dw .subD716 : db 1
  db 19,$7A
  !b4
  db 11,$19
  !a4
  db 6,$4A
  !c5
  db 5,$5A
  !b4
  db 45,$7A
  !g4
  db 10
  !rest
  !end

.pattern5_2
  db 14
  !rest
  db 16,$79
  !d5
  db 1,$77
  !c5
  db 65,$5A
  !d5
  db 6,$4A
  !d5
  db 7,$27
  !e5
  db 1,$7A
  !f5
  !loop : dw .subD753 : db 1
  db 19,$7A
  !b4
  db 11,$19
  !a4
  db 6,$4A
  !c5
  db 5,$5A
  !b4
  db 41,$7A
  !g4
  !end

.pattern5_3
  !loop : dw .subD77E : db 1
  db 18,$6F
  !g2
  db 6,$2D
  !d3
  db 6,$15
  !d3
  db 6,$2D
  !d3
  db 13,$6D
  !f3
  db 17,$6F
  !g3
  db 6,$2D
  !d3
  db 6,$15
  !d3
  db 6,$2D
  !d3
  db 8,$6D
  !f3
  db 4,$67
  !g3
  !end

.pattern6_2
  !instr,!instr04
  !volume,80
  !pan,4
  db 14
  !rest
  !pan,4
  db 16,$79
  !d5
  db 1,$77
  !c5
  db 65,$5A
  !d5
  db 6,$4A
  !d5
  db 7,$27
  !e5
  db 1,$7A
  !f5
  !loop : dw .subD753 : db 1
  db 19,$7A
  !b4
  db 11,$19
  !a4
  db 6,$4A
  !c5
  db 5,$5A
  !b4
  db 41,$7A
  !g4
  !end

.pattern6_4
  !loop : dw .subD5A9 : db 1
  !loop : dw .subD6A8 : db 3
  !end

.pattern6_6
  !instr,!instr07
  !volume,230
  !loop : dw .subD7DC : db 4
  !end

.pattern7_1
  db 30,$79
  !f4
  db 6,$59
  !e4
  !d4
  !c4
  db 24,$69
  !d4
  db 24,$79
  !g4
  !loop : dw .subD857 : db 1
  db 30
  !f4
  db 6,$49
  !e4
  db 6,$59
  !d4
  db 6,$49
  !c4
  db 24,$79
  !d4
  !rest
  !end

.pattern7_2
  db 14
  !rest
  db 30,$79
  !f4
  db 6,$59
  !e4
  !d4
  !c4
  db 24,$69
  !d4
  db 24,$79
  !g4
  !loop : dw .subD857 : db 1
  db 30
  !f4
  db 6,$49
  !e4
  db 6,$59
  !d4
  db 6,$49
  !c4
  db 24,$79
  !d4
  db 10
  !rest
  !end

.pattern7_3
  !loop : dw .subD874 : db 2
  !end

.pattern7_4
  !instr,!instr04
  !pan,12
  !volume,140
  db 30,$79
  !c4
  db 6,$59
  !c4
  !b3
  !a3
  db 24,$69
  !b3
  db 24,$79
  !d4
  db 30
  !c4
  db 6,$49
  !c4
  db 6,$59
  !b3
  db 6,$49
  !a3
  db 24,$79
  !b3
  !rest
  db 30
  !c4
  db 6,$59
  !c4
  !b3
  !a3
  db 24,$69
  !b3
  db 24,$79
  !d4
  db 30
  !c4
  db 6,$49
  !c4
  db 6,$59
  !b3
  db 6,$49
  !a3
  db 24,$79
  !b3
  !rest
  !end

.pattern7_5
  !instr,!instr05
  !volume,0
  !pan,3
  db 96
  !rest
  db 72
  !rest
  db 24,$7D
  !c5
  db 96
  !rest
  db 72
  !rest
  db 24
  !c5
  !end

.pattern8_5
  !loop : dw .subD5C8 : db 1
  !loop : dw .subD6C1 : db 3
  !end

.subD5A7
  !rest
  !end

.subD5A9
  !instr,!instr02
  !volume,230
  !pan,9
  db 12,$7F
  !g4
  db 6
  !tie
  db 12
  !f4
  db 6
  !tie
  !g4
  !tie
  db 12,$7B
  !b4
  db 6
  !tie
  db 12
  !g5
  db 6
  !tie
  db 6,$79
  !b4
  !tie
  !end

.subD5C8
  !instr,!instr02
  !volume,230
  !pan,8
  db 12
  !rest
  db 6,$7D
  !d5
  db 12,$5B
  !tie
  db 6,$7B
  !d5
  db 6,$5B
  !tie
  db 6,$7B
  !d5
  db 12,$59
  !tie
  db 6,$79
  !f5
  db 12,$59
  !tie
  db 6,$79
  !f5
  db 6,$57
  !tie
  db 6,$77
  !d5
  !end

.subD5F2
  db 6,$7D
  !g5
  db 6,$79
  !f5
  db 6,$7D
  !g5
  db 6,$79
  !f5
  db 72
  !rest
  !end

.subD601
  db 17,$7A
  !d5
  db 1,$79
  !c5
  db 64,$49
  !d5
  db 1
  !rest
  db 6,$68
  !c5
  db 6,$46
  !b4
  db 1,$78
  !a4
  db 10
  !tie
  db 6,$56
  !b4
  db 12,$17
  !a4
  db 5,$59
  !g4
  db 13,$19
  !d4
  db 48,$49
  !d4
  db 2,$78
  !f4
  db 18
  !tie
  db 12,$17
  !g4
  db 5,$78
  !b4
  db 12,$19
  !a4
  db 18,$69
  !g4
  db 14,$37
  !d4
  db 4,$74
  !d4
  db 13,$28
  !e4
  db 1
  !rest
  db 16,$59
  !f4
  db 12,$19
  !g4
  db 5,$68
  !b4
  db 13,$17
  !a4
  db 27,$78
  !g4
  db 22
  !rest
  !end

.subD654
  !instr,!instr04
  !volume,80
  !pan,4
  db 14
  !rest
  db 17,$7A
  !d5
  db 2,$79
  !c5
  db 63
  !d5
  db 1
  !tie
  db 6,$78
  !c5
  db 6,$76
  !b4
  db 1,$78
  !a4
  db 10
  !tie
  db 6,$76
  !b4
  db 12,$77
  !a4
  db 5,$79
  !g4
  db 13
  !d4
  db 48
  !d4
  db 2,$78
  !f4
  db 18
  !tie
  db 12,$77
  !g4
  db 5,$78
  !b4
  db 12,$79
  !a4
  db 18
  !g4
  db 14,$77
  !d4
  db 4,$74
  !d4
  db 13,$78
  !e4
  db 1
  !tie
  db 16,$79
  !f4
  db 12
  !g4
  db 5,$78
  !b4
  db 13,$77
  !a4
  db 35,$78
  !g4
  !end

.subD6A8
  db 12,$7F
  !g4
  db 6
  !tie
  db 12
  !f4
  db 6
  !tie
  !g4
  !tie
  db 12,$7B
  !b4
  db 6
  !tie
  db 12
  !g5
  db 6
  !tie
  db 6,$79
  !b4
  !tie
  !end

.subD6C1
  db 12
  !rest
  db 6,$7D
  !d5
  db 12,$5B
  !tie
  db 6,$7B
  !d5
  db 6,$5B
  !tie
  db 6,$7B
  !d5
  db 12,$59
  !tie
  db 6,$79
  !f5
  db 12,$59
  !tie
  db 6,$79
  !f5
  db 6,$57
  !tie
  db 6,$77
  !d5
  !end

.subD809
  db 14
  !rest
  db 17,$7A
  !d5
  db 2,$79
  !c5
  db 63
  !d5
  db 1
  !tie
  db 6,$78
  !c5
  db 6,$76
  !b4
  db 1,$78
  !a4
  db 10
  !tie
  db 6,$76
  !b4
  db 12,$77
  !a4
  db 5,$79
  !g4
  db 13
  !d4
  db 48
  !d4
  db 2,$78
  !f4
  db 18
  !tie
  db 12,$77
  !g4
  db 5,$78
  !b4
  db 12,$79
  !a4
  db 18
  !g4
  db 14,$77
  !d4
  db 4,$74
  !d4
  db 13,$78
  !e4
  db 1
  !tie
  db 16,$79
  !f4
  db 12
  !g4
  db 5,$78
  !b4
  db 13,$77
  !a4
  db 35,$78
  !g4
  !end

.subD77E
  db 18,$6F
  !g2
  db 6,$2D
  !d3
  db 6,$15
  !d3
  db 6,$2D
  !d3
  db 13,$6D
  !f3
  db 17,$6F
  !g3
  db 6,$2D
  !d3
  db 6,$15
  !d3
  db 6,$2D
  !d3
  db 12,$6D
  !f3
  db 18,$6F
  !g2
  db 6,$2D
  !d3
  db 6,$15
  !d3
  db 6,$2D
  !d3
  db 13,$6D
  !f3
  db 17,$6F
  !g3
  db 6,$2D
  !d3
  db 6,$15
  !d3
  db 6,$2D
  !d3
  db 8,$6D
  !f3
  db 4,$67
  !f3
  db 18,$6F
  !g2
  db 6,$2D
  !d3
  db 6,$15
  !d3
  db 6,$2D
  !d3
  db 13,$6D
  !f3
  db 17,$6F
  !g3
  db 6,$2D
  !d3
  db 6,$15
  !d3
  db 6,$2D
  !d3
  db 12,$6D
  !f3
  !end

.subD6E5
  db 6,$7D
  !g5
  db 6,$79
  !f5
  db 6,$7D
  !g5
  db 6,$79
  !f5
  db 6,$7D
  !g5
  db 6,$79
  !f5
  db 6,$7D
  !g5
  db 6,$79
  !f5
  db 6,$7D
  !g5
  db 6,$79
  !f5
  db 6,$7D
  !g5
  db 6,$79
  !f5
  db 6,$7D
  !g5
  db 6,$79
  !f5
  db 6,$7D
  !g5
  db 6,$79
  !f5
  !end

.subD716
  db 16,$79
  !d5
  db 1,$77
  !c5
  db 65,$5A
  !d5
  db 6,$4A
  !d5
  db 7,$27
  !e5
  db 1,$7A
  !f5
  db 12,$68
  !tie
  db 6,$28
  !e5
  db 11,$1B
  !f5
  db 6,$59
  !e5
  db 6,$3A
  !d5
  db 5,$29
  !c5
  db 48,$4A
  !d5
  db 2,$7A
  !b4
  db 18,$59
  !tie
  db 12,$09
  !a4
  db 13,$1A
  !c5
  db 20,$5A
  !b4
  db 21,$39
  !g4
  db 12,$1A
  !d4
  !end

.subD753
  db 12,$68
  !tie
  db 6,$28
  !e5
  db 11,$1B
  !f5
  db 6,$59
  !e5
  db 6,$3A
  !d5
  db 5,$29
  !c5
  db 48,$4A
  !d5
  db 2,$7A
  !b4
  db 18,$59
  !tie
  db 12,$09
  !a4
  db 13,$1A
  !c5
  db 20,$5A
  !b4
  db 21,$39
  !g4
  db 12,$1A
  !d4
  !end

.subD7DC
  !pan,12
  db 12,$7F
  !g3
  db 6
  !g3
  !pan,8
  db 6,$2F
  !cs5
  !rest
  !pan,14
  db 6,$7F
  !ds3
  !ds3
  db 6,$2F
  !f3
  !pan,12
  db 12,$7F
  !g3
  db 6
  !g3
  !pan,8
  db 6,$2F
  !cs5
  !rest
  !pan,14
  db 6,$7F
  !ds3
  !ds3
  db 6,$2F
  !f3
  !end

.subD857
  db 30
  !f4
  db 6,$49
  !e4
  db 6,$59
  !d4
  db 6,$49
  !c4
  db 24,$79
  !d4
  !rest
  db 30
  !f4
  db 6,$59
  !e4
  !d4
  !c4
  db 24,$69
  !d4
  db 24,$79
  !g4
  !end

.subD874
  db 18,$79
  !f3
  db 6,$13
  !f3
  db 24,$19
  !e3
  db 48,$59
  !d3
  db 18,$79
  !f3
  db 6,$13
  !f3
  db 24,$19
  !e3
  db 36,$59
  !d3
  db 6,$2B
  !d3
  !d4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
