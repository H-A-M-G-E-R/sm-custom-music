asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr05 = $16
!instr0B = $17
!instr1C = $18
!instr1D = $19
!instr22 = $1A
!instr27 = $1B
!instr2B = $1C
!instr2C = $1D
!instr2D = $1E
!instr2E = $1F
!instr2F = $20
!instr30 = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr1C,$AF,$A1,$B8,$03,$C0
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr27,$8F,$E0,$B8,$03,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample05,Sample05+27
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample22,Sample22+315
  dw Sample27,Sample27+45
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample27: incbin "Sample_55365c24760b7ccb8bdcacbb9417c216.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $00C8,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !musicVolume,255
  !tempo,46
  !echoParameters,5,40,0
  !echo,%00111101,26,26
  !volume,255
  !instr,!instr2E
  !pan,12
  db 9,$74
  !d5
  !pan,8
  !a4
  !pan,11
  db 18
  !f4
  !end

.pattern1_0
  !echoParameters,5,40,0
  !echo,%00011100,26,26
  !volume,255
  !loop : dw .sub58C9 : db 4
  !end

.pattern1_1
  !instr,!instr05
  !volume,230
  !loop : dw .sub5900 : db 1
  db 27
  !as2
  db 9
  !as2
  db 18,$16
  !as2
  db 9,$66
  !f3
  !f3
  !as2
  db 18,$16
  !as2
  db 9,$66
  !f3
  db 18,$16
  !as2
  db 9,$66
  !as2
  !b2
  db 27
  !c3
  db 9
  !c3
  db 18,$16
  !c3
  db 9,$65
  !as3
  db 9,$63
  !c4
  db 9,$66
  !c3
  db 18,$16
  !c3
  db 9,$63
  !c4
  db 9,$66
  !c3
  !c3
  !d3
  !e3
  !end

.pattern1_2
  !subtranspose,0
  !endVibrato
  !instr,!instr22
  !pan,10
  !volume,175
  db 27,$64
  !f7
  db 9,$53
  !g7
  db 18,$04
  !f7
  db 18,$03
  !g7
  db 18,$04
  !f7
  db 18,$36
  !a6
  db 18,$56
  !d7
  db 18,$76
  !c7
  !rest
  !instr,!instr0B
  !pan,8
  !volume,145
  db 9,$36
  !b6
  !pan,12
  !c7
  !pan,10
  !d7
  !pan,8
  !a6
  !pan,12
  !c7
  !pan,10
  !d7
  !pan,8
  db 18,$06
  !c7
  !transpose,12
  !pan,12
  db 18,$03
  !c7
  !transpose,0
  !pan,8
  db 6,$78
  !c7
  db 6,$75
  !d7
  !c7
  !d7
  !c7
  !d7
  !instr,!instr22
  !pan,10
  !volume,175
  db 18,$06
  !d7
  db 9,$56
  !d7
  db 9,$55
  !e7
  db 18,$04
  !f7
  db 18,$06
  !d7
  db 18,$03
  !g7
  db 18,$04
  !d7
  db 18,$34
  !a7
  db 18,$74
  !g7
  !pitchSlide,2,1 : !a7
  !pitchSlide,3,1 : !g7
  !rest
  !instr,!instr0B
  !volume,160
  !pan,11
  db 9,$48
  !g5
  !pan,9
  !as5
  !pan,11
  !d6
  !pan,9
  !f6
  !pan,9
  db 9,$47
  !d6
  !pan,11
  !f6
  !pan,8
  !g6
  !pan,12
  !d6
  !pan,8
  db 9,$46
  !g6
  !pan,12
  db 9,$45
  !as6
  !pan,7
  db 9,$44
  !d7
  !pan,13
  db 9,$45
  !as6
  !pan,14
  db 9,$43
  !e7
  !pan,6
  db 9,$42
  !g7
  !end

