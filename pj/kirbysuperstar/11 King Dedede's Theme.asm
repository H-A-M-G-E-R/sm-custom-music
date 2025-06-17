asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr04 = $18
!instr05 = $19
!instr06 = $1A
!instr09 = $1B
!instr1C = $1C
!instr1D = $1D
!instr22 = $1E
!instr23 = $1F
!instr27 = $20
!instr2B = $21
!instr2C = $22
!instr2D = $23
!instr2E = $24
!instr2F = $25
!instr30 = $26

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr02,$FF,$E0,$B8,$04,$80
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr06,$BF,$D4,$B8,$0F,$00
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr1C,$AF,$A1,$B8,$03,$C0
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr27,$8F,$E0,$B8,$03,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample02,Sample02+765
  dw Sample04,Sample04+1098
  dw Sample05,Sample05+27
  dw Sample06_07,Sample06_07+558
  dw Sample08_09,Sample08_09+90
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample27,Sample27+45
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample02: incbin "Sample_759514f69dc1ba8eed65c41c2bb81670.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
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
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern2_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%00000001,1,1
  !echoParameters,1,1,2
  !musicVolume,255
  !tempo,51
  !echoParameters,5,50,0
  !echo,%00011100,42,42
  !loop : dw .sub5C75 : db 1
  !end

.pattern0_1
  !instr,!instr01
  !volume,100
  !dynamicVolume,140,195
  !pan,10
  db 72,$78
  !g2
  !tie
  !instr,!instr06
  !volume,255
  db 18,$68
  !g2
  db 36,$06
  !g3
  db 18,$68
  !g2
  db 36,$06
  !g3
  db 18,$68
  !g2
  db 18,$66
  !g3
  !end

.pattern0_2
  !instr,!instr01
  !volume,100
  !dynamicVolume,140,200
  !pan,8
  db 72,$76
  !g3
  !tie
  db 18,$66
  !b4
  db 36,$06
  !a4
  db 18,$66
  !b4
  db 36,$06
  !a4
  db 18,$66
  !b4
  !b4
  !end

.pattern0_3
  !instr,!instr01
  !volume,100
  !dynamicVolume,140,200
  !pan,12
  db 72,$76
  !d4
  !tie
  db 18,$66
  !f5
  db 36,$06
  !d5
  db 18,$66
  !f5
  db 36,$06
  !d5
  db 18,$66
  !f5
  !d5
  !end

.pattern0_4
  !instr,!instr01
  !volume,100
  !dynamicVolume,140,205
  !pan,10
  db 72,$76
  !g4
  !tie
  db 18,$66
  !as5
  db 36,$06
  !g5
  db 18,$66
  !as5
  db 36,$06
  !g5
  db 18,$66
  !as5
  !g5
  !end

.pattern1_0
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !as4
  !end

.pattern1_1
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2F
  db 9,$75
  !as6
  db 9,$72
  !as6
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2F
  db 9,$73
  !g6
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2F
  db 9,$75
  !as6
  db 9,$72
  !as6
  !end

.pattern1_2
  !instr,!instr05
  !volume,255
  !pan,10
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$58
  !g2
  db 9,$53
  !g2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$58
  !g2
  db 9,$53
  !g2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$58
  !g2
  db 9,$53
  !g2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$56
  !c3
  !c3
  !c3
  db 9,$52
  !c3
  db 9,$58
  !g2
  db 9,$53
  !g2
  db 9,$57
  !as2
  db 9,$52
  !as2
  !end

.pattern1_3
  db 18
  !rest
  !instr,!instr1D
  !subtranspose,58
  !volume,150
  !pan,8
  db 9,$26
  !ds6
  !c6
  db 18
  !rest
  db 9
  !ds6
  !c6
  db 18
  !rest
  db 9
  !ds6
  !c6
  db 18
  !rest
  db 9
  !ds6
  !c6
  db 18
  !rest
  db 9
  !ds6
  !c6
  db 18
  !rest
  db 9
  !ds6
  !c6
  db 18
  !rest
  db 9
  !ds6
  !c6
  db 18
  !rest
  db 9
  !ds6
  !c6
  !end

.pattern1_4
  db 18
  !rest
  !instr,!instr1D
  !subtranspose,58
  !volume,150
  !pan,12
  db 9,$26
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  db 18
  !rest
  db 9
  !g6
  !ds6
  !end

