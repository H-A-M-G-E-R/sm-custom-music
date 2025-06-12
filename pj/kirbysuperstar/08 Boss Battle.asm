asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr06 = $18
!instr07 = $19
!instr0A = $1A
!instr0B = $1B
!instr22 = $1C
!instr23 = $1D
!instr27 = $1E
!instr2B = $1F
!instr2C = $20
!instr2D = $21
!instr2E = $22
!instr2F = $23
!instr30 = $24

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr03,$FC,$E0,$B8,$03,$80
  db !instr06,$BF,$D4,$B8,$0F,$00
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr0A,$8F,$E0,$B8,$03,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
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
  dw Sample03,Sample03+27
  dw Sample06_07,Sample06_07+558
  dw Sample06_07,Sample06_07+558
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample0A_0B,Sample0A_0B+216
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
  Sample03: incbin "Sample_55d7dd5330b8a8ef8525169d9eaa7cd3.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
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
-
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%00011011,34,34
  !echoParameters,5,60,0
  !tempo,51
  !musicVolume,255
  db 27,$78
  %percNote(!instr30-!instr2C)
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 6
  %percNote(!instr2C-!instr2C)
  db 6,$73
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$77
  !as4
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !instr,!instr30
  db 9,$77
  !as4
  db 4,$71
  !as4
  db 5,$72
  !as4
  db 9,$77
  !as4
  db 18
  !as4
  db 9
  !as4
  !as4
  !as4
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$73
  !as4
  !end

.pattern0_1
  !volume,255
  !instr,!instr07
  !slideOut,18,18,251
  db 36,$78
  !e3
  db 18
  !rest
  !endSlide
  !instr,!instr06
  db 6
  !e3
  db 6,$76
  !e3
  !e3
  db 9,$77
  !e3
  db 18,$05
  !e4
  db 9,$77
  !e3
  db 18,$05
  !e4
  db 9,$77
  !e3
  db 9,$75
  !e4
  db 18
  !rest
  db 27,$07
  !e3
  !e3
  !e3
  db 18
  !rest
  db 9,$4B
  !e2
  db 9,$47
  !g2
  !gs2
  !loop : dw .sub58B7 : db 2
  !end

.pattern0_2
  !pan,10
  !instr,!instr01
  !volume,190
  !slideOut,20,16,241
  db 36,$77
  !e6
  !endSlide
  !instr,!instr2F
  !volume,220
  !pan,12
  db 18,$76
  !gs5
  db 6
  !gs5
  !gs5
  !gs5
  db 9
  !gs5
  !pan,8
  !d6
  !pan,12
  !gs5
  !gs5
  !pan,8
  !d6
  !gs5
  !gs5
  !gs5
  !instr,!instr2E
  db 18,$77
  !d3
  !d3
  !pan,12
  db 9
  !b3
  !pan,8
  db 18
  !d3
  db 18,$17
  !d3
  db 18,$77
  !d3
  db 9
  !d3
  !pan,11
  !ds5
  !pan,9
  !b4
  !pan,12
  !f4
  !pan,8
  !d4
  !pan,12
  !instr,!instr2E
  !d3
  db 9,$75
  !b3
  db 9,$77
  !d3
  db 9,$75
  !b3
  !pan,10
  db 18,$77
  !a3
  !pan,8
  !instr,!instr2E
  db 9,$74
  !a3
  !e3
  db 18,$77
  !a3
  !instr,!instr2F
  !pan,8
  !c7
  !pan,12
  db 9
  !g6
  db 9,$72
  !g6
  !pan,8
  !instr,!instr2E
  db 9,$74
  !a3
  db 9,$72
  !e3
  !pan,12
  !instr,!instr2E
  db 9,$77
  !d3
  db 9,$75
  !b3
  db 9,$77
  !d3
  db 9,$75
  !b3
  !pan,10
  db 18,$77
  !a3
  !pan,8
  !instr,!instr2E
  db 9,$74
  !a3
  !e3
  db 18,$77
  !a3
  !instr,!instr2F
  !pan,8
  !c7
  !pan,12
  db 9
  !g6
  db 9,$72
  !g6
  !pan,8
  !instr,!instr2E
  db 9,$74
  !a3
  db 9,$72
  !e3
  !end