.pattern1_3
  !subtranspose,58
  !instr,!instr1D
  !pan,12
  !volume,170
  db 9,$36
  !f5
  db 9,$33
  !f5
  db 9,$36
  !c6
  !a5
  !f5
  db 9,$33
  !f5
  db 9,$36
  !c6
  !a5
  !f5
  db 9,$33
  !f5
  db 9,$36
  !c6
  !a5
  !f5
  db 9,$33
  !f5
  db 9,$36
  !c6
  !a5
  !e5
  !e5
  !c6
  !a5
  !e5
  !e5
  !c6
  !a5
  !e5
  !e5
  !c6
  !a5
  !e5
  !e5
  !c6
  !a5
  !f5
  db 9,$33
  !f5
  db 9,$36
  !d6
  !as5
  !f5
  db 9,$33
  !f5
  db 9,$36
  !d6
  !as5
  !f5
  db 9,$33
  !f5
  db 9,$36
  !d6
  !as5
  !f5
  db 9,$33
  !f5
  db 9,$36
  !d6
  !as5
  !g5
  db 9,$33
  !g5
  db 9,$36
  !d6
  !as5
  !g5
  db 9,$33
  !g5
  db 9,$36
  !d6
  !as5
  !g5
  db 9,$33
  !g5
  db 9,$36
  !e6
  !as5
  db 9,$35
  !g5
  db 9,$33
  !g5
  db 9,$35
  !e6
  !as5
  !end

.pattern1_4
  !subtranspose,58
  !instr,!instr1D
  !pan,8
  !volume,170
  db 9,$36
  !a5
  db 9,$33
  !a5
  db 9,$36
  !f6
  !c6
  !a5
  db 9,$33
  !a5
  db 9,$36
  !f6
  !c6
  !a5
  db 9,$33
  !a5
  db 9,$36
  !f6
  !c6
  !a5
  db 9,$33
  !a5
  db 9,$36
  !f6
  !c6
  !a5
  !a5
  !e6
  !c6
  !a5
  !a5
  !e6
  !c6
  !a5
  !a5
  !e6
  !c6
  !a5
  !a5
  !e6
  !c6
  !as5
  db 9,$33
  !as5
  db 9,$36
  !f6
  !d6
  !as5
  db 9,$33
  !as5
  db 9,$36
  !f6
  !d6
  !as5
  db 9,$33
  !as5
  db 9,$36
  !f6
  !d6
  !as5
  db 9,$33
  !as5
  db 9,$36
  !f6
  !d6
  !as5
  db 9,$33
  !as5
  db 9,$36
  !f6
  !d6
  !as5
  db 9,$33
  !as5
  db 9,$36
  !f6
  !d6
  !as5
  db 9,$33
  !as5
  db 9,$36
  !g6
  !e6
  db 9,$35
  !as5
  db 9,$33
  !as5
  db 9,$35
  !g6
  !e6
  !end

.pattern1_5
  !instr,!instr2D
  !volume,160
  !loop : dw .sub593D : db 4
  !end

.pattern2_0
  !loop : dw .sub58C9 : db 2
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 18,$76
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 9,$70
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 18,$76
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 9,$70
  %percNote(!instr30-!instr2C)
  !pan,7
  !dynamicPan,72,13
  !instr,!instr2E
  db 9,$74
  !d5
  !d5
  !a4
  !a4
  !f4
  !f4
  !cs4
  !cs4
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 9
  !d5
  !pan,8
  !a4
  !pan,12
  db 18
  !f4
  !end

.pattern2_1
  !loop : dw .sub5900 : db 1
  db 18,$26
  !as2
  !as2
  !as2
  !rest
  !a2
  !a2
  !a2
  !rest
  !g3
  !rest
  !c3
  !rest
  db 18,$06
  !f3
  !f3
  !f3
  !rest
  !end

.pattern2_2
  !instr,!instr22
  !pan,10
  !volume,175
  db 27,$64
  !f7
  db 9,$53
  !g7
  db 18,$04
  !f7
  db 18,$03
  !g7
  db 18,$04
  !f7
  db 18,$36
  !a6
  db 18,$56
  !d7
  db 18,$76
  !c7
  !rest
  !instr,!instr0B
  !pan,8
  !volume,145
  db 9,$36
  !b6
  !pan,12
  !c7
  !pan,10
  !d7
  !pan,8
  !a6
  !pan,12
  !c7
  !pan,10
  !d7
  !pan,8
  db 18,$06
  !c7
  !transpose,12
  !pan,12
  db 18,$03
  !c7
  !transpose,0
  !pan,8
  db 6,$78
  !c7
  db 6,$75
  !d7
  !c7
  !instr,!instr22
  !pan,10
  !volume,175
  db 9,$66
  !f7
  !g7
  db 18,$06
  !a7
  !f7
  !f7
  db 9,$66
  !e7
  !f7
  db 18,$06
  !g7
  !e7
  !e7
  db 9,$66
  !f7
  !e7
  db 18,$06
  !d7
  db 9,$66
  !c7
  !d7
  db 18,$06
  !e7
  db 9,$66
  !d7
  !e7
  db 18,$06
  !f7
  !f7
  !f7
  !rest
  !end