.pattern2_0
  !echo,%00011100,42,42
  !pan,10
  !loop : dw .sub59C8 : db 8
  !end

.pattern2_1
  !volume,255
  !endVibrato
  !loop : dw .sub5A09 : db 7
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2F
  db 9,$73
  !g6
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2F
  db 9,$75
  !as6
  db 9,$72
  !as6
  !end

.pattern2_2
  !loop : dw .sub5A4A : db 1
  !end

.pattern2_3
  !transpose,12
  !instr,!instr01
  !subtranspose,0
  !volume,175
  !vibrato,14,9,20
  !pan,10
  !slideIn,0,6,1
  db 18,$56
  !ds5
  !endSlide
  db 18,$46
  !c5
  !rest
  !instr,!instr09
  !volume,140
  !pan,13
  db 9,$76
  !ds6
  db 9,$72
  !ds6
  !pan,7
  db 9,$74
  !c7
  db 9,$72
  !c7
  !instr,!instr01
  !volume,175
  !pan,10
  !slideIn,0,8,1
  db 18,$56
  !as4
  !endSlide
  db 18,$16
  !c5
  db 18,$76
  !ds5
  db 18,$56
  !tie
  db 18,$76
  !c5
  db 54
  !rest
  !slideIn,0,8,1
  db 18
  !f5
  !endSlide
  db 18,$46
  !g5
  !rest
  db 9,$66
  !ds5
  !d5
  db 18,$76
  !c5
  !rest
  !instr,!instr09
  !volume,140
  !pan,13
  db 9
  !ds6
  db 9,$72
  !ds6
  !pan,7
  db 9,$74
  !c7
  db 9,$72
  !c7
  !instr,!instr01
  !volume,175
  !pan,10
  !slideIn,0,9,1
  db 18,$46
  !g4
  !endSlide
  db 18,$16
  !ds5
  db 18,$76
  !c5
  !tie
  db 18,$16
  !as4
  db 36,$66
  !c5
  db 18,$16
  !as4
  db 36,$66
  !c5
  db 18,$26
  !as4
  db 18,$56
  !f5
  !ds5
  !rest
  !instr,!instr09
  !volume,140
  !pan,13
  db 9,$75
  !g6
  db 9,$72
  !g6
  !pan,7
  db 9,$74
  !c7
  db 9,$72
  !c7
  !instr,!instr01
  !volume,175
  !pan,10
  db 18,$56
  !f5
  !ds5
  !rest
  !slideIn,0,7,1
  !c5
  !endSlide
  db 36,$26
  !ds5
  db 18,$76
  !c5
  db 18,$66
  !ds5
  !slideIn,0,9,1
  !f5
  !endSlide
  !fs5
  !g5
  !slideIn,0,3,1
  !as5
  !endSlide
  !g5
  !rest
  !instr,!instr09
  !volume,135
  !pan,13
  db 9,$76
  !g6
  db 9,$72
  !g6
  !pan,7
  db 9,$76
  !d6
  db 9,$72
  !d6
  !pan,10
  db 9,$76
  !g5
  db 9,$72
  !g5
  !instr,!instr01
  !volume,175
  db 18,$66
  !as5
  !g5
  !rest
  !instr,!instr09
  !volume,135
  !pan,13
  db 9,$76
  !f6
  db 9,$72
  !f6
  !pan,7
  db 9,$76
  !b5
  db 9,$72
  !b5
  !pan,13
  db 9,$76
  !f5
  db 9,$72
  !f5
  !instr,!instr01
  !volume,175
  !pan,10
  !slideIn,0,9,1
  db 18,$66
  !as5
  !endSlide
  db 18,$36
  !g5
  !instr,!instr02
  !volume,190
  db 18,$78
  !g2
  db 18,$76
  !as2
  !end

.pattern2_4
  !volume,190
  !instr,!instr1C
  !subtranspose,58
  !pan,12
  !dynamicPan,144,8
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  !dynamicPan,144,12
  !loop : dw .sub5BC7 : db 1
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  !dynamicPan,144,12
  !loop : dw .sub5BC7 : db 1
  !loop : dw .sub5BEB : db 1
  !end

.pattern3_0
  !loop : dw .sub59C8 : db 7
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  db 9,$77
  !c5
  !instr,!instr2E
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  db 9,$78
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$78
  %percNote(!instr30-!instr2C)
  !end