.pattern0_3
  !pan,8
  !instr,!instr01
  !volume,190
  !slideOut,20,16,241
  db 36,$77
  !gs5
  !endSlide
  db 108
  !rest
  db 18
  !rest
  db 27,$07
  !d6
  !d6
  !d6
  db 18
  !rest
  db 9,$47
  !e4
  db 9,$48
  !g4
  !gs4
  db 18,$29
  !a4
  !instr,!instr0B
  !volume,115
  db 9,$46
  !e6
  !c6
  db 18
  !rest
  db 9
  !e6
  !c6
  db 18
  !rest
  db 9
  !e6
  !c6
  db 18
  !rest
  db 9
  !e6
  !c6
  db 18
  !rest
  db 9
  !e6
  !c6
  db 18
  !rest
  db 9
  !e6
  !c6
  db 18
  !rest
  db 9
  !e6
  !c6
  db 18
  !rest
  db 9
  !e6
  !c6
  !end

.pattern0_4
  !pan,12
  !instr,!instr01
  !volume,190
  !slideOut,20,16,241
  db 36,$77
  !d6
  !endSlide
  db 108
  !rest
  db 18
  !rest
  db 27,$07
  !g6
  !g6
  !g6
  db 18
  !rest
  !subtranspose,10
  db 9,$47
  !e4
  db 9,$48
  !g4
  !gs4
  db 18,$29
  !a4
  !subtranspose,0
  !instr,!instr0B
  !volume,115
  db 9,$46
  !c6
  !g5
  db 18
  !rest
  db 9
  !c6
  !g5
  db 18
  !rest
  db 9
  !c6
  !g5
  db 18
  !rest
  db 9
  !c6
  !g5
  db 18
  !rest
  db 9
  !c6
  !g5
  db 18
  !rest
  db 9
  !c6
  !g5
  db 18
  !rest
  db 9
  !c6
  !g5
  db 18
  !rest
  db 9
  !c6
  !g5
  !end

.pattern1_0
  !loop : dw .sub5879 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$73
  !as4
  !end

.pattern1_1
  !pan,10
  !volume,255
  !instr,!instr06
  !loop : dw .sub58B7 : db 2
  !loop : dw .sub58CE : db 2
  !end

.pattern1_2
  !loop : dw .sub58E5 : db 4
  !end

.pattern1_3
  !instr,!instr01
  !volume,175
  !vibrato,18,20,14
  !pan,8
  db 9,$76
  !g5
  !g4
  !c5
  !e5
  db 18,$16
  !g5
  db 36,$26
  !g5
  db 9,$76
  !g5
  !g5
  db 36,$36
  !g5
  db 18,$16
  !c6
  db 6,$76
  !c6
  !c6
  !c6
  db 18,$06
  !c6
  !c6
  db 36,$46
  !b5
  !a5
  db 9,$76
  !f5
  !g5
  db 36
  !as5
  db 9,$72
  !f5
  !g5
  db 36
  !as5
  db 9,$71
  !f5
  !g5
  db 18
  !as5
  !instr,!instr27
  !volume,175
  db 9,$75
  !d5
  !e5
  db 36
  !f5
  db 9,$72
  !d5
  !e5
  db 36
  !f5
  db 9,$71
  !d5
  !e5
  db 18
  !f5
  !end

.pattern1_4
  !instr,!instr01
  !volume,175
  !vibrato,18,20,14
  !pan,12
  db 9,$76
  !c6
  !c5
  !e5
  !g5
  db 18,$16
  !c6
  db 36,$26
  !c6
  db 9,$76
  !c6
  !c6
  db 36,$36
  !d6
  db 18,$16
  !e6
  db 6,$76
  !e6
  !e6
  !e6
  db 18,$06
  !e6
  !e6
  db 36,$46
  !d6
  !c6
  db 9,$76
  !as5
  !c6
  db 36
  !d6
  db 9,$72
  !as5
  !c6
  db 36
  !d6
  db 9,$71
  !as5
  !c6
  db 18
  !d6
  !instr,!instr27
  !volume,175
  db 9,$75
  !f5
  !g5
  db 36
  !a5
  db 9,$72
  !f5
  !g5
  db 36
  !a5
  db 9,$71
  !f5
  !g5
  db 18
  !a5
  !end

