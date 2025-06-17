asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr06 = $17
!instr07 = $18
!instr0B = $19
!instr1A = $1A
!instr1D = $1B
!instr1F = $1C
!instr22 = $1D
!instr23 = $1E
!instr26 = $1F
!instr2B = $20
!instr2C = $21
!instr2D = $22
!instr2E = $23
!instr30 = $24

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr06,$BF,$D4,$B8,$0F,$00
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr1A,$88,$87,$B8,$03,$C0
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr1F,$88,$87,$B8,$03,$00
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+1098
  dw Sample06_07,Sample06_07+558
  dw Sample06_07,Sample06_07+558
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1F_20,Sample1F_20+27
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample26,Sample26+27
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample1F_20: incbin "Sample_dba4d6f4dab80fdde9fe7792a812ef02.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
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
  dw .pattern2
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern2
  dw .pattern8
  dw .pattern9
  dw .pattern2
  dw .pattern5
  dw .pattern6
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern1_1, .pattern7_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern8: dw .pattern3_0, .pattern3_1, .pattern8_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern9: dw .pattern4_0, .pattern4_1, .pattern9_2, .pattern4_3, .pattern4_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !musicVolume,255
  !tempo,51
  !echo,%00011100,25,25
  !echoParameters,4,196,0
  !loop : dw .sub5CE8 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 17,$16
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !dynamicEcho,34,21,21
  !instr,!instr2E
  !pan,11
  db 9,$75
  !d5
  db 8
  !d5
  !pan,8
  db 9
  !a4
  !pan,12
  db 8
  !e4
  !end

.pattern0_1
  !volume,230
  !instr,!instr07
  db 9,$56
  !gs3
  db 8
  !gs3
  db 9,$53
  !gs4
  db 8,$56
  !gs3
  db 9
  !gs3
  db 8
  !gs3
  db 9,$53
  !gs4
  db 8,$56
  !gs3
  db 9
  !g3
  db 8
  !g3
  db 9,$53
  !g4
  db 8,$56
  !g3
  db 9
  !g3
  db 8
  !g3
  db 9,$53
  !g4
  db 8,$56
  !g3
  db 9
  !f3
  db 8
  !f3
  db 9,$54
  !f4
  db 8,$56
  !f3
  db 9
  !f3
  db 8
  !f3
  db 9,$54
  !f4
  db 8,$56
  !f3
  db 9
  !g3
  db 8
  !g3
  db 9,$53
  !g4
  db 8,$56
  !g3
  db 9
  !g3
  db 8
  !g3
  db 9,$53
  !g4
  db 8,$56
  !g3
  db 9
  !gs3
  db 8
  !gs3
  db 9,$54
  !gs4
  db 8,$56
  !gs3
  db 9
  !gs3
  db 8
  !gs3
  db 9,$54
  !gs4
  db 8,$56
  !gs3
  db 9
  !g3
  db 8
  !g3
  db 9,$53
  !g4
  db 8,$56
  !g3
  db 9
  !g3
  db 8
  !g3
  db 9,$53
  !g4
  db 8,$56
  !g3
  db 9
  !d3
  db 8
  !d3
  db 9,$55
  !d4
  db 8,$56
  !d3
  db 9
  !d3
  db 8
  !d3
  db 9,$55
  !d4
  db 8,$56
  !d3
  db 17,$07
  !g3
  db 51
  !rest
  !end

.pattern0_2
  db 68
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !instr,!instr1D
  !volume,170
  !pan,10
  !subtranspose,58
  db 17,$09
  !g6
  db 51
  !rest
  !end

.pattern0_3
  !instr,!instr1D
  !volume,175
  !subtranspose,58
  !pan,12
  db 9,$76
  !ds6
  db 8
  !c6
  db 9
  !gs5
  db 8
  !f5
  db 9
  !ds5
  db 8
  !f5
  db 9
  !gs5
  db 8
  !c6
  db 9
  !d6
  db 8
  !as5
  db 9
  !g5
  db 8
  !f5
  db 9
  !d5
  db 8
  !f5
  db 9
  !g5
  db 8
  !as5
  db 9
  !c6
  db 8
  !gs5
  db 9
  !f5
  db 8
  !ds5
  db 9
  !c5
  db 8
  !ds5
  db 9
  !f5
  db 8
  !gs5
  db 9
  !d6
  db 8
  !as5
  db 9
  !g5
  db 8
  !f5
  db 9
  !d5
  db 8
  !f5
  db 9
  !g5
  db 8
  !as5
  db 9
  !c6
  db 8
  !gs5
  db 9
  !f5
  db 8
  !ds5
  db 9
  !c6
  db 8
  !gs5
  db 9
  !f5
  db 8
  !ds5
  db 9
  !as5
  db 8
  !g5
  db 9
  !f5
  db 8
  !d5
  db 9
  !as5
  db 8
  !g5
  db 9
  !f5
  db 8
  !d5
  db 9
  !a5
  db 8
  !f5
  db 9
  !d5
  db 8
  !a4
  db 9
  !a5
  db 8
  !f5
  db 9
  !d5
  db 8
  !a4
  db 17,$06
  !b5
  db 51
  !rest
  !end