.pattern3_1
  !loop : dw .sub5A09 : db 7
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !instr,!instr2E
  !pan,8
  db 18,$78
  !g4
  !pan,12
  db 9,$79
  !e4
  !e4
  !end

.pattern3_3
  !instr,!instr02
  !volume,175
  !vibrato,14,10,30
  !pan,10
  !slideIn,0,6,1
  db 18,$56
  !ds5
  !endSlide
  db 18,$46
  !c5
  !rest
  !instr,!instr09
  !volume,140
  !pan,13
  db 9,$76
  !ds6
  db 9,$72
  !ds6
  !pan,7
  db 9,$74
  !c7
  db 9,$72
  !c7
  !instr,!instr02
  !volume,175
  !pan,10
  !slideIn,0,8,1
  db 18,$56
  !as4
  !endSlide
  db 18,$16
  !c5
  db 18,$76
  !ds5
  db 18,$56
  !tie
  db 18,$76
  !c5
  db 54
  !rest
  !slideIn,0,8,1
  db 18
  !f5
  !endSlide
  db 18,$46
  !g5
  !rest
  db 9,$66
  !ds5
  !d5
  db 18,$76
  !c5
  !rest
  !instr,!instr09
  !volume,140
  !pan,13
  db 9
  !ds6
  db 9,$72
  !ds6
  !pan,7
  db 9,$74
  !c7
  db 9,$72
  !c7
  !instr,!instr02
  !volume,175
  !pan,10
  !slideIn,0,9,1
  db 18,$46
  !g4
  !endSlide
  db 18,$16
  !ds5
  db 18,$76
  !c5
  !tie
  db 18,$16
  !as4
  db 36,$66
  !c5
  db 18,$16
  !as4
  db 36,$66
  !c5
  db 18,$26
  !as4
  db 18,$56
  !f5
  !ds5
  !rest
  !instr,!instr09
  !volume,140
  !pan,13
  db 9,$75
  !g6
  db 9,$72
  !g6
  !pan,7
  db 9,$74
  !c7
  db 9,$72
  !c7
  !instr,!instr02
  !volume,175
  !pan,10
  db 18,$56
  !f5
  !ds5
  !rest
  !slideIn,0,7,1
  !c5
  !endSlide
  db 36,$26
  !ds5
  db 18,$76
  !c5
  db 18,$66
  !ds5
  !slideIn,0,9,1
  !f5
  !endSlide
  !fs5
  !g5
  !slideIn,0,3,1
  !as5
  !endSlide
  !g5
  !rest
  !instr,!instr09
  !volume,135
  !pan,13
  db 9,$76
  !g6
  db 9,$72
  !g6
  !pan,7
  db 9,$76
  !d6
  db 9,$72
  !d6
  !pan,10
  db 9,$76
  !g5
  db 9,$72
  !g5
  !instr,!instr02
  !volume,175
  db 18,$66
  !as5
  !g5
  !rest
  !instr,!instr09
  !volume,135
  !pan,13
  db 9,$76
  !f6
  db 9,$72
  !f6
  !pan,7
  db 9,$76
  !b5
  db 9,$72
  !b5
  !pan,13
  db 9,$76
  !f5
  db 9,$72
  !f5
  !instr,!instr02
  !volume,175
  !pan,10
  !slideIn,0,9,1
  db 18,$66
  !as5
  !endSlide
  db 18,$36
  !g5
  !rest
  db 18,$66
  !as4
  !end

.pattern3_4
  !pan,12
  !dynamicPan,144,8
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  !dynamicPan,144,12
  !loop : dw .sub5BC7 : db 1
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  !dynamicPan,144,12
  !loop : dw .sub5BC7 : db 1
  !loop : dw .sub5BEB : db 1
  !end

.pattern4_0
  !echo,%00011110,42,42
  !loop : dw .sub5CCC : db 7
  !instr,!instr2E
  db 9,$79
  !f3
  db 9,$73
  !d3
  !instr,!instr30
  db 9,$75
  !as4
  db 9,$72
  !a4
  db 9,$77
  !c5
  db 9,$71
  !b4
  db 9,$74
  !as4
  db 9,$72
  !a4
  !instr,!instr2E
  db 9,$79
  !f3
  db 9,$73
  !d3
  !instr,!instr30
  db 9,$75
  !as4
  db 9,$72
  !a4
  !instr,!instr2E
  !pan,12
  db 9,$78
  !f4
  !f4
  !pan,8
  db 9,$79
  !d4
  !d4
  !end