.pattern2_3
  db 9,$36
  !f5
  db 9,$33
  !f5
  db 9,$36
  !c6
  !a5
  !f5
  db 9,$33
  !f5
  db 9,$36
  !c6
  !a5
  !f5
  db 9,$33
  !f5
  db 9,$36
  !c6
  !a5
  !f5
  db 9,$33
  !f5
  db 9,$36
  !c6
  !a5
  !e5
  !e5
  !c6
  !a5
  !e5
  !e5
  !c6
  !a5
  !e5
  !e5
  !c6
  !g5
  !ds5
  !ds5
  !c6
  !a5
  db 9,$37
  !as5
  db 9,$32
  !f5
  db 9,$37
  !as5
  db 9,$32
  !d6
  db 9,$37
  !f6
  db 27
  !rest
  db 9
  !g5
  db 9,$32
  !e5
  db 9,$37
  !g5
  db 9,$32
  !c6
  db 9,$37
  !e6
  db 27
  !rest
  db 18,$36
  !f6
  !rest
  !g6
  !rest
  !a6
  !a6
  db 36,$06
  !a6
  !end

.pattern2_4
  db 9,$36
  !a5
  db 9,$33
  !a5
  db 9,$36
  !f6
  !c6
  !a5
  db 9,$33
  !a5
  db 9,$36
  !f6
  !c6
  !a5
  db 9,$33
  !a5
  db 9,$36
  !f6
  !c6
  !a5
  db 9,$33
  !a5
  db 9,$36
  !f6
  !c6
  !a5
  !a5
  !e6
  !c6
  !a5
  !a5
  !e6
  !c6
  !g5
  !g5
  !e6
  !c6
  !g5
  !g5
  !ds6
  !c6
  db 9,$37
  !d6
  db 9,$32
  !as5
  db 9,$37
  !d6
  db 9,$32
  !f6
  db 9,$37
  !a6
  db 27
  !rest
  db 9
  !c6
  db 9,$32
  !a5
  db 9,$37
  !c6
  db 9,$32
  !e6
  db 9,$37
  !g6
  db 27
  !rest
  db 18,$36
  !as6
  !rest
  !as6
  !rest
  !c6
  !c6
  db 36,$06
  !c6
  !end

.pattern2_5
  !loop : dw .sub593D : db 2
  !pan,10
  db 18,$18
  !c5
  !c5
  !c5
  !rest
  !c5
  !c5
  !c5
  !rest
  !pan,8
  db 18,$16
  !c5
  !rest
  !c5
  !rest
  !pan,10
  !c5
  !c5
  !c5
  !rest
  !end

.pattern3_0
  !loop : dw .sub58C9 : db 4
  !end

.pattern3_1
  db 27,$66
  !cs3
  db 9
  !cs3
  db 18,$16
  !cs3
  db 9,$63
  !cs4
  db 9,$66
  !gs3
  !c3
  db 18,$16
  !c3
  db 9,$63
  !c4
  db 18,$16
  !c3
  db 9,$63
  !c4
  db 9,$66
  !c3
  !loop : dw .sub5983 : db 2
  db 27
  !cs3
  db 9
  !cs3
  db 18,$16
  !cs3
  db 9,$63
  !cs4
  !gs3
  db 9,$66
  !c3
  db 18,$16
  !c3
  db 9,$63
  !c4
  db 9,$66
  !c3
  !c3
  db 9,$63
  !c4
  db 9,$66
  !c3
  !end

.pattern3_2
  !pan,12
  !instr,!instr0B
  !volume,160
  db 9,$46
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !c5
  !ds5
  !g5
  !ds5
  !c5
  !ds5
  !g5
  !ds5
  !loop : dw .sub59A1 : db 2
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !c5
  !f5
  !g5
  !f5
  !c5
  !e5
  !g5
  !e5
  !end