.pattern0_4
  !instr,!instr1D
  !volume,175
  !subtranspose,58
  !pan,8
  db 9,$76
  !g6
  db 8
  !ds6
  db 9
  !c6
  db 8
  !gs5
  db 9
  !g5
  db 8
  !gs5
  db 9
  !c6
  db 8
  !ds6
  db 9
  !f6
  db 8
  !d6
  db 9
  !as5
  db 8
  !a5
  db 9
  !f5
  db 8
  !a5
  db 9
  !as5
  db 8
  !d6
  db 9
  !ds6
  db 8
  !c6
  db 9
  !gs5
  db 8
  !g5
  db 9
  !ds5
  db 8
  !g5
  db 9
  !gs5
  db 8
  !c6
  db 9
  !f6
  db 8
  !d6
  db 9
  !as5
  db 8
  !a5
  db 9
  !f5
  db 8
  !a5
  db 9
  !as5
  db 8
  !d6
  db 9
  !ds6
  db 8
  !c6
  db 9
  !gs5
  db 8
  !g5
  db 9
  !ds6
  db 8
  !c6
  db 9
  !gs5
  db 8
  !g5
  db 9
  !d6
  db 8
  !as5
  db 9
  !a5
  db 8
  !f5
  db 9
  !d6
  db 8
  !as5
  db 9
  !a5
  db 8
  !f5
  db 9
  !c6
  db 8
  !a5
  db 9
  !f5
  db 8
  !d5
  db 9
  !c6
  db 8
  !a5
  db 9
  !f5
  db 8
  !d5
  db 17,$06
  !d6
  db 51
  !rest
  !end

.pattern1_0
  !musicVolume,255
  !tempo,51
  !echo,%00011100,21,21
  !echoParameters,4,196,0
  !loop : dw .sub5BA0 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 17,$16
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$74
  !d5
  !pan,12
  db 8
  !a4
  !pan,8
  db 17
  !d4
  !end

.pattern1_1
  !volume,230
  !instr,!instr07
  !loop : dw .sub5BD5 : db 1
  !end

.pattern1_2
  !endVibrato
  !transpose,0
  !subtranspose,0
  !instr,!instr26
  !volume,240
  !tremolo,0,40,120
  db 17,$06
  !c7
  db 9,$18
  !b6
  db 8
  !a6
  db 17,$06
  !g6
  db 9,$18
  !a6
  db 8
  !b6
  db 17,$06
  !c7
  db 9,$18
  !c7
  db 8
  !d7
  db 34,$05
  !e7
  db 17,$06
  !d7
  db 9,$16
  !d7
  db 8,$18
  !e7
  db 17,$06
  !f7
  db 9,$18
  !e7
  db 8
  !d7
  db 17,$06
  !c7
  !e7
  db 34,$05
  !g6
  db 17,$06
  !c7
  db 9,$18
  !b6
  db 8
  !a6
  db 17,$06
  !g6
  db 9,$18
  !a6
  db 8
  !b6
  db 17,$06
  !c7
  db 9,$18
  !c7
  db 8
  !d7
  db 34,$05
  !e7
  db 9,$1B
  !d7
  db 8,$18
  !d7
  db 9
  !d7
  db 8
  !e7
  db 9,$19
  !g7
  db 8,$18
  !g7
  db 9
  !e7
  db 8
  !d7
  db 17,$06
  !c7
  !e7
  db 34
  !c7
  !end

.pattern1_3
  !subtranspose,0
  !instr,!instr0B
  !volume,140
  !pan,12
  !loop : dw .sub5C26 : db 1
  db 9,$46
  !d6
  db 8
  !f5
  db 9
  !a5
  db 8
  !c6
  db 9
  !d6
  db 8
  !d5
  db 9
  !b5
  db 8,$06
  !d6
  db 17,$46
  !g5
  db 17,$06
  !c6
  !g5
  !rest
  !end