.pattern2_0
  !loop : dw .sub5879 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$73
  !as4
  !end

.pattern2_1
  !pan,10
  !volume,255
  !instr,!instr06
  !loop : dw .sub58B7 : db 2
  !loop : dw .sub58CE : db 2
  !end

.pattern2_2
  !loop : dw .sub58E5 : db 4
  !end

.pattern2_3
  !instr,!instr01
  !volume,175
  !vibrato,18,20,14
  !pan,8
  db 9,$76
  !g5
  !g4
  !c5
  !e5
  db 18,$16
  !g5
  db 36,$26
  !g5
  db 9,$76
  !g5
  !g5
  db 36,$36
  !g5
  db 18,$16
  !c6
  db 6,$76
  !c6
  !c6
  !c6
  db 18,$06
  !c6
  !c6
  db 36,$46
  !b5
  !a5
  db 9,$76
  !f5
  !g5
  db 36
  !as5
  db 9,$72
  !f5
  !g5
  db 36
  !as5
  db 9,$71
  !f5
  !g5
  db 18
  !as5
  !instr,!instr27
  !volume,175
  db 9,$75
  !d5
  !e5
  db 36
  !f5
  db 9,$72
  !d5
  !e5
  db 36
  !f5
  db 9,$71
  !d5
  !e5
  db 18
  !f5
  !end

.pattern2_4
  !instr,!instr01
  !volume,175
  !vibrato,18,20,14
  !pan,12
  db 9,$76
  !c6
  !c5
  !e5
  !g5
  db 18,$16
  !c6
  db 36,$26
  !c6
  db 9,$76
  !c6
  !c6
  db 36,$36
  !d6
  db 18,$16
  !e6
  db 6,$76
  !e6
  !e6
  !e6
  db 18,$06
  !e6
  !e6
  db 36,$46
  !d6
  !c6
  db 9,$76
  !as5
  !c6
  db 36
  !d6
  db 9,$72
  !as5
  !c6
  db 36
  !d6
  db 9,$71
  !as5
  !c6
  db 18
  !d6
  !instr,!instr27
  !volume,175
  db 9,$75
  !f5
  !g5
  db 36
  !a5
  db 9,$72
  !f5
  !g5
  db 36
  !a5
  db 9,$71
  !f5
  !g5
  db 18
  !a5
  !end

.pattern3_0
  !loop : dw .sub5879 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$73
  !as4
  !end

.pattern3_1
  !loop : dw .sub591C : db 2
  !loop : dw .sub5933 : db 2
  !end

.pattern3_2
  !loop : dw .sub58E5 : db 4
  !end

.pattern3_3
  !instr,!instr23
  !volume,190
  db 9,$76
  !fs5
  !fs4
  !b4
  !ds5
  db 18,$16
  !fs5
  db 36,$26
  !fs5
  db 9,$76
  !fs5
  !fs5
  db 36,$36
  !fs5
  db 18,$16
  !b5
  db 6,$76
  !b5
  !b5
  !b5
  db 18,$06
  !b5
  !b5
  db 36,$46
  !as5
  !gs5
  db 9,$76
  !e5
  !fs5
  db 36
  !a5
  db 9,$72
  !e5
  !fs5
  db 36
  !a5
  db 9,$71
  !e5
  !fs5
  db 18
  !a5
  !instr,!instr01
  !volume,175
  db 9,$75
  !cs5
  !ds5
  db 36
  !e5
  db 9,$72
  !cs5
  !ds5
  db 36
  !e5
  db 9,$71
  !cs5
  !ds5
  db 18
  !e5
  !end

.pattern3_4
  !instr,!instr23
  !volume,190
  db 9,$76
  !b5
  !b4
  !ds5
  !fs5
  db 18,$16
  !b5
  db 36,$26
  !b5
  db 9,$76
  !b5
  !b5
  db 36,$36
  !cs6
  db 18,$16
  !ds6
  db 6,$76
  !ds6
  !ds6
  !ds6
  db 18,$06
  !ds6
  !ds6
  db 36,$46
  !cs6
  !b5
  db 9,$76
  !a5
  !b5
  db 36
  !cs6
  db 9,$72
  !a5
  !b5
  db 36
  !cs6
  db 9,$71
  !a5
  !b5
  db 18
  !cs6
  !instr,!instr01
  !volume,175
  db 9,$75
  !e5
  !fs5
  db 36
  !gs5
  db 9,$72
  !e5
  !fs5
  db 36
  !gs5
  db 9,$71
  !e5
  !fs5
  db 18
  !gs5
  !end

