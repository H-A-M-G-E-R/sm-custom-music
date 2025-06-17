asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr05 = $17
!instr07 = $18
!instr1E = $19
!instr23 = $1A
!instr29 = $1B
!instr2B = $1C
!instr2C = $1D
!instr2D = $1E
!instr2E = $1F
!instr2F = $20
!instr30 = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr1E,$FF,$E0,$B8,$03,$C0
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr29,$88,$87,$B8,$07,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample05,Sample05+27
  dw Sample06_07,Sample06_07+558
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample23,Sample23+396
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
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
  dw .pattern1
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%00111000,33,33
  !echoParameters,5,73,0
  !musicVolume,255
  !tempo,47
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 36,$77
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !end

.pattern0_1
  !pan,10
  !volume,225
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 27
  %percNote(!instr30-!instr2C)
  db 9
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 18,$78
  !g4
  !end

.pattern0_2
  !instr,!instr05
  !volume,250
  db 18,$57
  !d3
  db 18,$56
  !d4
  db 18,$57
  !d3
  db 18,$56
  !d4
  db 18,$57
  !e3
  db 18,$56
  !e4
  db 18,$57
  !e3
  db 18,$56
  !e4
  db 18,$57
  !f3
  db 18,$56
  !f4
  db 18,$57
  !f3
  db 18,$56
  !f4
  !slideOut,18,18,254
  db 36
  !g4
  !endSlide
  db 36,$07
  !g3
  !end

.pattern0_3
  !pan,8
  !instr,!instr01
  !volume,180
  db 36,$77
  !f4
  db 27,$76
  !f4
  db 9
  !f4
  db 36,$77
  !g4
  db 27
  !g4
  db 9
  !g4
  db 36
  !a4
  db 27
  !a4
  db 9
  !a4
  !slideOut,18,18,254
  !dynamicVolume,36,124
  db 36,$78
  !b4
  !endSlide
  !volume,185
  db 36,$08
  !b3
  !end

.pattern0_4
  !pan,12
  !instr,!instr01
  !volume,180
  db 36,$77
  !a4
  db 27,$76
  !a4
  db 9
  !a4
  db 36,$77
  !b4
  db 27
  !b4
  db 9
  !b4
  db 36
  !c5
  db 27
  !c5
  db 9
  !c5
  !slideOut,18,18,254
  !dynamicVolume,36,124
  db 36,$78
  !d5
  !endSlide
  !volume,185
  db 36,$08
  !d4
  !end

.pattern0_5
  !pan,10
  !instr,!instr01
  !volume,185
  db 36,$77
  !d5
  db 27,$76
  !c5
  db 9,$77
  !d5
  db 36
  !e5
  db 27
  !d5
  db 9,$78
  !e5
  db 36,$77
  !f5
  db 27
  !e5
  db 9,$78
  !f5
  !slideOut,18,18,254
  !dynamicVolume,36,124
  db 36
  !g5
  !endSlide
  !volume,185
  db 36,$08
  !g4
  !end

.pattern1_0
  !loop : dw .sub575F : db 4
  !end

.pattern1_1
  !loop : dw .sub5788 : db 4
  !end

.pattern1_2
  db 18,$57
  !c3
  db 18,$56
  !c4
  db 18,$57
  !c3
  db 18,$56
  !c4
  db 18,$57
  !b2
  !b3
  !b2
  !b3
  !a2
  !a3
  !a2
  !a3
  !f2
  !f3
  !g2
  !g3
  !c3
  db 18,$56
  !c4
  db 18,$57
  !c3
  db 18,$56
  !c4
  db 18,$57
  !b2
  !b3
  !b2
  !b3
  !as2
  !as3
  !as2
  !as3
  !a2
  !a3
  !a2
  !a3
  !end