.pattern1_4
  !subtranspose,0
  !instr,!instr0B
  !volume,140
  !pan,8
  !loop : dw .sub5C87 : db 1
  db 9,$46
  !f6
  db 8
  !a5
  db 9
  !c6
  db 8
  !f6
  db 9
  !g6
  db 8
  !g5
  db 9
  !d6
  db 8
  !g6
  db 17,$06
  !e6
  !g6
  !e6
  !rest
  !end

.pattern2_0
  !loop : dw .sub5CE8 : db 3
  !end

.pattern2_1
  !instr,!instr06
  db 17,$56
  !f3
  db 9
  !f3
  db 8
  !f3
  db 17
  !f3
  db 9,$53
  !f4
  db 8,$54
  !c4
  db 17,$56
  !e3
  db 9
  !e3
  db 8
  !e3
  db 17
  !e3
  db 9,$53
  !e4
  db 8,$54
  !b3
  db 17,$56
  !d3
  db 9
  !d3
  db 8
  !d3
  db 17
  !d3
  db 9,$53
  !d4
  db 8,$56
  !a3
  db 17
  !c3
  db 9
  !c3
  db 8
  !c3
  db 9
  !c3
  db 8
  !c3
  db 9
  !d3
  db 8
  !e3
  db 17
  !f3
  db 9
  !f3
  db 8
  !f3
  db 17
  !f3
  db 9,$53
  !f4
  db 8,$54
  !c4
  db 17,$56
  !e3
  db 9
  !e3
  db 8
  !e3
  db 9
  !e3
  db 8
  !e3
  db 9,$53
  !e4
  db 8,$54
  !b3
  !end

.pattern2_2
  !subtranspose,0
  !endVibrato
  !endTremolo
  !pan,8
  !volume,150
  !instr,!instr2B
  db 9,$36
  !f5
  db 8
  !c5
  db 9
  !a4
  db 8
  !c5
  db 9
  !f5
  db 8
  !c5
  db 9
  !d5
  db 8
  !c5
  db 9
  !e5
  db 8
  !b4
  db 9
  !g4
  db 8
  !b4
  db 9
  !e5
  db 8
  !b4
  db 9,$35
  !g5
  db 8
  !fs5
  db 9,$36
  !d5
  db 8
  !a4
  db 9
  !f4
  db 8
  !a4
  db 9
  !d5
  db 8
  !a4
  db 9
  !f5
  db 8
  !d5
  db 9
  !c5
  db 8
  !g4
  db 9
  !c5
  db 8
  !g4
  db 9
  !e5
  db 8
  !as4
  db 9
  !g5
  db 8
  !e5
  db 9
  !f5
  db 8
  !c5
  db 9
  !a4
  db 8
  !c5
  db 9
  !f5
  db 8
  !c5
  db 9
  !d5
  db 8
  !c5
  db 9
  !e5
  db 8
  !b4
  db 9
  !g4
  db 8
  !b4
  db 9
  !e5
  db 8
  !b4
  db 9,$35
  !g5
  db 8
  !fs5
  !end

.pattern2_3
  !instr,!instr22
  !volume,155
  !pan,12
  db 26,$46
  !g6
  db 8
  !a6
  db 17,$06
  !a6
  db 9,$46
  !g6
  db 8
  !f6
  db 17,$06
  !d6
  !e6
  db 34,$46
  !d6
  db 17,$06
  !c6
  db 9,$46
  !d6
  db 8,$45
  !e6
  db 17,$46
  !f6
  db 9
  !d6
  db 8,$45
  !c6
  db 9,$48
  !c6
  db 8,$45
  !b5
  db 9,$48
  !c6
  db 8,$45
  !d6
  db 34,$46
  !e6
  db 17,$06
  !a6
  db 9,$46
  !a6
  db 8,$45
  !b6
  db 17,$46
  !c7
  db 9
  !b6
  db 8,$45
  !a6
  db 9,$48
  !g6
  db 8,$45
  !e6
  db 9,$48
  !g6
  db 8,$45
  !a6
  db 17,$46
  !b6
  !d6
  !end

