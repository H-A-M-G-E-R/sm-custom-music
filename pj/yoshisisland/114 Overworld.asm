asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr04 = $17
!instr06 = $18
!instr07 = $19
!instr10 = $1A
!instr18 = $1B
!instr1B = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr04,$FF,$EC,$B8,$0A,$02
  db !instr06,$FF,$E0,$B8,$03,$00
  db !instr07,$FF,$E0,$B8,$05,$40
  db !instr10,$8D,$E0,$B8,$03,$00
  db !instr18,$FF,$E0,$B8,$07,$A8
  db !instr1B,$FF,$E0,$B8,$07,$03
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample04,Sample04+288
  dw Sample06,Sample06+72
  dw Sample07,Sample07+981
  dw Sample10,Sample10+27
  dw Sample18,Sample18+837
  dw Sample1A_1B,Sample1A_1B+1053
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample04: incbin "Sample_6b2d9404e8f16fdc424cf2f60f24fe8e.brr"
  Sample06: incbin "Sample_28e4237a3347ac666b56d280839f22cf.brr"
  Sample07: incbin "Sample_54413ae5a61dbdb96f0648494ef0edf9.brr"
  Sample10: incbin "Sample_57baebb26796008057e695fab7d3fd38.brr"
  Sample18: incbin "Sample_84ecbfd5a3396d1864db1a473ec3479e.brr"
  Sample1A_1B: incbin "Sample_0a4cac47456a03131168e35c23649a59.brr"

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
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, 0, .pattern1_5, 0, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern1_2, .pattern2_3, 0, .pattern2_5, 0, .pattern2_7
.pattern3: dw .pattern3_0, .pattern2_1, .pattern1_2, .pattern2_3, 0, .pattern3_5, 0, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern1_2, .pattern2_3, 0, .pattern4_5, 0, .pattern4_7
.pattern5: dw .pattern5_0, .pattern4_1, .pattern1_2, .pattern2_3, 0, .pattern5_5, 0, .pattern5_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,200
  !tempo,35
  !echo,%11111001,0,0
  !echoParameters,2,30,2
  !dynamicEcho,24,10,10
  !end

.pattern1_0
  !volume,200
  !instr,!instr1B
  !pan,10
  db 12,$4D
  !e5
  db 12,$4B
  !e5
  !e5
  db 12,$5F
  !e5
  !c5
  !rest
  db 12,$5B
  !e5
  db 12,$4B
  !a4
  db 36
  !rest
  db 12
  !a4
  !c5
  !d5
  db 24
  !rest
  db 12,$4D
  !e5
  db 12,$4B
  !e5
  !e5
  db 12,$5F
  !e5
  !c5
  !rest
  db 12,$4B
  !e5
  !a4
  db 36
  !rest
  db 12
  !e5
  !c5
  !d5
  !d5
  !rest
  !end

.pattern1_1
  !volume,250
  !instr,!instr04
  !pan,10
  !loop : dw .subDFC7 : db 2
  !end

.pattern1_2
  !pan,7
  !volume,240
  !instr,!instr02
  !loop : dw .subDF35 : db 4
  !end

.pattern1_3
  !volume,120
  !instr,!instr06
  !pan,5
  db 24
  !rest
  db 24,$4D
  !a5
  !g5
  !rest
  !f5
  db 12
  !rest
  db 24
  !e5
  db 36
  !rest
  db 24
  !rest
  !f5
  !e5
  !rest
  !d5
  db 12
  !rest
  db 24
  !c5
  db 36
  !rest
  !end

.pattern1_5
  !volume,200
  !instr,!instr06
  !pan,12
  db 13,$2D
  !g4
  db 11,$2B
  !g4
  db 13
  !g4
  db 11,$3F
  !g4
  db 13
  !e4
  db 11
  !rest
  db 13,$2B
  !g4
  db 11
  !c4
  db 37
  !rest
  db 11
  !c4
  db 13
  !e4
  db 11
  !f4
  db 24
  !rest
  db 13,$2D
  !g4
  db 11,$2B
  !g4
  db 13
  !g4
  db 11,$3F
  !g4
  db 13
  !e4
  db 11
  !rest
  db 13,$2B
  !g4
  db 11
  !c4
  db 37
  !rest
  db 11
  !g4
  db 13
  !e4
  db 11
  !f4
  db 13
  !f4
  db 11
  !rest
  !end