.pattern3_3
  !instr,!instr1C
  !pan,8
  !volume,155
  db 27,$56
  !gs6
  db 9
  !gs6
  db 18,$06
  !gs6
  db 9,$56
  !g6
  !f6
  db 18,$06
  !g6
  !ds6
  db 18,$56
  !as5
  db 9
  !c6
  !ds6
  !gs6
  db 18,$06
  !gs6
  db 9,$56
  !gs6
  db 18
  !gs6
  db 9
  !g6
  !f6
  db 18,$06
  !f6
  db 36,$16
  !g6
  db 9,$56
  !c6
  !ds6
  !gs6
  db 18,$06
  !gs6
  db 9,$56
  !gs6
  db 18,$06
  !gs6
  db 9,$56
  !g6
  !f6
  db 18,$06
  !g6
  !ds6
  db 18,$56
  !as5
  db 9
  !c6
  !f6
  !gs6
  db 18,$06
  !gs6
  db 9,$56
  !gs6
  !gs6
  !gs6
  !g6
  !f6
  db 18,$06
  !g6
  !as6
  db 18,$56
  !e6
  !rest
  !end

.pattern3_4
  !instr,!instr1C
  !pan,10
  !volume,170
  db 27,$56
  !c7
  db 9
  !c7
  db 18,$06
  !c7
  db 9,$56
  !as6
  !gs6
  db 18,$06
  !as6
  !g6
  db 18,$56
  !ds6
  db 9
  !f6
  !gs6
  !c7
  db 18,$06
  !c7
  db 9,$56
  !c7
  db 18
  !c7
  db 9
  !as6
  !gs6
  db 18,$06
  !as6
  db 36,$16
  !c7
  db 9,$56
  !f6
  !gs6
  !c7
  db 18,$06
  !c7
  db 9,$56
  !c7
  db 18,$06
  !c7
  db 9,$56
  !as6
  !gs6
  db 18,$06
  !as6
  !g6
  db 18,$56
  !ds6
  db 9
  !f6
  !gs6
  !c7
  db 18,$06
  !c7
  db 9,$56
  !c7
  !c7
  !c7
  !as6
  !gs6
  db 18,$06
  !as6
  !ds7
  db 18,$56
  !c7
  !rest
  !end

.pattern3_5
  !volume,160
  !instr,!instr2D
  !loop : dw .sub593D : db 4
  !end

.pattern4_0
  !loop : dw .sub59B2 : db 2
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$71
  !b4
  db 9,$72
  !b4
  db 18,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  !pan,12
  !instr,!instr2E
  db 9,$74
  !d5
  !d5
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2E
  db 9,$74
  !a4
  !a4
  !pan,11
  !f4
  !pan,10
  db 36,$18
  %percNote(!instr30-!instr2C)
  !pan,9
  db 9,$42
  !a4
  !pan,11
  db 18,$14
  !a4
  !pan,9
  db 9,$40
  !a4
  !end

.pattern4_1
  db 9,$46
  !as2
  db 18
  !as2
  db 9
  !as2
  db 18
  !as2
  db 9,$45
  !as3
  db 9,$46
  !as2
  !ds3
  db 18
  !ds3
  db 9
  !ds3
  db 18
  !ds3
  db 9,$43
  !ds4
  db 9,$46
  !ds3
  !d3
  db 18
  !d3
  db 9
  !d3
  db 18
  !d3
  db 9,$43
  !d4
  db 9,$46
  !d3
  !g3
  db 18
  !g3
  db 9
  !g3
  db 18
  !g3
  db 9,$42
  !g4
  db 9,$46
  !g3
  !e3
  db 18
  !e3
  db 9
  !e3
  db 18
  !e3
  db 9,$43
  !e4
  db 9,$46
  !e3
  !a3
  db 18
  !a3
  db 9
  !a3
  db 18
  !a3
  db 9,$45
  !a4
  db 9,$46
  !a3
  !g3
  db 18
  !g3
  db 9,$42
  !g4
  db 18,$46
  !g3
  db 9,$42
  !g4
  db 9,$46
  !g3
  db 18,$48
  !c3
  db 54
  !rest
  !end