.pattern2_4
  !instr,!instr22
  !volume,190
  !pan,10
  db 26,$46
  !c7
  db 8,$56
  !c7
  db 17,$06
  !c7
  db 9,$56
  !b6
  db 8
  !a6
  db 17,$06
  !g6
  !a6
  db 34,$46
  !g6
  db 17,$06
  !f6
  db 9,$56
  !f6
  db 8,$55
  !g6
  db 17,$46
  !a6
  db 9,$56
  !g6
  db 8,$55
  !f6
  db 9,$58
  !e6
  db 8,$55
  !d6
  db 9,$58
  !e6
  db 8,$55
  !f6
  db 34,$46
  !g6
  db 17,$06
  !c7
  db 9,$56
  !c7
  db 8,$55
  !d7
  db 17,$46
  !e7
  db 9,$56
  !d7
  db 8,$55
  !c7
  db 9,$58
  !b6
  db 8,$55
  !a6
  db 9,$58
  !b6
  db 8,$55
  !c7
  db 17,$46
  !d7
  !g6
  !end

.pattern3_0
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 8
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 8,$72
  %percNote(!instr30-!instr2C)
  db 51,$76
  %percNote(!instr30-!instr2C)
  db 9,$70
  %percNote(!instr30-!instr2C)
  db 8,$72
  %percNote(!instr30-!instr2C)
  !end

.pattern3_1
  db 9,$56
  !gs3
  db 8
  !gs3
  db 9,$53
  !gs4
  db 8,$56
  !gs3
  db 9
  !gs3
  db 8
  !gs3
  db 9,$53
  !gs4
  db 8,$56
  !gs3
  db 17,$06
  !d3
  !rest
  !g2
  !rest
  !end

.pattern3_2
  db 9,$36
  !ds5
  db 8
  !c5
  db 9
  !gs4
  db 8
  !c5
  db 9
  !ds5
  db 8
  !c5
  db 9
  !ds5
  db 8
  !c5
  !instr,!instr22
  !volume,140
  db 17,$06
  !f6
  !pan,10
  !instr,!instr0B
  !volume,185
  db 17,$04
  !g7
  db 17,$08
  !g6
  !instr,!instr1F
  !volume,140
  db 17,$79
  !g6
  !end

.pattern3_3
  db 17,$06
  !gs6
  db 9,$46
  !gs6
  db 8
  !f6
  db 17
  !ds6
  !f6
  db 17,$06
  !d6
  !rest
  !instr,!instr0B
  !volume,120
  db 34
  !b5
  !end

.pattern3_4
  db 17,$06
  !c7
  db 9,$56
  !c7
  db 8
  !as6
  db 17,$46
  !gs6
  !as6
  db 17,$16
  !g6
  !rest
  !instr,!instr0B
  !volume,120
  !pan,8
  db 34,$06
  !d6
  !end

.pattern4_0
  !loop : dw .sub5BA0 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 17,$16
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$74
  !d5
  !pan,12
  db 8
  !a4
  !pan,8
  db 17
  !d4
  !end

.pattern4_1
  !instr,!instr07
  !loop : dw .sub5BD5 : db 1
  !end

.pattern4_2
  !vibrato,8,14,20
  !instr,!instr1F
  !volume,135
  db 17,$76
  !c7
  db 9,$7D
  !b6
  db 8
  !a6
  db 17,$76
  !g6
  db 9,$7D
  !a6
  db 8
  !b6
  db 17,$76
  !c7
  db 9,$7D
  !c7
  db 8
  !d7
  db 34,$74
  !e7
  db 26,$75
  !d7
  db 8,$7D
  !e7
  db 17,$73
  !f7
  db 9,$7D
  !e7
  db 8
  !d7
  db 17,$76
  !c7
  db 17,$74
  !e7
  db 34,$76
  !g6
  db 17
  !c7
  db 9,$7D
  !b6
  db 8
  !a6
  db 17,$76
  !g6
  db 9,$7D
  !a6
  db 8
  !b6
  db 17,$76
  !c7
  db 9,$7D
  !c7
  db 8
  !d7
  db 34,$74
  !e7
  db 26,$75
  !d7
  db 8,$7D
  !e7
  db 17,$72
  !g7
  db 9,$7D
  !e7
  db 8
  !d7
  db 17,$76
  !c7
  db 17,$75
  !e7
  db 34,$76
  !c7
  !end

.pattern4_3
  !instr,!instr0B
  !volume,140
  !pan,12
  !loop : dw .sub5C26 : db 1
  db 9,$43
  !d6
  db 8
  !f5
  db 9
  !a5
  db 8
  !c6
  db 9
  !d6
  db 8
  !d5
  db 9
  !b5
  db 8,$03
  !d6
  db 17,$46
  !g5
  db 17,$06
  !c6
  !g5
  !rest
  !end