.pattern1_3
  !vibrato,0,17,20
  !instr,!instr23
  !pan,10
  !volume,170
  db 36,$66
  !g6
  db 27
  !c7
  db 9
  !d7
  db 18,$06
  !e7
  !d7
  !e7
  !f7
  db 36,$66
  !g7
  db 27
  !e7
  db 9
  !g7
  db 36
  !c7
  !d7
  !g6
  db 27
  !c7
  db 9
  !d7
  db 18,$06
  !e7
  !d7
  !e7
  !f7
  db 36,$66
  !g7
  db 27
  !a7
  db 9
  !g7
  db 18,$76
  !f7
  !e7
  !d7
  !e7
  !end

.pattern1_4
  !instr,!instr1E
  !subtranspose,58
  !volume,165
  !pan,8
  db 9,$56
  !g5
  !c6
  !e6
  !c6
  !g5
  !c6
  !e6
  !c6
  !g5
  !c6
  !e6
  !c6
  !g5
  !c6
  !e6
  !c6
  !g5
  !c6
  !e6
  !c6
  !g5
  !c6
  !e6
  !c6
  !a5
  !c6
  !f6
  !c6
  !b5
  !d6
  !g6
  !d6
  !g5
  !c6
  !e6
  !c6
  !g5
  !c6
  !e6
  !c6
  !g5
  !c6
  !e6
  !c6
  !g5
  !c6
  !e6
  !c6
  !g5
  !as5
  !f6
  !as5
  !g5
  !as5
  !f6
  !as5
  !a5
  !cs6
  !g6
  !cs6
  !a5
  !cs6
  !g6
  !cs6
  !end

.pattern1_5
  !instr,!instr1E
  !subtranspose,58
  !volume,165
  !pan,12
  db 9,$56
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !f5
  !a5
  !c6
  !a5
  !g5
  !b5
  !d6
  !b5
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !e5
  !g5
  !c6
  !g5
  !d5
  !g5
  !d6
  !g5
  !d5
  !g5
  !d6
  !g5
  !e5
  !a5
  !e6
  !a5
  !e5
  !a5
  !e6
  !a5
  !end

.pattern2_0
  !loop : dw .sub575F : db 3
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,12
  db 36,$76
  !c7
  !pan,8
  db 9,$75
  !g6
  db 9,$73
  !g6
  !pan,12
  db 18,$76
  !c7
  !c7
  db 9
  !c7
  db 9,$74
  !c7
  db 18,$76
  !c7
  !end

.pattern2_1
  !loop : dw .sub5788 : db 3
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 18,$79
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 9
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 18
  %percNote(!instr30-!instr2C)
  !end

.pattern2_2
  !loop : dw .sub57B9 : db 1
  !d3
  db 18,$56
  !d4
  db 18,$57
  !d3
  db 18,$56
  !d4
  db 18,$57
  !d3
  db 18,$56
  !d4
  db 18,$57
  !d3
  db 18,$56
  !d4
  db 18,$57
  !g2
  !g3
  !g2
  !g3
  db 18,$5A
  !g2
  db 54
  !rest
  !end

.pattern2_3
  db 36,$66
  !f7
  db 27
  !e7
  db 9
  !f7
  db 18,$06
  !g7
  !f7
  !e7
  !g7
  db 36,$66
  !e7
  db 27
  !c7
  db 9
  !d7
  db 36
  !e7
  db 36,$36
  !a6
  db 36,$66
  !d7
  db 27
  !e7
  db 9
  !d7
  db 18,$06
  !d7
  !c7
  !b6
  !c7
  !slideOut,36,36,3
  db 72,$66
  !d7
  !endSlide
  db 18,$06
  !g7
  !d7
  !b6
  !a6
  !end

.pattern2_4
  !loop : dw .sub57D8 : db 1
  !d6
  !f6
  !a6
  !f6
  !d6
  !f6
  !a6
  !f6
  !d6
  !f6
  !a6
  !f6
  !d6
  !f6
  !a6
  !f6
  !b5
  !d6
  !g6
  !d6
  !g5
  !b5
  !d6
  !f6
  db 18,$06
  !g6
  !d6
  !b5
  !a5
  !end