.pattern4_1
  !volume,175
  !instr,!instr01
  !pan,11
  db 18,$16
  !gs5
  !gs5
  !gs5
  !as5
  !c6
  !c6
  !as5
  !gs5
  db 18,$56
  !g5
  db 18,$46
  !g5
  !rest
  db 90,$56
  !ds5
  db 18,$16
  !gs5
  !gs5
  !gs5
  !as5
  !c6
  !c6
  !d6
  !c6
  db 18,$56
  !d6
  db 18,$46
  !ds6
  !rest
  db 72,$66
  !ds6
  db 9,$76
  !c6
  !as5
  db 18,$16
  !gs5
  !gs5
  !gs5
  !as5
  !c6
  !c6
  !as5
  !gs5
  db 18,$56
  !f5
  db 18,$46
  !g5
  !rest
  db 72,$66
  !ds5
  db 9,$76
  !c5
  !ds5
  db 18,$16
  !gs5
  !gs5
  !gs5
  !as5
  !gs5
  !gs5
  !f5
  !d5
  !slideIn,0,6,1
  db 18,$76
  !d5
  !endSlide
  db 18,$16
  !ds5
  !slideIn,0,10,1
  db 18,$76
  !as4
  !endSlide
  db 90
  !g4
  !end

.pattern4_2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$56
  !gs3
  db 9,$53
  !gs3
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$56
  !as2
  db 9,$52
  !as2
  db 9,$56
  !as2
  db 9,$52
  !as2
  db 9,$54
  !as3
  db 9,$52
  !as3
  db 9,$56
  !as2
  db 9,$52
  !as2
  !loop : dw .sub5D05 : db 3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$53
  !c4
  db 9,$52
  !c4
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$53
  !c4
  db 9,$52
  !c4
  db 9,$56
  !c3
  db 9,$52
  !c3
  !end

.pattern4_3
  !transpose,0
  !volume,175
  !instr,!instr04
  !pan,9
  db 18,$16
  !c6
  !c6
  !c6
  !d6
  !ds6
  !ds6
  !d6
  !c6
  db 18,$56
  !as5
  db 18,$46
  !c6
  !rest
  db 90,$56
  !g5
  db 18,$16
  !c6
  !c6
  !c6
  !d6
  !ds6
  !ds6
  !f6
  !ds6
  db 18,$56
  !f6
  db 18,$46
  !g6
  !rest
  db 72,$66
  !g6
  db 9,$76
  !ds6
  !d6
  db 18,$16
  !c6
  !c6
  !c6
  !d6
  !ds6
  !ds6
  !d6
  !c6
  db 18,$56
  !as5
  db 18,$46
  !c6
  !rest
  db 72,$66
  !g5
  db 9,$76
  !ds5
  !g5
  db 18,$16
  !c6
  !c6
  !c6
  !d6
  !c6
  !c6
  !as5
  !g5
  !slideIn,0,6,1
  db 18,$76
  !f5
  !endSlide
  db 18,$16
  !g5
  !slideIn,0,10,1
  db 18,$76
  !ds5
  !endSlide
  db 90
  !c5
  !end

.pattern4_4
  !pan,12
  !dynamicPan,144,8
  !loop : dw .sub5D66 : db 1
  !loop : dw .sub5D82 : db 1
  !loop : dw .sub5D66 : db 1
  !loop : dw .sub5D82 : db 1
  !loop : dw .sub5D66 : db 1
  !loop : dw .sub5D82 : db 1
  !loop : dw .sub5D66 : db 1
  !ds5
  !c5
  !g4
  !as4
  !c5
  !g4
  !ds4
  !g4
  !c5
  !g4
  !ds4
  !g4
  !c5
  !g4
  !ds4
  !g4
  !end

.pattern5_0
  !loop : dw .sub5D96 : db 6
  !pan,10
  !loop : dw .sub5C75 : db 1
  !end