.pattern4_4
  !instr,!instr0B
  !volume,140
  !pan,8
  !loop : dw .sub5C87 : db 1
  db 9,$43
  !f6
  db 8
  !a5
  db 9
  !c6
  db 8
  !f6
  db 9
  !g6
  db 8
  !g5
  db 9
  !d6
  db 8
  !g6
  db 17,$06
  !e6
  !g6
  !e6
  !rest
  !end

.pattern5_0
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 8,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 8
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  !pan,12
  db 9,$74
  !d5
  !pan,8
  db 8
  !a4
  !end

.pattern5_1
  db 9,$56
  !gs3
  db 8
  !gs3
  db 9,$53
  !gs4
  db 8,$56
  !gs3
  db 9
  !gs3
  db 8
  !gs3
  db 9,$53
  !gs4
  db 8,$56
  !gs3
  db 9
  !g3
  db 8
  !g3
  db 9,$53
  !g4
  db 8,$56
  !g3
  db 9
  !g3
  db 8
  !g3
  db 9,$53
  !g4
  db 8,$56
  !g3
  !end

.pattern5_2
  !instr,!instr22
  !volume,150
  db 17,$06
  !ds6
  db 9,$56
  !ds6
  db 8
  !c6
  db 17
  !c6
  !c6
  db 34,$76
  !c6
  !b5
  !end

.pattern5_3
  db 17,$06
  !g6
  db 9,$56
  !gs6
  db 8
  !ds6
  db 17
  !ds6
  !ds6
  db 68
  !d6
  !end

.pattern5_4
  db 17,$06
  !c7
  db 9,$56
  !c7
  db 8
  !as6
  db 17
  !gs6
  !as6
  db 30,$76
  !g6
  !dynamicEcho,36,45,45
  db 21,$48
  !tie
  !pan,10
  !subtranspose,58
  !instr,!instr1A
  !volume,170
  db 17,$79
  !g6
  !end

.pattern6_0
  !loop : dw .sub5CE8 : db 5
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 8,$74
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 6,$72
  %percNote(!instr30-!instr2C)
  db 3
  %percNote(!instr30-!instr2C)
  db 17,$16
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !dynamicEcho,34,21,21
  !instr,!instr2E
  !pan,11
  db 9,$75
  !d5
  db 8,$73
  !d5
  !pan,8
  db 9,$75
  !a4
  !pan,12
  db 8
  !e4
  !end

.pattern6_1
  db 17,$56
  !fs3
  db 9
  !fs4
  db 8
  !fs3
  db 9
  !fs3
  db 8
  !fs3
  db 9
  !fs4
  db 8
  !fs3
  db 17
  !f3
  db 9
  !f4
  db 8
  !f3
  db 9
  !f3
  db 8
  !f3
  db 9
  !f4
  db 8
  !f3
  db 17
  !d3
  db 9
  !d4
  db 8
  !d3
  db 9
  !d3
  db 8
  !d3
  db 9
  !d4
  db 8
  !d3
  db 9
  !e3
  db 8
  !e3
  db 9
  !e4
  db 8
  !e3
  db 9
  !e3
  db 8
  !e3
  db 9
  !e4
  db 8
  !e3
  db 17
  !gs3
  db 9
  !gs4
  db 8
  !gs3
  db 9
  !gs3
  db 8
  !gs3
  db 9
  !gs4
  db 8
  !gs3
  db 17
  !g3
  db 9
  !g4
  db 8
  !g3
  db 9
  !g3
  db 8
  !g3
  db 9
  !g4
  db 8
  !g3
  db 9
  !f3
  db 8
  !f3
  db 9
  !f4
  db 8
  !f3
  db 9
  !f3
  db 8
  !f3
  db 9
  !f4
  db 8
  !f3
  db 9
  !g3
  db 8
  !g3
  db 9
  !g4
  db 8
  !g3
  db 9
  !g3
  db 8
  !g3
  db 9
  !g4
  db 8
  !g3
  db 9
  !f3
  db 8
  !f3
  db 9
  !f4
  db 8
  !f3
  db 9
  !f3
  db 8
  !f3
  db 9
  !f4
  db 8
  !f3
  db 9
  !e3
  db 8
  !e3
  db 9
  !e4
  db 8
  !e3
  db 9
  !e3
  db 8
  !e3
  db 9
  !e4
  db 8
  !e3
  db 9
  !d3
  db 8
  !d3
  db 9
  !d4
  db 8
  !d3
  db 9
  !d3
  db 8
  !d3
  db 9
  !d4
  db 8
  !d3
  db 17
  !g3
  db 51
  !rest
  !end