.pattern4_2
  !instr,!instr27
  !volume,210
  !pan,10
  !vibrato,10,20,30
  db 18,$56
  !as6
  db 9
  !gs6
  !g6
  db 18
  !f6
  db 9
  !g6
  !gs6
  db 18,$06
  !g6
  db 18,$05
  !c7
  db 18,$56
  !g6
  db 9
  !f6
  !g6
  db 18,$06
  !a6
  db 18,$05
  !d7
  db 18,$56
  !a6
  db 9
  !g6
  !a6
  !g6
  !a6
  !g6
  !a6
  db 18
  !g6
  db 9
  !g6
  !a6
  db 18
  !b6
  db 9
  !a6
  !g6
  !fs6
  !g6
  !a6
  !b6
  db 18,$05
  !c7
  !g7
  db 18,$55
  !c7
  db 9
  !c7
  !d7
  db 18
  !e7
  db 9
  !d7
  !c7
  db 18,$56
  !b6
  db 9,$55
  !c7
  !d7
  db 18
  !c7
  !rest
  !instr,!instr1C
  !subtranspose,58
  !volume,200
  !pan,10
  db 9,$47
  !c7
  !c7
  db 9,$46
  !d7
  db 9,$45
  !e7
  !end

.pattern4_3
  !instr,!instr22
  !volume,155
  !pan,12
  !subtranspose,0
  db 9,$56
  !as4
  !cs5
  !as4
  !cs5
  !as4
  !cs5
  !as4
  !cs5
  !as4
  !cs5
  !as4
  !cs5
  !as4
  !cs5
  !as4
  !cs5
  !a4
  !c5
  !a4
  !c5
  !a4
  !c5
  !a4
  !c5
  !g4
  !b4
  !g4
  !b4
  !g4
  !b4
  !g4
  !b4
  !g4
  !b4
  !g4
  !b4
  !g4
  !b4
  !g4
  !b4
  !a4
  !c5
  !a4
  !c5
  !a4
  !c5
  !a4
  !c5
  !a4
  !as4
  !a4
  !as4
  !a4
  !as4
  !a4
  !as4
  db 18,$26
  !as4
  db 54
  !rest
  !end

.pattern4_4
  !instr,!instr22
  !volume,155
  !pan,8
  !subtranspose,0
  db 9,$56
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !ds5
  !g5
  !ds5
  !g5
  !ds5
  !g5
  !ds5
  !g5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !fs5
  !d5
  !fs5
  !d5
  !fs5
  !d5
  !fs5
  !e5
  !g5
  !e5
  !g5
  !e5
  !g5
  !e5
  !g5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  db 18,$26
  !e5
  db 54
  !rest
  !end

.pattern4_5
  !loop : dw .sub593D : db 3
  !volume,255
  !pan,10
  db 9
  %percNote(!instr2C-!instr2C)
  !volume,160
  !instr,!instr2D
  !pan,12
  db 9,$73
  !b4
  !pan,8
  db 9,$75
  !b4
  !pan,10
  db 9,$73
  !b4
  !volume,255
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !volume,160
  !instr,!instr2D
  !pan,8
  !b4
  !pan,12
  !b4
  !pan,10
  !b4
  db 18,$78
  !c5
  db 54
  !rest
  !end

.pattern5_0
  !loop : dw .sub58C9 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  !pan,12
  !instr,!instr2E
  db 9,$74
  !d5
  !d5
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2E
  db 9,$74
  !a4
  !a4
  !pan,11
  !f4
  !pan,10
  db 36,$18
  %percNote(!instr30-!instr2C)
  db 18,$78
  %percNote(!instr30-!instr2C)
  !instr,!instr2F
  !pan,12
  db 9,$44
  !c7
  !pan,8
  !c7
  !end

.pattern5_1
  db 9,$46
  !fs3
  db 18,$47
  !fs2
  db 9
  !fs2
  db 18
  !fs2
  db 9,$46
  !fs3
  db 9,$48
  !fs2
  db 9,$46
  !f3
  db 18,$48
  !f2
  db 9
  !f2
  db 18
  !f2
  db 9,$46
  !f3
  db 9,$48
  !f2
  db 9,$43
  !cs4
  db 18,$46
  !cs3
  db 9
  !cs3
  db 18
  !cs3
  db 9,$43
  !cs4
  db 9,$46
  !cs3
  db 9,$43
  !c4
  db 18,$46
  !c3
  db 9
  !c3
  db 18
  !c3
  db 9,$43
  !c4
  db 9,$46
  !c3
  db 9,$44
  !as3
  db 18,$46
  !as2
  db 9
  !as2
  db 18
  !as2
  db 9,$44
  !as3
  db 9,$46
  !as2
  db 9,$43
  !c4
  db 18,$46
  !c3
  db 9
  !c3
  db 18
  !c3
  db 9,$43
  !c4
  db 9,$46
  !c3
  !d3
  !d3
  db 9,$43
  !d4
  db 9,$46
  !d3
  !d3
  !d3
  db 9,$43
  !d4
  db 9,$46
  !d3
  db 36,$06
  !g3
  db 18,$44
  !c3
  db 9,$42
  !c3
  db 9,$43
  !e3
  !end