.pattern4_0
  !loop : dw .sub5879 : db 2
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$73
  !as4
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$73
  !as4
  db 9,$77
  !as4
  db 18
  !as4
  db 9,$73
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$77
  !as4
  !as4
  !as4
  !as4
  !end

.pattern4_1
  !loop : dw .sub591C : db 2
  db 18,$27
  !fs2
  !fs3
  db 9,$77
  !cs3
  !e3
  db 18,$37
  !fs3
  db 9,$77
  !fs2
  !cs3
  !e3
  db 18
  !fs3
  db 9
  !e3
  !fs3
  !cs3
  db 18,$28
  !f2
  db 18,$27
  !f3
  db 9,$77
  !c3
  !ds3
  db 18,$37
  !f3
  db 9,$7B
  !e2
  db 9,$77
  !b2
  !e3
  db 18,$7B
  !e2
  db 9,$77
  !d3
  db 18
  !e3
  !end

.pattern4_2
  !loop : dw .sub58E5 : db 3
  !pan,12
  !instr,!instr2E
  db 9,$77
  !d3
  db 9,$75
  !b3
  db 9,$77
  !d3
  db 9,$75
  !b3
  !pan,10
  db 18,$77
  !a3
  !pan,8
  !instr,!instr2E
  db 9,$74
  !a3
  !e3
  !instr,!instr2F
  !pan,8
  db 18,$77
  !a6
  !pan,12
  db 9
  !c7
  !pan,8
  db 9,$72
  !f6
  !pan,9
  !instr,!instr2E
  db 9,$77
  !b4
  !pan,11
  !f4
  !pan,12
  db 9,$78
  !a3
  !pan,8
  !e3
  !end

.pattern4_3
  !vibrato,0,20,10
  !instr,!instr22
  !volume,165
  db 9,$76
  !fs5
  !fs4
  !b4
  !ds5
  db 18,$16
  !fs5
  db 36,$26
  !fs5
  db 9,$76
  !fs5
  !fs5
  db 36,$36
  !fs5
  db 18,$16
  !b5
  db 6,$76
  !b5
  !b5
  !b5
  db 18,$06
  !b5
  !b5
  db 36,$56
  !as5
  db 36,$76
  !gs5
  db 18,$16
  !cs6
  db 6,$76
  !b5
  !cs6
  !b5
  db 18,$16
  !a5
  !gs5
  db 72,$46
  !a5
  !endVibrato
  !instr,!instr0B
  !volume,145
  db 18,$06
  !c7
  !a6
  db 18,$66
  !b6
  db 18,$06
  !c7
  db 9,$77
  !d6
  !gs5
  db 9,$78
  !fs6
  db 9,$77
  !gs5
  db 9,$78
  !gs6
  !e5
  !d6
  db 9,$79
  !e5
  !end

.pattern4_4
  !vibrato,0,20,10
  !instr,!instr22
  !volume,165
  db 9,$76
  !b5
  !b4
  !ds5
  !fs5
  db 18,$16
  !b5
  db 36,$26
  !b5
  db 9,$76
  !b5
  !b5
  db 36,$36
  !cs6
  db 18,$16
  !ds6
  db 6,$76
  !ds6
  !ds6
  !ds6
  db 18,$06
  !ds6
  !ds6
  db 36,$56
  !cs6
  db 36,$76
  !b5
  db 18,$16
  !e6
  db 6,$76
  !ds6
  !e6
  !ds6
  db 18,$16
  !cs6
  !b5
  db 72,$66
  !cs6
  !endVibrato
  !instr,!instr0B
  !volume,145
  db 18,$06
  !e7
  !c7
  db 18,$66
  !d7
  db 18,$06
  !e7
  db 9,$77
  !gs6
  !b5
  db 9,$78
  !a6
  db 9,$77
  !b5
  db 9,$78
  !b6
  !gs5
  !gs6
  db 9,$79
  !gs5
  !end