.pattern6_2
  !transpose,12
  !instr,!instr1A
  !volume,175
  !subtranspose,58
  !pan,10
  !vibrato,9,17,50
  !slideIn,0,8,1
  db 51,$76
  !e6
  !endSlide
  db 9,$7C
  !d6
  db 8
  !e6
  db 17,$76
  !g6
  db 17,$74
  !a6
  db 17,$76
  !e6
  !d6
  !c6
  !d6
  !e6
  !c6
  !slideIn,5,1,1
  db 34
  !d6
  !endSlide
  db 17
  !g5
  !g5
  !slideIn,0,10,1
  db 51,$75
  !g6
  !endSlide
  db 9,$7C
  !f6
  db 8
  !g6
  db 17,$74
  !as6
  !endVibrato
  db 17,$73
  !c7
  !vibrato,9,17,50
  db 17,$75
  !g6
  db 17,$76
  !f6
  !ds6
  !f6
  !g6
  !ds6
  !slideIn,5,1,1
  db 34
  !f6
  !endSlide
  db 17
  !as5
  !slideIn,0,5,1
  !d6
  !endSlide
  db 68
  !c6
  !tie
  !endSlide
  !volume,100
  !dynamicVolume,42,170
  db 51,$79
  !c6
  db 9,$7C
  !d6
  db 8
  !c6
  db 17,$76
  !b5
  db 51
  !rest
  !end

.pattern6_3
  !instr,!instr2B
  !volume,145
  !pan,12
  db 9,$74
  !a5
  db 8,$76
  !fs5
  db 9
  !cs5
  db 8
  !a4
  db 9
  !fs4
  db 8
  !cs4
  db 9
  !fs4
  db 8
  !a4
  db 9,$74
  !a5
  db 8,$76
  !e5
  db 9
  !c5
  db 8
  !a4
  db 9
  !e4
  db 8
  !c4
  db 9
  !e4
  db 8
  !a4
  db 9,$75
  !f5
  db 8,$76
  !c5
  db 9
  !a4
  db 8
  !f4
  db 9
  !c4
  db 8
  !a3
  db 9
  !c4
  db 8
  !f4
  db 9,$75
  !g5
  db 8,$76
  !d5
  db 9
  !b4
  db 8
  !g4
  db 9
  !d4
  db 8
  !b3
  db 9
  !d4
  db 8
  !g4
  db 9,$75
  !g5
  db 8,$76
  !ds5
  db 9
  !c5
  db 8
  !gs4
  db 9
  !ds4
  db 8
  !c4
  db 9
  !ds4
  db 8
  !g4
  db 9,$74
  !as5
  db 8,$76
  !f5
  db 9
  !d5
  db 8
  !as4
  db 9
  !f4
  db 8
  !d4
  db 9
  !f4
  db 8
  !as4
  db 9,$75
  !gs5
  db 8,$76
  !ds5
  db 9
  !c5
  db 8
  !gs4
  db 9
  !ds4
  db 8
  !c4
  db 9
  !ds4
  db 8
  !gs4
  db 9
  !f5
  db 8
  !d5
  db 9
  !as4
  db 8
  !f4
  db 9
  !d4
  db 8
  !as3
  db 9
  !d4
  db 8
  !f4
  db 9
  !c5
  db 8
  !gs4
  db 9
  !ds4
  db 8
  !c4
  db 9
  !c5
  db 8
  !gs4
  db 9
  !ds4
  db 8
  !c4
  db 9
  !b4
  db 8
  !g4
  db 9
  !d4
  db 8
  !b3
  db 9
  !b4
  db 8
  !g4
  db 9
  !d4
  db 8
  !b3
  !instr,!instr1A
  !subtranspose,58
  !volume,95
  !dynamicVolume,42,160
  db 51,$79
  !a5
  db 9,$7C
  !b5
  db 8
  !a5
  db 17,$76
  !f5
  db 51
  !rest
  !end