.pattern1_7
  !pan,18
  !volume,200
  !instr,!instr18
  !loop : dw .subDFAE : db 4
  !end

.pattern2_0
  !loop : dw .subDEC5 : db 1
  db 13
  !tie
  db 12
  !c4
  db 12,$4B
  !c4
  db 47,$4F
  !c4
  db 12
  !rest
  !end

.pattern2_1
  !loop : dw .subDEFC : db 1
  !end

.pattern2_3
  !loop : dw .subDF48 : db 1
  !end

.pattern2_5
  !pan,8
  !volume,160
  !instr,!instr10
  !loop : dw .subDF6C : db 1
  !end

.pattern2_7
  !pan,18
  !volume,200
  !instr,!instr18
  !loop : dw .subDFAE : db 4
  !end

.pattern3_0
  !loop : dw .subDEC5 : db 1
  db 13
  !tie
  db 12
  !c4
  db 12,$4B
  !c4
  db 47,$4F
  !c4
  db 12,$3F
  !a4
  !end

.pattern3_5
  !loop : dw .subDF6C : db 1
  !end

.pattern3_7
  !pan,18
  !volume,200
  !instr,!instr18
  !loop : dw .subDFAE : db 4
  !end

.pattern4_0
  !loop : dw .subDFE4 : db 1
  db 13
  !tie
  db 24,$4F
  !e5
  db 12,$4B
  !d5
  db 12,$4F
  !c5
  !c5
  db 11
  !rest
  !instr,!instr1B
  !volume,230
  db 12
  !a4
  !end

.pattern4_1
  !loop : dw .subE021 : db 2
  !end

.pattern4_5
  !loop : dw .subE03E : db 1
  db 13
  !tie
  db 24,$4F
  !g4
  db 12,$4B
  !f4
  db 12,$4F
  !e4
  !e4
  db 11
  !rest
  !instr,!instr1B
  !volume,230
  db 12
  !f4
  !end

.pattern4_7
  !pan,18
  !volume,200
  !instr,!instr18
  !loop : dw .subDFAE : db 4
  !end

.pattern5_0
  !loop : dw .subDFE4 : db 1
  db 13
  !tie
  db 24,$4F
  !e5
  db 12,$4B
  !d5
  db 12,$4F
  !c5
  !c5
  db 11
  !rest
  !instr,!instr1B
  !volume,230
  db 12
  !rest
  !end

.pattern5_5
  !loop : dw .subE03E : db 1
  db 13
  !tie
  db 24,$4F
  !g4
  db 12,$4B
  !f4
  db 12,$4F
  !e4
  !e4
  db 11
  !rest
  !instr,!instr1B
  !volume,230
  db 12
  !rest
  !end

.pattern5_7
  !pan,18
  !volume,200
  !instr,!instr18
  !loop : dw .subDFAE : db 4
  !end

.subDFC7
  db 25,$3D
  !c3
  db 12,$1B
  !c3
  db 25,$3D
  !e3
  db 24
  !rest
  db 10,$2B
  !e3
  db 25,$3D
  !f3
  db 12,$1B
  !f3
  db 24,$3D
  !g3
  db 30
  !rest
  db 5,$35
  !g3
  !end

.subDF35
  db 13,$2D
  !b3
  db 12,$27
  !gs3
  db 23,$7F
  !gs3
  db 13,$2D
  !b3
  db 12,$27
  !gs3
  db 23,$7F
  !gs3
  !end

.subDFAE
  db 13,$7F
  !ds5
  db 12,$77
  !ds5
  db 11,$39
  !ds5
  db 12,$3B
  !ds5
  db 13,$7F
  !ds5
  db 12,$77
  !ds5
  db 11,$39
  !ds5
  db 12,$3B
  !ds5
  !end