.pattern5_0
  !loop : dw .sub5879 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$73
  !as4
  !end

.pattern5_1
  !pan,10
  !volume,255
  !instr,!instr06
  !loop : dw .sub58B7 : db 2
  !loop : dw .sub58CE : db 2
  !end

.pattern5_2
  !loop : dw .sub58E5 : db 4
  !end

.pattern5_3
  !instr,!instr01
  !volume,175
  !vibrato,18,20,14
  !pan,8
  db 9,$76
  !g5
  !g4
  !c5
  !e5
  db 18,$16
  !g5
  db 36,$26
  !g5
  db 9,$76
  !g5
  !g5
  db 36,$36
  !g5
  db 18,$16
  !c6
  db 6,$76
  !c6
  !c6
  !c6
  db 18,$06
  !c6
  !c6
  db 36,$46
  !b5
  !a5
  db 9,$76
  !f5
  !g5
  db 36
  !as5
  db 9,$72
  !f5
  !g5
  db 36
  !as5
  db 9,$71
  !f5
  !g5
  db 18
  !as5
  !instr,!instr27
  !volume,175
  db 9,$75
  !d5
  !e5
  db 36
  !f5
  db 9,$72
  !d5
  !e5
  db 36
  !f5
  db 9,$71
  !d5
  !e5
  db 18
  !f5
  !end

.pattern5_4
  !instr,!instr01
  !volume,175
  !vibrato,18,20,14
  !pan,12
  db 9,$76
  !c6
  !c5
  !e5
  !g5
  db 18,$16
  !c6
  db 36,$26
  !c6
  db 9,$76
  !c6
  !c6
  db 36,$36
  !d6
  db 18,$16
  !e6
  db 6,$76
  !e6
  !e6
  !e6
  db 18,$06
  !e6
  !e6
  db 36,$46
  !d6
  !c6
  db 9,$76
  !as5
  !c6
  db 36
  !d6
  db 9,$72
  !as5
  !c6
  db 36
  !d6
  db 9,$71
  !as5
  !c6
  db 18
  !d6
  !instr,!instr27
  !volume,175
  db 9,$75
  !f5
  !g5
  db 36
  !a5
  db 9,$72
  !f5
  !g5
  db 36
  !a5
  db 9,$71
  !f5
  !g5
  db 18
  !a5
  !end

.pattern6_0
  !loop : dw .sub5879 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$73
  !as4
  !end

.pattern6_1
  !loop : dw .sub58B7 : db 2
  !loop : dw .sub58CE : db 2
  !end

.pattern6_2
  !loop : dw .sub58E5 : db 4
  !end

.pattern6_3
  !instr,!instr01
  !volume,175
  !vibrato,18,20,14
  !pan,8
  db 9,$76
  !g5
  !g4
  !c5
  !e5
  db 18,$16
  !g5
  db 36,$26
  !g5
  db 9,$76
  !g5
  !g5
  db 36,$56
  !g5
  db 18,$16
  !c6
  db 6,$76
  !c6
  !c6
  !c6
  db 18,$06
  !c6
  !c6
  db 36,$56
  !b5
  db 36,$76
  !c6
  db 18,$16
  !as5
  db 6,$76
  !c6
  !d6
  !c6
  db 18,$16
  !as5
  !a5
  db 72,$46
  !as5
  !instr,!instr0A
  !volume,140
  db 9,$56
  !d5
  !e5
  db 36,$36
  !f5
  db 9,$56
  !as4
  !c5
  db 36,$36
  !d5
  db 9,$56
  !f5
  !g5
  db 18,$76
  !a5
  !end