.pattern5_2
  db 9,$75
  !f7
  !ds7
  !cs7
  !c7
  db 18,$56
  !as6
  db 9
  !gs6
  !as6
  db 18,$16
  !c7
  db 18,$54
  !g7
  db 9,$66
  !c7
  !a6
  db 9,$67
  !f6
  db 9,$66
  !g6
  db 18,$18
  !gs6
  db 9,$56
  !gs6
  !as6
  db 18,$57
  !gs6
  db 9
  !g6
  db 9,$56
  !f6
  db 18,$18
  !ds6
  db 9,$46
  !ds6
  !f6
  db 18,$57
  !ds6
  db 9
  !c6
  db 9,$56
  !ds6
  db 9,$58
  !f6
  db 18,$16
  !f6
  db 9,$56
  !g6
  db 18
  !gs6
  db 9
  !g6
  !f6
  db 9,$48
  !ds6
  db 9,$43
  !ds6
  db 9,$48
  !ds6
  db 9,$46
  !f6
  db 18,$58
  !ds6
  db 9,$56
  !c6
  !ds6
  !volume,110
  !dynamicVolume,72,220
  db 72,$76
  !f6
  !volume,185
  !instr,!instr1D
  db 36,$08
  !f6
  db 36,$33
  !c7
  !end

.pattern5_3
  !instr,!instr2B
  !volume,130
  !pan,12
  db 9,$4A
  !as4
  db 9,$46
  !cs5
  db 9,$47
  !fs5
  db 9,$46
  !as5
  db 9,$48
  !cs6
  db 9,$46
  !as5
  db 9,$47
  !fs5
  db 9,$46
  !cs5
  db 9,$4A
  !a4
  db 9,$46
  !c5
  db 9,$47
  !f5
  db 9,$46
  !a5
  db 9,$48
  !c6
  db 9,$46
  !a5
  db 9,$47
  !e5
  db 9,$46
  !c5
  db 9,$4A
  !gs4
  db 9,$46
  !cs5
  db 9,$47
  !f5
  db 9,$46
  !gs5
  db 9,$48
  !c6
  db 9,$46
  !as5
  db 9,$47
  !gs5
  db 9,$46
  !f5
  db 9,$4A
  !g4
  db 9,$46
  !c5
  db 9,$47
  !ds5
  db 9,$46
  !g5
  db 9,$48
  !as5
  db 9,$46
  !g5
  db 9,$47
  !ds5
  db 9,$46
  !d5
  db 9,$4A
  !as4
  db 9,$46
  !cs5
  db 9,$47
  !f5
  db 9,$46
  !as5
  db 9,$48
  !cs6
  db 9,$46
  !as5
  db 9,$47
  !f5
  db 9,$46
  !cs5
  db 9,$4A
  !g4
  db 9,$46
  !c5
  db 9,$47
  !ds5
  db 9,$46
  !g5
  db 9,$48
  !as5
  db 9,$46
  !g5
  db 9,$47
  !ds5
  db 9,$46
  !d5
  db 10,$49
  !f5
  db 9,$46
  !a5
  !f5
  db 8
  !a5
  db 10,$49
  !f5
  db 9,$47
  !f5
  db 9,$48
  !a5
  db 8
  !f5
  !instr,!instr1D
  !subtranspose,58
  !volume,170
  db 36,$08
  !a5
  db 36,$33
  !g6
  !end