.pattern6_4
  !subtranspose,0
  !instr,!instr2B
  !volume,145
  !pan,8
  db 9,$73
  !cs6
  db 8,$76
  !a5
  db 9
  !fs5
  db 8
  !cs5
  db 9
  !a4
  db 8
  !fs4
  db 9
  !a4
  db 8
  !cs5
  db 9,$73
  !c6
  db 8,$76
  !a5
  db 9
  !f5
  db 8
  !c5
  db 9
  !a4
  db 8
  !e4
  db 9
  !a4
  db 8
  !c5
  db 9,$74
  !a5
  db 8,$76
  !e5
  db 9
  !c5
  db 8
  !a4
  db 9
  !f4
  db 8
  !d4
  db 9
  !f4
  db 8
  !a4
  db 9,$74
  !b5
  db 8,$76
  !g5
  db 9
  !d5
  db 8
  !b4
  db 9
  !g4
  db 8
  !e4
  db 9
  !g4
  db 8
  !b4
  db 9,$73
  !c6
  db 8,$76
  !g5
  db 9
  !ds5
  db 8
  !c5
  db 9
  !g4
  db 8
  !ds4
  db 9
  !g4
  db 8
  !c5
  db 9,$73
  !d6
  db 8,$76
  !as5
  db 9
  !f5
  db 8
  !d5
  db 9
  !as4
  db 8
  !f4
  db 9
  !as4
  db 8
  !d5
  db 9,$73
  !c6
  db 8,$76
  !gs5
  db 9
  !ds5
  db 8
  !c5
  db 9
  !gs4
  db 8
  !f4
  db 9
  !gs4
  db 8
  !c5
  db 9,$74
  !as5
  db 8,$76
  !f5
  db 9
  !d5
  db 8
  !as4
  db 9
  !f4
  db 8
  !d4
  db 9
  !f4
  db 8
  !as4
  db 9
  !ds5
  db 8
  !c5
  db 9
  !gs4
  db 8
  !ds4
  db 9
  !ds5
  db 8
  !c5
  db 9
  !gs4
  db 8
  !ds4
  db 9
  !d5
  db 8
  !b4
  db 9
  !g4
  db 8
  !d4
  db 9
  !d5
  db 8
  !b4
  db 9
  !g4
  db 8
  !d4
  !instr,!instr1A
  !subtranspose,58
  !volume,95
  !dynamicVolume,42,160
  db 51,$79
  !f6
  db 9,$7C
  !e6
  db 8
  !f6
  db 17,$75
  !g6
  db 51
  !rest
  !end

.pattern7_0
  !echo,%00011100,21,21
  !loop : dw .sub5BA0 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 17,$16
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$74
  !d5
  !pan,12
  db 8
  !a4
  !pan,8
  db 17
  !d4
  !end

.pattern7_2
  !pan,8
  !transpose,0
  !vibrato,10,14,25
  !subtranspose,0
  !instr,!instr23
  !volume,170
  db 17,$56
  !c6
  db 9,$58
  !b5
  db 8
  !a5
  db 17,$56
  !g5
  db 9,$58
  !a5
  db 8
  !b5
  db 17,$56
  !c6
  db 9,$58
  !c6
  db 8
  !d6
  db 34,$26
  !e6
  !slideIn,0,5,1
  db 26,$56
  !d6
  !endSlide
  db 8,$58
  !e6
  db 17,$56
  !f6
  db 9,$58
  !e6
  db 8
  !d6
  db 17,$48
  !c6
  !e6
  db 34,$26
  !g5
  db 17,$56
  !c6
  db 9,$58
  !b5
  db 8
  !a5
  db 17,$56
  !g5
  db 9,$58
  !a5
  db 8
  !b5
  db 17,$56
  !c6
  db 9,$58
  !c6
  db 8
  !d6
  db 34,$26
  !e6
  !slideIn,0,4,1
  db 26,$58
  !d6
  !endSlide
  db 8
  !e6
  db 17
  !g6
  db 9
  !e6
  db 8
  !d6
  db 17,$18
  !c6
  !e6
  db 34,$28
  !c6
  !end

.pattern8_2
  db 9,$36
  !ds5
  db 8
  !c5
  db 9
  !gs4
  db 8
  !c5
  db 9
  !ds5
  db 8
  !c5
  db 9
  !ds5
  db 8
  !c5
  !instr,!instr22
  !volume,140
  db 17,$06
  !f6
  !pan,10
  !instr,!instr0B
  !volume,185
  db 17,$04
  !g7
  db 17,$08
  !g6
  !instr,!instr04
  !volume,130
  db 17,$78
  !g6
  !end