.pattern6_4
  !instr,!instr01
  !volume,175
  !vibrato,18,20,14
  !pan,12
  db 9,$76
  !c6
  !c5
  !e5
  !g5
  db 18,$16
  !c6
  db 36,$26
  !c6
  db 9,$76
  !c6
  !c6
  db 36,$56
  !d6
  db 18,$16
  !e6
  db 6,$76
  !e6
  !e6
  !e6
  db 18,$06
  !e6
  !e6
  db 36,$56
  !d6
  db 36,$76
  !e6
  db 18,$16
  !f6
  db 6,$76
  !e6
  !f6
  !e6
  db 18,$16
  !d6
  !c6
  db 72,$46
  !d6
  !instr,!instr0A
  !volume,140
  db 9,$56
  !f5
  !g5
  db 36,$36
  !a5
  db 9,$56
  !d5
  !e5
  db 36,$36
  !f5
  db 9,$56
  !a5
  !as5
  db 18,$76
  !c6
  !end

.pattern7_0
  !loop : dw .sub5879 : db 3
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$73
  !as4
  !loop : dw .sub5879 : db 2
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$73
  !as4
  !pan,10
  !instr,!instr30
  db 27,$77
  !as4
  db 9
  !as4
  db 18
  !as4
  db 14
  !as4
  db 4,$72
  !as4
  db 18,$77
  !as4
  !as4
  db 9
  !as4
  !as4
  !as4
  !as4
  !end

.pattern7_1
  db 18,$78
  !f2
  db 18,$77
  !f3
  db 9
  !c3
  !e3
  db 18,$37
  !f3
  db 9,$78
  !f2
  db 9,$77
  !c3
  !e3
  db 18
  !f3
  db 9
  !e3
  !f3
  !c3
  db 18,$7B
  !e2
  db 18,$77
  !e3
  db 9
  !b2
  !d3
  db 18,$37
  !e3
  db 9,$7B
  !e2
  db 9,$77
  !b2
  !d3
  db 18
  !e3
  db 9
  !d3
  !e3
  !b2
  db 18,$27
  !d3
  db 18,$25
  !d4
  db 9,$77
  !a3
  db 9,$75
  !c4
  db 18,$35
  !d4
  db 9,$77
  !d3
  !a3
  db 9,$75
  !c4
  db 18
  !d4
  db 9
  !c4
  !d4
  db 9,$77
  !a3
  db 18,$27
  !e3
  db 18,$25
  !e4
  db 9,$77
  !b3
  db 9,$75
  !d4
  db 18,$35
  !e4
  db 9,$77
  !e3
  !b3
  db 9,$75
  !d4
  db 18
  !e4
  db 9,$78
  !e3
  !g3
  db 9,$79
  !g2
  !loop : dw .sub58B7 : db 3
  db 27
  !b2
  db 9
  !a3
  db 18,$37
  !b3
  db 27,$77
  !e3
  db 9
  !b3
  db 18
  !e3
  db 9
  !e3
  db 9,$75
  !d4
  db 18
  !e4
  !end

.pattern7_2
  !loop : dw .sub58E5 : db 7
  !pan,12
  !instr,!instr2E
  db 27,$77
  !e3
  db 9
  !e3
  db 18
  !e3
  !e3
  !pan,8
  !e3
  !e3
  !pan,9
  db 9,$78
  !b4
  !pan,11
  !f4
  !pan,12
  db 9,$79
  !a3
  !pan,8
  !e3
  !end

.pattern7_3
  !instr,!instr01
  !volume,175
  !vibrato,0,14,20
  db 18,$16
  !f5
  db 6,$76
  !f5
  !f5
  !f5
  db 18,$16
  !f5
  db 18,$56
  !f5
  db 18,$26
  !a4
  db 18,$16
  !f5
  db 36,$56
  !g5
  db 18,$16
  !d5
  db 9,$56
  !g4
  !b4
  db 18,$16
  !d5
  db 18,$76
  !d5
  !b3
  db 18,$26
  !d5
  db 36,$56
  !d5
  db 9
  !f5
  !f4
  !a4
  !c5
  db 18,$16
  !f5
  db 18,$56
  !f5
  db 18,$26
  !a4
  db 18,$16
  !f5
  db 36,$56
  !g5
  db 18,$16
  !d5
  db 9,$56
  !d4
  !g4
  db 18,$16
  !d5
  db 18,$76
  !d5
  db 18,$25
  !g4
  db 18,$17
  !d5
  db 36,$57
  !g5
  !slideOut,20,16,241
  db 36,$78
  !g5
  !endSlide
  !instr,!instr03
  !volume,155
  db 27,$56
  !g4
  db 9,$76
  !a4
  db 36,$66
  !c5
  !e5
  db 72
  !c5
  db 36,$56
  !b4
  db 36,$57
  !a4
  db 72,$77
  !g4
  db 72,$78
  !d4
  !vibrato,0,12,10
  !instr,!instr2B
  !volume,175
  db 24,$07
  !fs5
  db 30
  !rest
  !dynamicVolume,20,140
  db 20,$76
  !gs5
  !dynamicVolume,70,200
  db 70
  !tie
  !end