.subDEC5
  !volume,230
  !instr,!instr1B
  !pan,10
  db 13,$3D
  !g4
  db 12,$3B
  !g4
  !g4
  db 23,$4F
  !c5
  db 13
  !a4
  db 12,$3B
  !g4
  db 11,$4F
  !e4
  db 12
  !tie
  db 13,$2F
  !g4
  db 12
  !g4
  db 35,$4F
  !g4
  db 12
  !rest
  db 12,$3F
  !a4
  db 25,$4B
  !g4
  db 12,$3F
  !a4
  db 23,$4B
  !g4
  db 25,$2B
  !c4
  db 11,$4F
  !e4
  !end

.subDEFC
  db 25,$4D
  !c3
  db 12,$1B
  !c3
  db 24,$3D
  !e3
  db 25
  !rest
  db 10,$2B
  !e3
  db 25,$4D
  !f3
  db 12,$1B
  !f3
  db 25,$3D
  !g3
  db 29
  !rest
  db 5,$35
  !g3
  db 25,$4D
  !f3
  db 12,$19
  !f3
  db 25,$3D
  !e3
  db 24
  !rest
  db 10,$2B
  !e3
  db 25,$4D
  !d3
  db 12,$1B
  !d3
  db 30,$3D
  !c3
  db 24
  !rest
  db 5,$69
  !c3
  !end

.subDF48
  !volume,160
  !instr,!instr07
  !pan,12
  db 24
  !rest
  db 24,$7F
  !gs4
  !gs4
  !rest
  !gs4
  db 12
  !rest
  db 24
  !gs4
  db 12
  !rest
  db 24
  !gs4
  !rest
  !gs4
  !gs4
  !rest
  !gs4
  db 12
  !rest
  db 24
  !gs4
  db 12
  !rest
  db 24
  !gs4
  !end

.subDF6C
  db 6
  !rest
  db 13,$7F
  !g5
  db 12,$7B
  !g5
  !g5
  db 23,$7F
  !b5
  !pitchSlide,0,6 : !c6
  db 13
  !a5
  db 12,$7B
  !g5
  db 11,$7F
  !e5
  db 12
  !tie
  db 13
  !g5
  db 12
  !g5
  db 35
  !g5
  db 12
  !rest
  !a5
  db 25,$7B
  !g5
  db 12,$7F
  !a5
  db 23,$7B
  !g5
  db 25
  !c5
  db 11,$7F
  !ds5
  !pitchSlide,0,6 : !e5
  db 13
  !tie
  db 12
  !c5
  db 12,$7B
  !c5
  db 47,$7F
  !c5
  db 6
  !rest
  !end

.subDFE4
  !volume,230
  !instr,!instr1B
  !pan,10
  db 25,$4B
  !g4
  db 12,$3F
  !a4
  db 23,$4B
  !g4
  db 25
  !a4
  !instr,!instr06
  !volume,200
  db 11
  !c5
  db 13
  !tie
  db 24,$4F
  !d5
  db 12,$4B
  !c5
  db 12,$4F
  !d5
  !e5
  db 11
  !rest
  !instr,!instr1B
  !volume,230
  db 12
  !a4
  db 25,$4B
  !g4
  db 12,$3F
  !a4
  db 23,$4B
  !g4
  db 25
  !a4
  !instr,!instr06
  !volume,200
  db 11
  !c5
  !end

.subE021
  db 25,$4D
  !f3
  db 12,$19
  !f3
  db 25,$3D
  !e3
  db 24
  !rest
  db 10,$2B
  !e3
  db 25,$4D
  !d3
  db 12,$1B
  !d3
  db 30,$3D
  !c3
  db 24
  !rest
  db 5,$69
  !c3
  !end

.subE03E
  !volume,230
  !instr,!instr1B
  !pan,10
  db 25,$4B
  !e4
  db 12,$3F
  !f4
  db 23,$4B
  !e4
  db 25
  !f4
  !instr,!instr06
  !volume,200
  db 11
  !e4
  db 13
  !tie
  db 24,$4F
  !f4
  db 12,$4B
  !e4
  db 12,$4F
  !f4
  !g4
  db 11
  !rest
  !instr,!instr1B
  !volume,230
  db 12
  !f4
  db 25,$4B
  !e4
  db 12,$3F
  !f4
  db 23,$4B
  !e4
  db 25
  !f4
  !instr,!instr06
  !volume,200
  db 11
  !e4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