.pattern9_2
  !pan,12
  !vibrato,5,8,80
  !instr,!instr04
  !volume,130
  db 17,$57
  !c7
  db 9
  !b6
  db 8
  !a6
  db 17
  !g6
  db 9
  !a6
  db 8
  !b6
  db 17
  !c7
  db 9
  !c7
  db 8
  !d7
  db 34,$34
  !e7
  db 26,$56
  !d7
  db 8
  !e7
  db 17,$54
  !f7
  db 9,$56
  !e7
  db 8,$57
  !d7
  db 17
  !c7
  db 17,$54
  !e7
  db 34,$37
  !g6
  db 17,$57
  !c7
  db 9
  !b6
  db 8
  !a6
  db 17
  !g6
  db 9
  !a6
  db 8
  !b6
  db 17
  !c7
  db 9
  !c7
  db 8
  !d7
  db 34,$34
  !e7
  db 26,$56
  !d7
  db 8,$57
  !e7
  db 17,$53
  !g7
  db 9,$57
  !e7
  db 8
  !d7
  db 17,$18
  !c7
  db 17,$15
  !e7
  db 34,$37
  !c7
  !end

.sub5CE8
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr30-!instr2C)
  !pan,12
  db 8,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !end

.sub5BA0
  !pan,10
  db 17,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 17,$16
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 17,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 17,$16
  %percNote(!instr30-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 8,$70
  %percNote(!instr2D-!instr2C)
  !end

.sub5BD5
  db 17,$16
  !c3
  db 17,$14
  !c4
  db 17,$16
  !c3
  db 17,$14
  !c4
  db 17,$16
  !c3
  db 17,$14
  !c4
  db 17,$16
  !c3
  db 17,$14
  !c4
  db 17,$17
  !g2
  db 17,$16
  !g3
  db 17,$17
  !g2
  db 17,$16
  !g3
  !c3
  db 17,$14
  !c4
  db 17,$16
  !c3
  db 17,$14
  !c4
  db 17,$16
  !c3
  db 17,$14
  !c4
  db 17,$16
  !c3
  db 17,$14
  !c4
  db 17,$26
  !a2
  db 17,$25
  !a3
  db 17,$26
  !a2
  db 17,$25
  !a3
  db 17,$26
  !f2
  !f3
  !g2
  !g3
  !c3
  !g2
  !c3
  !rest
  !end

.sub5C26
  db 17,$08
  !c5
  db 9,$44
  !c6
  db 8
  !e6
  db 17,$08
  !e5
  db 9,$44
  !c6
  db 8
  !e6
  db 17,$08
  !c5
  db 9,$44
  !c6
  db 8
  !e6
  db 17,$08
  !e5
  db 9,$44
  !c6
  db 8
  !e6
  db 17,$08
  !d5
  db 9,$44
  !b5
  db 8
  !d6
  db 17,$08
  !b4
  db 9,$44
  !b5
  db 8
  !d6
  db 17,$08
  !c5
  db 9,$44
  !c6
  db 8
  !e6
  db 17,$08
  !e5
  db 9,$44
  !c6
  db 8
  !e6
  db 17,$08
  !e5
  db 9,$44
  !c6
  db 8
  !e6
  db 17,$08
  !c5
  db 9,$44
  !c6
  db 8
  !e6
  db 17,$08
  !e5
  db 9,$44
  !c6
  db 8
  !e6
  db 17,$08
  !c5
  db 9,$44
  !c6
  db 8
  !e6
  !end

.sub5C87
  db 17,$08
  !e5
  db 9,$44
  !e6
  db 8
  !g6
  db 17,$08
  !g5
  db 9,$44
  !e6
  db 8
  !g6
  db 17,$08
  !e5
  db 9,$44
  !e6
  db 8
  !g6
  db 17,$08
  !g5
  db 9,$44
  !e6
  db 8
  !g6
  db 17,$08
  !g5
  db 9,$44
  !d6
  db 8
  !g6
  db 17,$08
  !f5
  db 9,$44
  !d6
  db 8
  !g6
  db 17,$08
  !e5
  db 9,$44
  !e6
  db 8
  !g6
  db 17,$08
  !g5
  db 9,$44
  !e6
  db 8
  !g6
  db 17,$08
  !g5
  db 9,$44
  !e6
  db 8
  !g6
  db 17,$08
  !e5
  db 9,$44
  !e6
  db 8
  !g6
  db 17,$08
  !g5
  db 9,$44
  !e6
  db 8
  !g6
  db 17,$08
  !e5
  db 9,$44
  !e6
  db 8
  !g6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