.pattern7_4
  !instr,!instr01
  !volume,175
  !vibrato,0,14,24
  db 18,$16
  !a5
  db 6,$76
  !a5
  !a5
  !a5
  db 18,$16
  !a5
  db 18,$56
  !a5
  db 18,$26
  !f4
  db 18,$16
  !a5
  db 36,$56
  !b5
  db 18,$16
  !g5
  db 9,$56
  !b4
  !d5
  db 18,$16
  !g5
  db 18,$76
  !g5
  db 18,$26
  !d4
  db 18,$16
  !g5
  db 36,$56
  !gs5
  db 9
  !a5
  !a4
  !c5
  !e5
  db 18,$16
  !a5
  db 18,$56
  !a5
  db 18,$26
  !f4
  db 18,$16
  !a5
  db 36,$56
  !b5
  db 18,$16
  !g5
  db 9,$56
  !g4
  !b4
  db 18,$16
  !g5
  db 18,$76
  !g5
  db 18,$25
  !b4
  db 18,$17
  !g5
  db 36,$57
  !b5
  !slideOut,20,16,241
  db 36,$78
  !c6
  !endSlide
  !instr,!instr03
  !volume,155
  db 27,$56
  !c5
  db 9,$76
  !d5
  db 36,$66
  !e5
  !g5
  db 72
  !e5
  db 36,$56
  !d5
  db 36,$57
  !c5
  db 72,$77
  !b4
  db 72,$78
  !g4
  !vibrato,0,12,10
  !instr,!instr2B
  !volume,175
  db 24,$07
  !a5
  db 30
  !rest
  !dynamicVolume,20,140
  db 20,$76
  !b5
  !dynamicVolume,70,200
  db 70
  !tie
  !end

.sub58B7
  db 18,$27
  !a2
  !a3
  db 9,$77
  !e3
  !g3
  db 18,$37
  !a3
  db 9,$77
  !a2
  !e3
  !g3
  db 18
  !a3
  db 9
  !g3
  !a3
  !e3
  !end

.sub5879
  !pan,10
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$77
  !as4
  !pan,12
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$73
  %percNote(!instr2C-!instr2C)
  !end

.sub58CE
  db 18,$27
  !g2
  !g3
  db 9,$77
  !d3
  !f3
  db 18,$37
  !g3
  db 9,$77
  !g2
  !d3
  !f3
  db 18
  !g3
  db 9
  !f3
  !g3
  !d3
  !end

.sub58E5
  !pan,12
  !instr,!instr2E
  db 9,$77
  !d3
  db 9,$75
  !b3
  db 9,$77
  !d3
  db 9,$75
  !b3
  !pan,10
  db 18,$77
  !a3
  !pan,8
  !instr,!instr2E
  db 9,$74
  !a3
  !e3
  db 18,$77
  !a3
  !instr,!instr2F
  !pan,8
  !c7
  !pan,12
  db 9
  !g6
  db 9,$72
  !g6
  !pan,8
  !instr,!instr2E
  db 9,$74
  !a3
  db 9,$72
  !e3
  !end

.sub591C
  db 18,$27
  !gs2
  !gs3
  db 9,$77
  !ds3
  !fs3
  db 18,$37
  !gs3
  db 9,$77
  !gs2
  !ds3
  !fs3
  db 18
  !gs3
  db 9
  !fs3
  !gs3
  !ds3
  !end

.sub5933
  db 18,$27
  !fs2
  !fs3
  db 9,$77
  !cs3
  !e3
  db 18,$37
  !fs3
  db 9,$77
  !fs2
  !cs3
  !e3
  db 18
  !fs3
  db 9
  !e3
  !fs3
  !cs3
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