.pattern2_5
  !loop : dw .sub57FB : db 1
  !f5
  !a5
  !d6
  !a5
  !f5
  !a5
  !d6
  !a5
  !f5
  !a5
  !d6
  !a5
  !f5
  !a5
  !d6
  !a5
  !g5
  !b5
  !d6
  !b5
  !subtranspose,50
  !g5
  !b5
  !d6
  !f6
  db 18,$06
  !g6
  !d6
  !b5
  !a5
  !end

.pattern3_0
  !loop : dw .sub575F : db 2
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,12
  db 9,$76
  !c7
  !pan,8
  db 9,$75
  !g6
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,12
  db 9,$76
  !c7
  !pan,8
  db 9,$75
  !g6
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,12
  db 9,$76
  !c7
  !pan,8
  db 9,$75
  !g6
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,12
  db 9,$76
  !c7
  !pan,8
  db 9,$75
  !g6
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,12
  db 9,$76
  !c7
  !pan,8
  db 9,$75
  !g6
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,12
  db 9,$76
  !c7
  !pan,8
  db 5,$75
  !g6
  !pan,12
  db 4,$72
  !c7
  db 18,$76
  !c7
  db 18,$75
  !c7
  db 9,$76
  !c7
  db 9,$75
  !c7
  !pan,8
  db 9,$76
  !g6
  !g6
  !end

.pattern3_1
  !loop : dw .sub5788 : db 3
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !end

.pattern3_2
  !loop : dw .sub57B9 : db 1
  db 18,$59
  !gs2
  db 9,$57
  !gs3
  db 9,$58
  !gs2
  db 9,$59
  !gs2
  db 9,$58
  !gs2
  db 9,$57
  !gs3
  db 9,$58
  !gs2
  db 9,$59
  !gs2
  db 9,$58
  !gs2
  db 9,$57
  !gs3
  db 9,$58
  !gs2
  db 9,$59
  !gs2
  db 9,$58
  !gs2
  db 9,$57
  !gs3
  db 9,$58
  !gs2
  db 9,$59
  !g2
  db 9,$58
  !g2
  db 9,$57
  !g3
  db 9,$58
  !g2
  db 9,$59
  !g2
  db 9,$58
  !g2
  db 9,$57
  !g3
  db 9,$58
  !g2
  db 9,$59
  !g2
  db 9,$58
  !g2
  db 9,$57
  !g3
  db 9,$59
  !g2
  !g2
  !g2
  db 9,$58
  !g3
  db 9,$5A
  !g2
  !end

.pattern3_3
  db 36,$66
  !f7
  db 27
  !e7
  db 9
  !f7
  db 18,$06
  !g7
  !f7
  !e7
  !g7
  db 36,$66
  !e7
  db 27
  !c7
  db 9
  !d7
  db 36
  !e7
  db 27
  !a6
  db 9
  !c7
  db 36
  !g7
  db 27
  !g7
  db 9
  !g7
  db 18,$06
  !g7
  !f7
  !ds7
  !f7
  db 72,$76
  !g7
  db 72,$68
  !tie
  !end

.pattern3_4
  !loop : dw .sub57D8 : db 1
  db 36,$66
  !ds7
  db 27
  !ds7
  db 9
  !ds7
  db 18,$06
  !ds7
  !c7
  !c7
  !d7
  db 36,$66
  !c7
  db 27
  !d7
  db 9
  !c7
  db 36,$65
  !b6
  !g6
  !end

.pattern3_5
  !loop : dw .sub57FB : db 1
  !c6
  !ds6
  !gs6
  !c7
  !c6
  !ds6
  !gs6
  !c7
  !c6
  !ds6
  !gs6
  !ds6
  !gs6
  !ds6
  !gs6
  !ds6
  !g5
  !d6
  !f6
  !g6
  !b6
  !g6
  !f6
  !d6
  !g5
  !b5
  !d6
  !f6
  !d6
  !b5
  !d6
  !f6
  !end