.pattern5_4
  !instr,!instr2B
  !volume,130
  !pan,8
  db 9,$4A
  !cs5
  db 9,$46
  !fs5
  db 9,$47
  !as5
  db 9,$46
  !ds6
  db 9,$48
  !fs6
  db 9,$46
  !cs6
  db 9,$47
  !as5
  db 9,$46
  !fs5
  db 9,$4A
  !c5
  db 9,$46
  !f5
  db 9,$47
  !a5
  db 9,$46
  !c6
  db 9,$48
  !e6
  db 9,$46
  !c6
  db 9,$47
  !a5
  db 9,$46
  !f5
  db 9,$4A
  !cs5
  db 9,$46
  !f5
  db 9,$47
  !c6
  db 9,$46
  !ds6
  db 9,$48
  !f6
  db 9,$46
  !ds6
  db 9,$47
  !c6
  db 9,$46
  !gs5
  db 9,$4A
  !c5
  db 9,$46
  !ds5
  db 9,$47
  !g5
  db 9,$46
  !as5
  db 9,$48
  !d6
  db 9,$46
  !as5
  db 9,$47
  !g5
  db 9,$46
  !ds5
  db 9,$4A
  !cs5
  db 9,$46
  !f5
  db 9,$47
  !as5
  db 9,$46
  !cs6
  db 9,$48
  !f6
  db 9,$46
  !cs6
  db 9,$47
  !as5
  db 9,$46
  !gs5
  db 9,$4A
  !c5
  db 9,$46
  !ds5
  db 9,$47
  !g5
  db 9,$46
  !as5
  db 9,$48
  !d6
  db 9,$46
  !as5
  db 9,$47
  !g5
  db 9,$46
  !ds5
  db 10,$49
  !a5
  db 9,$46
  !c6
  !a5
  db 8
  !c6
  db 10,$49
  !a5
  db 9,$47
  !a5
  db 9,$48
  !c6
  db 8
  !a5
  !instr,!instr1D
  !subtranspose,58
  !volume,170
  db 36,$08
  !c6
  db 36,$33
  !e6
  !end

.pattern5_5
  !volume,160
  !instr,!instr2D
  !loop : dw .sub593D : db 3
  !pan,10
  db 9,$78
  !c5
  !pan,12
  db 9,$73
  !b4
  !pan,8
  db 9,$75
  !b4
  !pan,10
  db 9,$73
  !b4
  db 9,$76
  !c5
  !pan,8
  !b4
  !pan,12
  !b4
  !pan,10
  !b4
  db 36,$78
  !c5
  db 9
  !c5
  !instr,!instr2E
  !pan,12
  db 18,$76
  !d5
  !pan,8
  db 9
  !a4
  !end

.sub58C9
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2F
  db 18,$74
  !c7
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2C)
  !pan,8
  !instr,!instr2F
  db 18,$74
  !c7
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2F
  db 18,$74
  !c7
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  !pan,12
  !instr,!instr2F
  db 9,$74
  !c7
  !pan,8
  !c7
  !end

.sub5900
  db 27,$66
  !f3
  db 9
  !f3
  db 18,$16
  !f3
  db 9,$66
  !c3
  !d3
  !f3
  db 18,$16
  !f3
  db 9,$66
  !c3
  db 18,$16
  !f3
  db 9,$68
  !f2
  db 9,$67
  !g2
  db 27,$66
  !a2
  db 9
  !a2
  db 18,$16
  !a2
  db 9,$66
  !g3
  db 9,$65
  !a3
  db 9,$66
  !a2
  db 18,$16
  !a2
  db 9,$66
  !g3
  db 18,$15
  !a3
  db 9,$67
  !g2
  db 9,$66
  !a2
  !end

.sub593D
  !pan,10
  db 10,$7A
  !c5
  !pan,12
  db 9,$73
  !b4
  !pan,8
  db 9,$75
  !b4
  !pan,10
  db 8,$73
  !b4
  db 10,$7A
  !c5
  !pan,8
  db 9,$76
  !b4
  !pan,12
  !b4
  !pan,10
  db 8,$73
  !b4
  db 10,$7A
  !c5
  !pan,12
  db 9,$73
  !b4
  !pan,8
  db 9,$75
  !b4
  !pan,10
  db 8,$73
  !b4
  db 10,$7A
  !c5
  !pan,8
  db 9,$76
  !b4
  !pan,12
  !b4
  !pan,10
  db 8
  !b4
  !end

.sub5983
  db 27
  !cs3
  db 9
  !cs3
  db 18,$16
  !cs3
  db 9,$63
  !cs4
  db 9,$66
  !gs3
  !c3
  db 18,$16
  !c3
  db 9,$63
  !c4
  db 18,$16
  !c3
  db 9,$63
  !c4
  db 9,$66
  !c3
  !end

.sub59A1
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !c5
  !ds5
  !g5
  !ds5
  !c5
  !ds5
  !g5
  !ds5
  !end

.sub59B2
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