.pattern5_1
  !instr,!instr22
  !volume,150
  !pan,12
  db 9,$46
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !c5
  !f4
  !ds5
  !gs4
  !c5
  !f4
  !ds5
  !gs4
  !c5
  !f4
  !ds5
  !gs4
  !c5
  !ds5
  !f4
  db 9,$47
  !c5
  db 9,$46
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !d5
  !f4
  !f5
  !as4
  !e5
  !g4
  !g5
  !c5
  !e5
  !g4
  !g5
  !c5
  !e5
  !g4
  !g5
  !c5
  !c5
  !e4
  !e5
  !g4
  !instr,!instr27
  !volume,175
  !gs5
  !c6
  !ds6
  !c6
  !gs5
  !c6
  !ds6
  !c6
  db 9,$47
  !d5
  !f5
  !gs5
  !f5
  !d5
  !f5
  !gs5
  !f5
  !as4
  !d5
  !ds5
  !d5
  !as4
  !d5
  !ds5
  !d5
  db 9,$48
  !gs4
  !c5
  !c5
  !c5
  !gs4
  !c5
  !c5
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  db 9,$49
  !g4
  !c5
  !g4
  !c5
  db 9,$4A
  !g4
  !c5
  !g4
  !c5
  !instr,!instr04
  !volume,180
  db 18,$66
  !b4
  db 36,$06
  !a4
  db 18,$66
  !b4
  db 36,$06
  !a4
  db 18,$66
  !b4
  !b4
  !end

.pattern5_2
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 9,$59
  !f2
  !f2
  db 9,$56
  !f3
  !f3
  db 9,$59
  !f2
  !f2
  db 9,$56
  !f3
  !f3
  db 9,$59
  !f2
  !f2
  db 9,$56
  !f3
  !f3
  db 9,$59
  !f2
  !f2
  db 9,$56
  !f3
  !f3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  !c3
  !c3
  db 9,$54
  !c4
  !c4
  db 9,$56
  !c3
  !c3
  db 9,$54
  !c4
  !c4
  db 9,$56
  !c3
  !c3
  db 9,$54
  !c4
  !c4
  db 9,$56
  !c3
  !c3
  db 9,$54
  !c4
  !c4
  db 9,$59
  !f2
  !f2
  db 9,$56
  !f3
  !f3
  db 9,$59
  !f2
  !f2
  db 9,$56
  !f3
  !f3
  !as2
  !as2
  db 9,$55
  !as3
  !as3
  db 9,$56
  !as2
  !as2
  db 9,$55
  !as3
  !as3
  db 9,$5B
  !ds2
  !ds2
  db 9,$56
  !ds3
  !ds3
  db 9,$5B
  !ds2
  !ds2
  db 9,$56
  !ds3
  !ds3
  db 9,$57
  !gs2
  !gs2
  db 9,$56
  !gs3
  !gs3
  db 9,$57
  !gs2
  !gs2
  db 9,$56
  !gs3
  !gs3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 9,$58
  !g2
  !g2
  db 9,$56
  !g3
  !g3
  db 18,$68
  !g2
  db 36,$06
  !g3
  db 18,$68
  !g2
  db 36,$06
  !g3
  db 18,$68
  !g2
  db 18,$66
  !g3
  !end

.pattern5_3
  !pan,10
  !instr,!instr23
  !volume,115
  !dynamicVolume,36,170
  !vibrato,27,20,50
  db 54,$78
  !d6
  db 9
  !c6
  db 9,$76
  !d6
  db 20
  !as5
  !dynamicVolume,16,145
  db 16
  !tie
  !pitchSlide,0,16 : !gs6
  !volume,170
  db 27
  !a6
  db 9,$78
  !f6
  db 27
  !ds6
  db 9,$76
  !f6
  db 32,$75
  !g6
  !dynamicVolume,52,115
  db 52,$68
  !tie
  !dynamicVolume,12,170
  db 12,$78
  !c6
  !cs6
  db 54,$76
  !d6
  db 9
  !c6
  !d6
  db 24,$78
  !as5
  db 26,$77
  !a6
  db 22
  !f6
  db 8
  !tie
  !vibrato,25,14,100
  !slideIn,0,46,1
  db 30,$75
  !c7
  !dynamicVolume,58,110
  db 58
  !tie
  !endSlide
  !instr,!instr2B
  !vibrato,27,22,50
  !volume,120
  !dynamicVolume,20,170
  db 24,$76
  !e6
  !g6
  db 54,$75
  !c7
  db 9,$76
  !as6
  !gs6
  db 24
  !g6
  !f6
  !g6
  db 54
  !as6
  db 9
  !gs6
  !g6
  db 24
  !f6
  db 24,$77
  !ds6
  db 24,$75
  !f6
  db 27
  !d6
  db 9,$76
  !g6
  db 108
  !g6
  !instr,!instr04
  !volume,180
  db 18,$66
  !as5
  db 36,$06
  !g5
  db 18,$66
  !as5
  db 36,$06
  !g5
  db 18,$66
  !as5
  !g5
  !end