.pattern4_0
  !loop : dw .sub575F : db 3
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,12
  db 36,$76
  !c7
  !pan,8
  db 9,$75
  !g6
  db 9,$73
  !g6
  !pan,12
  db 18,$76
  !c7
  db 18,$75
  !c7
  db 9
  !c7
  db 9,$73
  !c7
  db 9,$74
  !c7
  db 9,$72
  !c7
  db 72
  !rest
  !rest
  !rest
  db 9,$76
  !c7
  db 27
  !c7
  db 9
  !c7
  !c7
  db 18
  !c7
  !end

.pattern4_1
  !loop : dw .sub5788 : db 3
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 25
  %percNote(!instr30-!instr2C)
  db 25,$73
  %percNote(!instr30-!instr2C)
  db 25,$72
  %percNote(!instr30-!instr2C)
  db 25,$71
  %percNote(!instr30-!instr2C)
  db 25,$70
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 16
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 27
  %percNote(!instr30-!instr2C)
  db 9
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 18
  %percNote(!instr30-!instr2C)
  !end

.pattern4_2
  db 18,$57
  !a2
  db 9
  !a3
  !a2
  !a2
  !a2
  !a3
  !a2
  !g2
  !g2
  !g3
  !g2
  !g2
  !g2
  !g3
  !g2
  db 9,$58
  !fs2
  !fs2
  db 9,$57
  !fs3
  db 9,$58
  !fs2
  !fs2
  !fs2
  db 9,$57
  !fs3
  db 9,$58
  !fs2
  db 9,$57
  !g2
  !g2
  !g3
  !g2
  !g2
  !g2
  !g3
  !g2
  !a2
  !a2
  !a3
  !e3
  !a2
  !a2
  !a3
  !e3
  !e3
  !e3
  db 9,$56
  !e4
  db 9,$57
  !b3
  !e3
  !e3
  db 9,$56
  !e4
  db 9,$57
  !b3
  !d3
  !d3
  db 9,$56
  !d4
  db 9,$57
  !a3
  !d3
  !d3
  db 9,$56
  !d4
  db 9,$57
  !a3
  !d3
  !d3
  db 9,$56
  !d4
  db 9,$57
  !a3
  !d3
  !d3
  db 9,$56
  !d4
  db 9,$57
  !a3
  !instr,!instr07
  db 72,$77
  !a2
  !tie
  db 72,$58
  !tie
  !instr,!instr05
  db 9,$59
  !g3
  db 27,$09
  !g3
  db 9,$59
  !g3
  !g3
  db 18
  !g3
  !end

.pattern4_3
  !instr,!instr29
  !volume,93
  !dynamicVolume,30,180
  db 36,$69
  !a6
  db 27,$66
  !cs6
  db 9,$7A
  !d6
  db 54,$66
  !e6
  db 9,$7A
  !cs6
  !d6
  db 36,$66
  !e6
  db 27
  !cs6
  db 9,$7A
  !d6
  db 36,$66
  !cs6
  db 18
  !b5
  db 9,$7A
  !a5
  !b5
  db 36,$66
  !cs6
  db 27
  !e6
  db 9,$7A
  !cs6
  db 36,$66
  !cs6
  !b5
  db 72
  !a5
  !a5
  db 72,$76
  !a5
  !tie
  db 72,$68
  !tie
  !instr,!instr2B
  db 9,$66
  !d6
  db 27,$06
  !d6
  db 9,$66
  !d6
  !d6
  db 18,$76
  !d6
  !end

.pattern4_4
  !instr,!instr29
  !volume,93
  !dynamicVolume,30,180
  !subtranspose,0
  db 36,$69
  !cs6
  db 27,$66
  !a5
  db 9,$7A
  !a5
  db 54,$66
  !cs6
  db 9,$7A
  !a5
  !b5
  db 36,$66
  !cs6
  db 27
  !a5
  db 9,$7A
  !a5
  db 36,$66
  !a5
  db 18
  !f5
  db 9,$7A
  !f5
  !f5
  db 36,$66
  !a5
  db 27
  !cs6
  db 9,$7A
  !a5
  db 36,$66
  !gs5
  !gs5
  db 72
  !fs5
  db 72,$64
  !f5
  !instr,!instr2B
  !volume,93
  !dynamicVolume,72,180
  db 72,$77
  !d5
  !volume,93
  !dynamicVolume,72,180
  !b4
  !volume,93
  !dynamicVolume,72,180
  !cs5
  !instr,!instr2B
  db 9,$66
  !a5
  db 27,$06
  !a5
  db 9,$66
  !a5
  !a5
  db 18,$76
  !a5
  !end

.pattern4_5
  db 9,$56
  !e6
  !a6
  !e6
  !a6
  !cs6
  !e6
  !cs6
  !e6
  !a5
  !cs6
  !a5
  !cs6
  !a5
  !cs6
  !a5
  !cs6
  !a5
  !cs6
  !a5
  !cs6
  !a5
  !cs6
  !a5
  !cs6
  !b5
  !d6
  !b5
  !d6
  !b5
  !d6
  !b5
  !d6
  !cs6
  !e6
  !cs6
  !e6
  !cs6
  !e6
  !cs6
  !e6
  !b5
  !d6
  !b5
  !d6
  !gs5
  !d6
  !gs5
  !d6
  !fs5
  !a5
  !d6
  !a5
  !fs5
  !a5
  !d6
  !a5
  !f5
  !a5
  !d6
  !a5
  !f5
  !a5
  !d6
  !a5
  !instr,!instr29
  !volume,180
  !subtranspose,0
  db 72,$76
  !e5
  !tie
  db 72,$68
  !tie
  !instr,!instr2B
  db 9,$66
  !f5
  db 27,$06
  !f5
  db 9,$66
  !f5
  !f5
  db 18,$76
  !f5
  !end

.pattern5_0
  !loop : dw .sub581E : db 3
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,12
  !instr,!instr2F
  db 24,$75
  !c7
  db 25
  !c7
  db 23
  !c7
  !end

.pattern5_1
  !loop : dw .sub5788 : db 3
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 24,$79
  %percNote(!instr30-!instr2C)
  db 25
  %percNote(!instr30-!instr2C)
  db 23
  %percNote(!instr30-!instr2C)
  !end

.pattern5_2
  db 18,$76
  !d3
  db 9,$75
  !d4
  !a3
  db 18,$76
  !d3
  db 9,$75
  !d4
  !a3
  db 18,$76
  !e3
  db 9,$74
  !e4
  !b3
  db 18,$76
  !e3
  db 9,$74
  !e4
  !b3
  db 18,$76
  !f3
  db 9,$74
  !f4
  !c4
  db 18,$76
  !f3
  db 9,$74
  !f4
  !c4
  db 18,$76
  !e3
  db 9,$74
  !e4
  !b3
  db 18,$76
  !e3
  db 9,$74
  !e4
  !b3
  db 18,$76
  !d3
  db 9,$75
  !d4
  !a3
  db 18,$76
  !d3
  db 9,$75
  !d4
  !a3
  db 18,$76
  !e3
  db 9,$74
  !e4
  !b3
  db 18,$76
  !e3
  db 9,$74
  !e4
  !b3
  db 18,$76
  !f3
  db 9,$74
  !f4
  !c4
  db 18,$76
  !f3
  db 9,$74
  !f4
  db 9,$77
  !f3
  db 24,$18
  !g3
  db 25
  !g3
  db 23
  !g3
  !end