.pattern5_4
  !subtranspose,0
  !instr,!instr22
  !volume,150
  !pan,8
  db 9,$46
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !ds5
  !gs4
  !g5
  !c5
  !ds5
  !gs4
  !g5
  !c5
  !ds5
  !gs4
  !g5
  !c5
  !ds5
  !g5
  !gs4
  db 9,$47
  !ds5
  db 9,$46
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !f5
  !as4
  !a5
  !d5
  !g5
  !c5
  !c6
  !e5
  !g5
  !c5
  !c6
  !e5
  !g5
  !c5
  !c6
  !e5
  !e5
  !g4
  !g5
  !c5
  !instr,!instr27
  !volume,175
  !c6
  !ds6
  !g6
  !ds6
  !c6
  !ds6
  !g6
  !ds6
  db 9,$47
  !gs5
  !as5
  !d6
  !as5
  !gs5
  !as5
  !d6
  !as5
  !ds5
  !g5
  !as5
  !g5
  !ds5
  !g5
  !as5
  !g5
  db 9,$48
  !c5
  !ds5
  !f5
  !ds5
  !c5
  !ds5
  !f5
  !ds5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  db 9,$49
  !d5
  !f5
  !d5
  !f5
  db 9,$4A
  !d5
  !f5
  !d5
  !f5
  !instr,!instr04
  !volume,180
  db 18,$66
  !f5
  db 36,$06
  !d5
  db 18,$66
  !f5
  db 36,$06
  !d5
  db 18,$66
  !f5
  !d5
  !end

.sub5C75
  !volume,100
  !dynamicVolume,108,255
  !instr,!instr30
  db 9,$78
  !as4
  db 9,$73
  !as4
  db 9,$74
  !as4
  db 9,$73
  !as4
  db 9,$78
  !as4
  db 9,$73
  !as4
  db 9,$74
  !as4
  db 9,$73
  !as4
  db 9,$78
  !as4
  db 9,$73
  !as4
  db 9,$74
  !as4
  db 9,$73
  !as4
  db 9,$78
  !as4
  db 9,$73
  !as4
  db 9,$74
  !as4
  db 9,$73
  !as4
  db 18,$77
  !as4
  db 31
  !as4
  db 5,$72
  !as4
  db 13,$77
  !as4
  db 5,$72
  !as4
  db 18,$77
  !as4
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 13,$77
  !as4
  db 5,$72
  !as4
  db 18,$77
  !as4
  !end

.sub59C8
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !instr,!instr2E
  db 9,$77
  !e3
  db 9,$71
  !c3
  !instr,!instr30
  db 9,$76
  !as4
  db 9,$71
  !a4
  !end

.sub5A09
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,8
  !instr,!instr2F
  db 9,$75
  !as6
  db 9,$72
  !as6
  !end

.sub5A4A
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$58
  !g2
  db 9,$53
  !g2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$58
  !g2
  db 9,$53
  !g2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$58
  !g2
  db 9,$53
  !g2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$56
  !c3
  !c3
  !c3
  db 9,$52
  !c3
  db 9,$58
  !g2
  db 9,$53
  !g2
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$59
  !f2
  db 9,$55
  !f2
  db 9,$58
  !gs2
  db 9,$53
  !gs2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$59
  !f2
  db 9,$55
  !f2
  db 9,$58
  !gs2
  db 9,$53
  !gs2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$59
  !f2
  db 9,$55
  !f2
  db 9,$58
  !gs2
  db 9,$53
  !gs2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$59
  !f2
  db 9,$55
  !f2
  db 9,$57
  !as2
  db 9,$52
  !as2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$5B
  !e2
  db 9,$56
  !e2
  db 9,$58
  !fs2
  db 9,$52
  !fs2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$5B
  !e2
  db 9,$56
  !e2
  db 9,$58
  !fs2
  db 9,$52
  !fs2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$5B
  !e2
  db 9,$56
  !e2
  db 9,$58
  !fs2
  db 9,$52
  !fs2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$5B
  !e2
  db 9,$56
  !e2
  db 9,$58
  !gs2
  db 9,$53
  !gs2
  db 9,$58
  !g2
  db 9,$52
  !g2
  db 9,$58
  !g2
  db 9,$52
  !g2
  db 9,$58
  !g2
  db 9,$53
  !g2
  db 9,$58
  !g2
  db 9,$52
  !g2
  db 9,$58
  !g2
  db 9,$52
  !g2
  db 9,$56
  !d3
  db 9,$52
  !d3
  db 9,$58
  !g2
  db 9,$52
  !g2
  db 9,$58
  !g2
  db 9,$52
  !g2
  db 9,$56
  !d3
  db 9,$52
  !d3
  db 9,$58
  !g2
  db 9,$52
  !g2
  db 9,$58
  !g2
  db 9,$53
  !g2
  db 9,$57
  !g2
  db 9,$52
  !g2
  db 9,$56
  !g3
  db 9,$52
  !g3
  db 9,$58
  !g2
  db 9,$52
  !g2
  db 9,$56
  !g3
  db 9,$52
  !g3
  db 9,$58
  !g2
  db 9,$52
  !g2
  !end