.pattern5_3
  !pan,8
  !instr,!instr01
  !volume,180
  db 36,$77
  !f4
  db 27,$76
  !f4
  db 9
  !f4
  db 36,$77
  !g4
  db 27
  !g4
  db 9
  !g4
  db 36
  !a4
  db 27,$76
  !a4
  db 9
  !a4
  db 36
  !g4
  db 27
  !g4
  db 9
  !g4
  db 36,$77
  !f4
  db 27,$76
  !f4
  db 9
  !f4
  db 36,$77
  !g4
  db 27
  !g4
  db 9
  !g4
  db 36
  !a4
  db 27
  !a4
  db 9
  !a4
  db 24,$17
  !b4
  db 25
  !b4
  db 23
  !b4
  !end

.pattern5_4
  !pan,12
  !instr,!instr01
  !volume,185
  db 36,$77
  !a4
  db 27,$76
  !a4
  db 9,$77
  !a4
  db 36
  !b4
  db 27
  !b4
  db 9,$78
  !b4
  db 36,$77
  !c5
  db 27,$76
  !c5
  db 9,$77
  !c5
  db 36,$76
  !b4
  db 27
  !b4
  db 9,$77
  !b4
  db 36
  !a4
  db 27,$76
  !a4
  db 9,$77
  !a4
  db 36
  !b4
  db 27
  !b4
  db 9,$78
  !b4
  db 36,$77
  !c5
  db 27
  !c5
  db 9,$78
  !c5
  db 24,$17
  !d5
  db 25
  !d5
  db 23
  !d5
  !end

.pattern5_5
  !pan,10
  !instr,!instr01
  !volume,180
  db 36,$77
  !d5
  db 27,$76
  !c5
  db 9
  !d5
  db 36,$77
  !e5
  db 27
  !d5
  db 9
  !e5
  db 36
  !f5
  db 27,$76
  !e5
  db 9
  !f5
  db 36
  !e5
  db 27
  !d5
  db 9
  !e5
  db 36,$77
  !d5
  db 27,$76
  !c5
  db 9
  !d5
  db 36,$77
  !e5
  db 27
  !d5
  db 9
  !e5
  db 36
  !f5
  db 27
  !e5
  db 9
  !f5
  db 24,$17
  !g5
  db 25
  !g5
  db 23
  !g5
  !end

.sub575F
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,12
  db 36,$76
  !c7
  !pan,8
  db 9,$75
  !g6
  db 9,$73
  !g6
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr2F
  !pan,12
  db 36,$76
  !c7
  !pan,8
  db 9,$75
  !g6
  db 9,$73
  !g6
  !end

.sub5788
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$79
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  db 9,$75
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr30-!instr2C)
  !end

.sub57B9
  db 18,$57
  !d3
  db 18,$56
  !d4
  db 18,$57
  !d3
  db 18,$56
  !d4
  db 18,$57
  !g2
  !g3
  !g2
  !g3
  !c3
  db 18,$56
  !c4
  db 18,$57
  !b2
  !b3
  !a2
  !a3
  !a2
  !a3
  !end

.sub57D8
  db 9,$56
  !d6
  !f6
  !c7
  !f6
  !d6
  !f6
  !c7
  !f6
  !d6
  !f6
  !b6
  !f6
  !d6
  !f6
  !b6
  !f6
  !c6
  !e6
  !g6
  !e6
  !c6
  !e6
  !g6
  !e6
  !a5
  !c6
  !e6
  !c6
  !a5
  !c6
  !e6
  !c6
  !end

.sub57FB
  db 9,$56
  !a5
  !d6
  !a6
  !d6
  !a5
  !d6
  !a6
  !d6
  !b5
  !d6
  !g6
  !d6
  !b5
  !d6
  !g6
  !d6
  !g5
  !c6
  !e6
  !c6
  !g5
  !c6
  !e6
  !c6
  !e5
  !a5
  !c6
  !a5
  !e5
  !a5
  !c6
  !a5
  !end

.sub581E
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