.sub5BC7
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !g5
  db 9,$36
  !c5
  !ds5
  !c5
  !dynamicPan,144,8
  !end

.sub5BEB
  db 9,$35
  !gs5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !gs5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !gs5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !gs5
  db 9,$36
  !c5
  !ds5
  !c5
  !dynamicPan,144,12
  db 9,$35
  !gs5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !gs5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !gs5
  db 9,$36
  !c5
  !ds5
  !c5
  db 9,$35
  !gs5
  db 9,$36
  !c5
  !ds5
  !c5
  !dynamicPan,144,8
  db 9,$35
  !g5
  db 9,$36
  !b4
  !d5
  !g4
  db 9,$35
  !g5
  db 9,$36
  !b4
  !d5
  !g4
  db 9,$35
  !g5
  db 9,$36
  !b4
  !d5
  !g4
  db 9,$35
  !g5
  db 9,$36
  !b4
  !d5
  !g4
  !dynamicPan,144,12
  db 9,$35
  !g5
  db 9,$36
  !b4
  !d5
  !g4
  db 9,$35
  !g5
  db 9,$36
  !b4
  !d5
  !g4
  db 9,$35
  !g5
  db 9,$36
  !b4
  !d5
  !g4
  db 9,$35
  !g5
  db 9,$36
  !b4
  !d5
  !g4
  !end

.sub5CCC
  !instr,!instr2E
  db 9,$79
  !f3
  db 9,$73
  !d3
  !instr,!instr30
  db 9,$75
  !as4
  db 9,$72
  !a4
  db 9,$77
  !c5
  db 9,$71
  !b4
  db 9,$74
  !as4
  db 9,$72
  !a4
  !instr,!instr2E
  db 9,$79
  !f3
  db 9,$73
  !d3
  !instr,!instr30
  db 9,$75
  !as4
  db 9,$72
  !a4
  db 9,$77
  !c5
  db 9,$71
  !b4
  db 9,$74
  !as4
  db 9,$72
  !a4
  !end

.sub5D05
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$53
  !c4
  db 9,$52
  !c4
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$56
  !c3
  db 9,$52
  !c3
  db 9,$53
  !c4
  db 9,$52
  !c4
  db 9,$55
  !as3
  db 9,$52
  !as3
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$56
  !gs3
  db 9,$53
  !gs3
  db 9,$58
  !gs2
  db 9,$52
  !gs2
  db 9,$56
  !as2
  db 9,$52
  !as2
  db 9,$56
  !as2
  db 9,$52
  !as2
  db 9,$54
  !as3
  db 9,$52
  !as3
  db 9,$56
  !as2
  db 9,$52
  !as2
  !end

.sub5D66
  db 9,$75
  !g5
  db 9,$76
  !ds5
  !c5
  !gs4
  db 9,$75
  !g5
  db 9,$76
  !ds5
  !c5
  !gs4
  !f5
  !ds5
  !as4
  !gs4
  !f5
  !d5
  !as4
  !gs4
  !dynamicPan,144,12
  !end

.sub5D82
  !ds5
  !c5
  !g4
  !as4
  !c5
  !g4
  !ds4
  !g4
  !c5
  !g4
  !ds4
  !g4
  !c5
  !g4
  !ds4
  !g4
  !dynamicPan,144,8
  !end

.sub5D96
  !pan,10
  db 9,$78
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$77
  !as4
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$78
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
