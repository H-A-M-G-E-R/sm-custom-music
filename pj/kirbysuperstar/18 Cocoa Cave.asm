asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr06 = $17
!instr07 = $18
!instr09 = $19
!instr0A = $1A
!instr1E = $1B
!instr26 = $1C
!instr2C = $1D
!instr2D = $1E
!instr2E = $1F
!instr2F = $20
!instr30 = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr06,$BF,$D4,$B8,$0F,$00
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr0A,$8F,$E0,$B8,$03,$00
  db !instr1E,$FF,$E0,$B8,$03,$C0
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample06_07,Sample06_07+558
  dw Sample06_07,Sample06_07+558
  dw Sample08_09,Sample08_09+90
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample26,Sample26+27
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
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
-
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
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

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%00011000,42,42
  !echoParameters,4,60,0
  !musicVolume,255
  !tempo,51
  !loop : dw .sub55D8 : db 1
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$77
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  !end

.pattern0_1
  !instr,!instr2F
  !volume,200
  !loop : dw .sub5535 : db 4

.pattern0_2
  !endSlide
  !volume,255
  !instr,!instr06
  !loop : dw .sub556E : db 4

.pattern0_3
  !endVibrato
  !endSlide
  !instr,!instr1E
  !volume,90
  !subtranspose,58
  !tremolo,0,18,120
  !dynamicVolume,144,165
  db 72,$78
  !as4
  !tie
  !dynamicVolume,72,185
  !tie
  !dynamicVolume,72,165
  !tie
  !dynamicVolume,144,115
  !tie
  !tie
  !dynamicVolume,72,90
  !tie
  !subtranspose,0
  !endTremolo
  !instr,!instr26
  !vibrato,0,14,241
  !volume,120
  !pan,12
  db 9,$76
  !ds6
  !f5
  !as5
  !f5
  !ds6
  !as5
  !ds6
  db 9,$75
  !gs6

.pattern0_4
  !endVibrato
  !endSlide
  !instr,!instr1E
  !volume,90
  !subtranspose,58
  !tremolo,0,18,120
  !dynamicVolume,144,160
  !pan,12
  db 72,$77
  !e5
  !tie
  !dynamicVolume,72,180
  !tie
  !dynamicVolume,72,160
  !tie
  !dynamicVolume,144,110
  !tie
  !tie
  !dynamicVolume,72,90
  !tie
  !subtranspose,0
  !endTremolo
  !instr,!instr26
  !vibrato,0,14,241
  !volume,120
  !pan,8
  db 9,$76
  !gs6
  !as5
  !ds6
  !as5
  !gs6
  !f5
  !gs6
  db 9,$75
  !cs7

.pattern1_0
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr30-!instr2C)
  db 9,$70
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !instr,!instr2F
  db 18,$74
  !g6
  db 18,$77
  %percNote(!instr2C-!instr2C)
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  !loop : dw .sub54F8 : db 3
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$77
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  !end

.pattern1_1
  !loop : dw .sub5535 : db 8

.pattern1_2
  !loop : dw .sub556E : db 4
  !loop : dw .sub5584 : db 1
  !loop : dw .sub556E : db 2

.pattern1_3
  !endVibrato
  !instr,!instr26
  !volume,140
  !loop : dw .sub55AF : db 4
  !pan,12
  db 9,$78
  !a4
  db 9,$76
  !c5
  !ds5
  !f5
  !pan,8
  db 9,$78
  !a4
  db 9,$76
  !c5
  !ds5
  !f5
  !pan,12
  db 9,$78
  !a4
  db 9,$76
  !c5
  !ds5
  !f5
  !pan,8
  db 9,$78
  !a4
  db 9,$76
  !c5
  !ds5
  !f5
  !pan,12
  db 9,$78
  !fs5
  db 9,$76
  !ds5
  !c5
  !gs4
  !pan,8
  db 9,$77
  !gs5
  db 9,$76
  !ds5
  !c5
  !gs4
  !pan,12
  db 9,$77
  !as5
  db 9,$76
  !f5
  !d5
  !as4
  !pan,8
  db 9,$77
  !d6
  db 9,$76
  !as5
  !f5
  !d5
  !pan,12
  db 9,$75
  !c6
  db 9,$76
  !as5
  !g5
  !e5
  !pan,8
  db 9,$75
  !e6
  db 9,$76
  !c6
  !as5
  !g5
  !pan,12
  db 9,$75
  !d6
  !as5
  !g5
  !e5
  !pan,8
  !e6
  !c6
  !as5
  !g5
  !pan,12
  db 9,$74
  !d6
  !as5
  db 9,$73
  !g5
  !e5
  !pan,8
  !e6
  !c6
  db 9,$72
  !as5
  db 9,$22
  !g5
  !vibrato,0,14,241
  !volume,120
  !pan,12
  db 9,$76
  !ds6
  !f5
  !as5
  !f5
  !ds6
  !as5
  !ds6
  db 9,$75
  !gs6

.pattern1_4
  !instr,!instr0A
  !vibrato,14,22,20
  !pan,10
  !volume,75
  !dynamicVolume,126,150
  db 126,$76
  !c7
  db 9,$78
  !as6
  db 9,$76
  !b6
  db 18,$18
  !c7
  db 36,$75
  !g6
  db 9
  !e6
  !f6
  db 36,$78
  !g6
  db 27,$56
  !c6
  db 9
  !c6
  !slideIn,0,4,1
  db 18,$27
  !e6
  !endSlide
  db 36,$74
  !as5
  db 18,$25
  !c6
  !dynamicVolume,50,105
  db 72,$66
  !g5
  !pitchSlide,27,45 : !g6
  !volume,150
  db 9,$48
  !g6
  !rest
  db 36,$78
  !g6
  db 9
  !g6
  db 9,$75
  !as6
  db 54,$56
  !g6
  db 9,$77
  !f6
  db 9,$75
  !e6
  !slideIn,0,7,1
  db 72,$76
  !f6
  !slideIn,0,5,1
  db 36,$66
  !ds6
  !endSlide
  !c6
  db 36,$18
  !as5
  db 36,$17
  !c6
  !d6
  !slideIn,0,5,1
  db 27,$57
  !f6
  !endSlide
  db 9,$46
  !f6
  db 9,$78
  !e6
  !f6
  db 72,$76
  !g6
  !dynamicVolume,126,80
  db 54
  !tie
  db 72
  !tie
  !instr,!instr26
  !vibrato,0,14,241
  !volume,120
  !pan,8
  db 9
  !gs6
  !as5
  !ds6
  !as5
  !gs6
  !f5
  !gs6
  db 9,$75
  !cs7

.pattern2_0
  !loop : dw .sub55D8 : db 1
  !loop : dw .sub54F8 : db 2
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$77
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  !end

.pattern2_1
  !loop : dw .sub5535 : db 8

.pattern2_2
  !loop : dw .sub556E : db 4
  !loop : dw .sub5584 : db 1
  !loop : dw .sub556E : db 2

.pattern2_3
  !endVibrato
  !instr,!instr26
  !volume,140
  !loop : dw .sub55AF : db 4
  !pan,12
  !f5
  !ds5
  !c5
  !a4
  !pan,8
  !f5
  !ds5
  !c5
  !a4
  !pan,12
  !a5
  !f5
  !ds5
  !c5
  !pan,8
  !c6
  !a5
  !f5
  !c5
  !pan,12
  db 9,$75
  !c6
  db 9,$76
  !gs5
  !ds5
  !c5
  !pan,8
  db 9,$75
  !c6
  db 9,$76
  !gs5
  !ds5
  !c5
  !pan,12
  db 9,$75
  !d6
  db 9,$76
  !as5
  !f5
  !d5
  !pan,8
  db 9,$75
  !as5
  db 9,$76
  !f5
  !d5
  !as4
  !pan,12
  db 9,$75
  !g5
  db 9,$76
  !e5
  !c5
  !g4
  !pan,8
  db 9,$75
  !c6
  db 9,$76
  !as5
  !g5
  !e5
  !pan,12
  db 9,$75
  !c6
  db 9,$76
  !g5
  !e5
  !c5
  !pan,8
  db 9,$75
  !c6
  db 9,$76
  !as5
  !g5
  !e5
  !pan,12
  db 9,$75
  !c6
  db 9,$76
  !g5
  !e5
  !c5
  !pan,8
  db 9,$75
  !c6
  db 9,$76
  !as5
  !g5
  db 9,$26
  !e5
  !volume,180
  !pan,12
  !instr,!instr2E
  db 9,$76
  !g4
  !g4
  !pan,8
  db 9,$78
  !d4
  !pan,12
  db 9,$76
  !g4
  !g4
  !pan,8
  db 9,$78
  !d4
  !pan,12
  db 9,$76
  !g4
  !pan,8
  db 9,$78
  !d4

.pattern2_4
  !pan,10
  !subtranspose,58
  !instr,!instr1E
  !vibrato,22,18,20
  !volume,90
  !dynamicVolume,126,175
  db 126,$76
  !c7
  db 9,$78
  !c7
  db 9,$76
  !d7
  db 18,$17
  !e7
  db 36,$65
  !as6
  db 18,$16
  !c7
  db 36,$66
  !g6
  !slideIn,0,6,1
  db 27
  !as6
  !endSlide
  db 9,$76
  !f6
  db 9,$78
  !e6
  db 9,$74
  !f6
  db 18,$18
  !g6
  db 30,$78
  !c6
  !dynamicVolume,20,140
  db 42
  !tie
  !volume,150
  !slideIn,0,9,1
  db 27,$75
  !e6
  !endSlide
  db 9,$76
  !c6
  db 18,$17
  !as5
  db 36,$75
  !c6
  db 18,$17
  !as5
  db 36,$75
  !c6
  !dynamicVolume,27,175
  db 27,$76
  !as5
  db 9
  !c6
  !volume,175
  !slideIn,0,5,1
  db 18,$27
  !ds6
  !endSlide
  db 36,$66
  !a5
  !slideIn,0,5,1
  db 18,$27
  !g6
  !endSlide
  db 36,$66
  !c6
  db 18,$26
  !a6
  db 18,$27
  !d6
  !slideIn,0,5,1
  db 27,$65
  !ds6
  !endSlide
  db 9,$75
  !ds6
  db 18,$17
  !f6
  db 18,$16
  !g6
  db 9,$28
  !f6
  db 9,$27
  !f6
  db 9,$28
  !f6
  db 9,$27
  !f6
  db 18,$28
  !d6
  db 18,$26
  !as5
  db 9,$48
  !c6
  db 9,$46
  !d6
  db 72,$76
  !e6
  !dynamicVolume,126,90
  db 54
  !tie
  db 72
  !tie
  !subtranspose,0
  !endVibrato
  !slideOut,1,8,247
  !instr,!instr26
  !volume,180
  !pan,8
  db 9
  !g5
  !g5
  !pan,12
  !c5
  !pan,8
  !g5
  !g5
  !pan,12
  !c5
  !pan,8
  !g5
  !pan,12
  db 9,$75
  !c5

.pattern3_0
  !loop : dw .sub55D8 : db 1
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 9,$78
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$78
  %percNote(!instr30-!instr2C)
  !end

.pattern3_1
  !loop : dw .sub5535 : db 3
  !pan,11
  db 9,$77
  !as3
  db 9,$76
  !c4
  !pan,9
  !g4
  db 9,$78
  !g3
  !pan,11
  db 9,$77
  !as3
  db 9,$76
  !c4
  !pan,9
  !g4
  db 9,$78
  !g3
  !pan,11
  db 9,$77
  !as3
  db 9,$76
  !c4
  !pan,9
  !g4
  db 9,$78
  !g3
  !pan,12
  !instr,!instr2E
  db 9,$79
  !a4
  !a4
  !pan,8
  db 9,$7A
  !e4
  !e4

.pattern3_2
  !endSlide
  !volume,255
  !instr,!instr06
  db 27,$46
  !c3
  db 9,$66
  !c3
  db 18,$54
  !c4
  db 36,$36
  !ds3
  db 18,$56
  !ds3
  db 18,$53
  !ds4
  db 18,$57
  !ds3
  db 27,$46
  !f3
  db 9,$66
  !f3
  db 18,$53
  !f4
  db 36,$35
  !g3
  db 18,$53
  !g4
  db 18,$59
  !g2
  db 18,$56
  !g3
  db 27,$46
  !c3
  db 9,$66
  !c3
  db 18,$54
  !c4
  db 36,$36
  !ds3
  db 18,$56
  !ds3
  db 18,$53
  !ds4
  db 18,$57
  !ds3
  db 27,$46
  !f3
  db 9,$66
  !f3
  db 18,$53
  !f4
  db 36,$35
  !g3
  db 18,$53
  !g4
  !instr,!instr07
  db 18,$79
  !g2
  db 18,$76
  !g3

.pattern3_3
  !instr,!instr01
  !volume,185
  !pan,9
  !vibrato,0,22,17
  !loop : dw .sub5633 : db 2

.pattern3_4
  !instr,!instr01
  !volume,185
  !pan,11
  !endSlide
  !vibrato,0,22,17
  !loop : dw .sub566B : db 2

.pattern4_0
  !echo,%00011000,34,34
  !echoParameters,5,30,2
  !loop : dw .sub55D8 : db 1
  !loop : dw .sub54F8 : db 2
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  !echo,%00011000,42,42
  !echoParameters,4,60,0
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$77
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  !end

.pattern4_1
  !instr,!instr2F
  !loop : dw .sub5535 : db 8

.pattern4_2
  !instr,!instr26
  !slideOut,5,139,252
  !volume,170
  db 18,$75
  !c5
  !dynamicVolume,126,75
  db 126
  !tie
  !loop : dw .sub56A3 : db 6
  !volume,170
  !dynamicVolume,36,110
  db 36
  !c5
  !volume,170
  !dynamicVolume,36,110
  !c5
  !volume,170
  !dynamicVolume,27,110
  db 27
  !c5
  !volume,170
  !dynamicVolume,36,110
  !c5
  !volume,170
  !dynamicVolume,18,110
  db 18
  !c5

.pattern4_3
  !endVibrato
  !instr,!instr2E
  !pan,10
  !volume,235
  db 27,$76
  !d4
  !d4
  db 90
  !b3
  !loop : dw .sub56AD : db 3
  !pan,10
  !volume,235
  !instr,!instr2E
  db 27
  !d4
  !d4
  db 18
  !b3
  !volume,150
  !pan,8
  db 9,$29
  %percNote(!instr2D-!instr2C)
  db 9,$26
  %percNote(!instr2D-!instr2C)
  db 9,$23
  %percNote(!instr2D-!instr2C)
  !pan,12
  db 9,$29
  %percNote(!instr2D-!instr2C)
  db 9,$26
  %percNote(!instr2D-!instr2C)
  db 9,$23
  %percNote(!instr2D-!instr2C)
  !pan,8
  db 9,$29
  %percNote(!instr2D-!instr2C)
  db 9,$23
  %percNote(!instr2D-!instr2C)
  !loop : dw .sub56B3 : db 2
  !pan,10
  !volume,235
  !instr,!instr2E
  db 27,$76
  !d4
  !d4
  db 18
  !b3
  !volume,190
  !pan,12
  !instr,!instr2E
  db 9
  !g4
  !g4
  !pan,8
  db 9,$78
  !d4
  !pan,12
  db 9,$76
  !g4
  !g4
  !pan,8
  db 9,$78
  !d4
  !pan,12
  db 9,$76
  !g4
  !pan,8
  db 9,$78
  !d4

.pattern4_4
  !endVibrato
  !pan,10
  !instr,!instr09
  !volume,100
  !transpose,12
  !slideOut,0,4,236
  !loop : dw .sub56E0 : db 4
  !loop : dw .sub570F : db 3
  !pan,8
  db 9,$09
  !g7
  db 9,$06
  !g7
  !e7
  !pan,12
  db 9,$09
  !g7
  db 9,$06
  !g7
  !e7
  !pan,8
  db 9,$09
  !g7
  db 9,$06
  !e7
  !transpose,0
  !slideOut,1,8,247
  !instr,!instr26
  !volume,185
  !pan,8
  db 9,$76
  !g5
  !g5
  !pan,12
  !c5
  !pan,8
  !g5
  !g5
  !pan,12
  !c5
  !pan,8
  !g5
  !pan,12
  db 9,$75
  !c5

.pattern5_0
  !loop : dw .sub55D8 : db 1
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 9,$78
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$78
  %percNote(!instr30-!instr2C)
  !end

.pattern5_1
  !loop : dw .sub5535 : db 3
  !pan,11
  db 9,$77
  !as3
  db 9,$76
  !c4
  !pan,9
  !g4
  db 9,$78
  !g3
  !pan,11
  db 9,$77
  !as3
  db 9,$76
  !c4
  !pan,9
  !g4
  db 9,$78
  !g3
  !pan,11
  db 9,$77
  !as3
  db 9,$76
  !c4
  !pan,9
  !g4
  db 9,$78
  !g3
  !pan,12
  !instr,!instr2E
  db 9,$79
  !a4
  !a4
  !pan,8
  db 9,$7A
  !e4
  !e4

.pattern5_2
  !endSlide
  !volume,255
  !instr,!instr06
  db 27,$46
  !c3
  db 9,$66
  !c3
  db 18,$54
  !c4
  db 36,$36
  !ds3
  db 18,$56
  !ds3
  db 18,$53
  !ds4
  db 18,$57
  !ds3
  db 27,$46
  !f3
  db 9,$66
  !f3
  db 18,$53
  !f4
  db 36,$35
  !g3
  db 18,$53
  !g4
  db 18,$59
  !g2
  db 18,$56
  !g3
  db 27,$46
  !c3
  db 9,$66
  !c3
  db 18,$54
  !c4
  db 36,$36
  !ds3
  db 18,$56
  !ds3
  db 18,$53
  !ds4
  db 18,$57
  !ds3
  db 27,$46
  !f3
  db 9,$66
  !f3
  db 18,$53
  !f4
  db 36,$35
  !g3
  db 18,$53
  !g4
  !instr,!instr07
  db 18,$79
  !g2
  db 18,$76
  !g3

.pattern5_3
  !instr,!instr01
  !volume,185
  !pan,9
  !vibrato,0,22,17
  !loop : dw .sub5633 : db 2

.pattern5_4
  !instr,!instr01
  !volume,185
  !pan,11
  !endSlide
  !vibrato,0,22,17
  !loop : dw .sub566B : db 2

.pattern6_0
  !echo,%00011000,34,34
  !echoParameters,5,30,2
  !loop : dw .sub55D8 : db 1
  !loop : dw .sub54F8 : db 2
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  !echo,%00011000,42,42
  !echoParameters,4,60,0
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$77
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  !end

.pattern6_1
  !instr,!instr2F
  !loop : dw .sub5535 : db 8

.pattern6_2
  !instr,!instr26
  !slideOut,5,139,252
  !volume,170
  db 18,$75
  !c5
  !dynamicVolume,126,75
  db 126
  !tie
  !loop : dw .sub56A3 : db 6
  !volume,170
  !dynamicVolume,36,110
  db 36
  !c5
  !volume,170
  !dynamicVolume,36,110
  !c5
  !volume,170
  !dynamicVolume,27,110
  db 27
  !c5
  !volume,170
  !dynamicVolume,36,110
  !c5
  !volume,170
  !dynamicVolume,18,110
  db 18
  !c5

.pattern6_3
  !endVibrato
  !instr,!instr2E
  !pan,10
  !volume,235
  db 27,$76
  !d4
  !d4
  db 90
  !b3
  !loop : dw .sub56AD : db 3
  !pan,10
  !volume,235
  !instr,!instr2E
  db 27
  !d4
  !d4
  db 18
  !b3
  !volume,150
  !pan,8
  db 9,$29
  %percNote(!instr2D-!instr2C)
  db 9,$26
  %percNote(!instr2D-!instr2C)
  db 9,$23
  %percNote(!instr2D-!instr2C)
  !pan,12
  db 9,$29
  %percNote(!instr2D-!instr2C)
  db 9,$26
  %percNote(!instr2D-!instr2C)
  db 9,$23
  %percNote(!instr2D-!instr2C)
  !pan,8
  db 9,$29
  %percNote(!instr2D-!instr2C)
  db 9,$23
  %percNote(!instr2D-!instr2C)
  !loop : dw .sub56B3 : db 2
  !pan,10
  !volume,235
  !instr,!instr2E
  db 27,$76
  !d4
  !d4
  db 18
  !b3
  !volume,190
  !pan,12
  !instr,!instr2E
  db 9
  !g4
  !g4
  !pan,8
  db 9,$78
  !d4
  !pan,12
  db 9,$76
  !g4
  !g4
  !pan,8
  db 9,$78
  !d4
  !pan,12
  db 9,$76
  !g4
  !pan,8
  db 9,$78
  !d4

.pattern6_4
  !endVibrato
  !pan,10
  !instr,!instr09
  !volume,100
  !transpose,12
  !slideOut,0,4,236
  !loop : dw .sub56E0 : db 4
  !loop : dw .sub570F : db 3
  !pan,8
  db 9,$09
  !g7
  db 9,$06
  !g7
  !e7
  !pan,12
  db 9,$09
  !g7
  db 9,$06
  !g7
  !e7
  !pan,8
  db 9,$09
  !g7
  db 9,$06
  !e7
  !transpose,0
  !slideOut,1,8,247
  !instr,!instr26
  !volume,185
  !pan,8
  db 9,$76
  !g5
  !g5
  !pan,12
  !c5
  !pan,8
  !g5
  !g5
  !pan,12
  !c5
  !pan,8
  !g5
  !pan,12
  db 9,$75
  !c5

.sub55D8
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr30-!instr2C)
  db 9,$70
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !instr,!instr2F
  db 18,$74
  !g6
  db 18,$77
  %percNote(!instr2C-!instr2C)
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$77
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr30-!instr2C)
  db 9,$70
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !instr,!instr2F
  db 18,$74
  !g6
  db 18,$77
  %percNote(!instr2C-!instr2C)
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  !end

.sub5535
  !pan,11
  db 9,$77
  !as3
  db 9,$76
  !c4
  !pan,9
  !g4
  db 9,$78
  !g3
  !pan,11
  db 9,$77
  !as3
  db 9,$76
  !c4
  !pan,9
  !g4
  db 9,$78
  !g3
  !pan,11
  db 9,$77
  !as3
  db 9,$76
  !c4
  !pan,9
  !g4
  db 9,$78
  !g3
  !pan,11
  db 9,$77
  !as3
  db 9,$76
  !c4
  !pan,9
  !g4
  db 9,$78
  !g3
  !end

.sub556E
  db 27,$46
  !c3
  db 9,$66
  !c3
  db 18,$55
  !as3
  db 36,$36
  !c3
  db 18,$56
  !c3
  db 18,$55
  !as3
  db 18,$57
  !as2
  !end

.sub54F8
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 27,$76
  %percNote(!instr30-!instr2C)
  db 9,$72
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$75
  %percNote(!instr30-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$77
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  db 18,$73
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr30-!instr2C)
  db 9,$70
  %percNote(!instr30-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !instr,!instr2F
  db 18,$74
  !g6
  db 18,$77
  %percNote(!instr2C-!instr2C)
  %percNote(!instr30-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  db 9,$71
  %percNote(!instr30-!instr2C)
  !end

.sub5584
  db 27,$49
  !f2
  db 9,$69
  !f2
  db 18,$55
  !f3
  db 36,$39
  !f2
  db 18,$59
  !f2
  db 18,$55
  !f3
  db 18,$59
  !f2
  db 27,$58
  !gs2
  db 9
  !gs2
  db 18,$55
  !gs3
  db 18,$58
  !gs2
  db 27
  !as2
  db 9
  !as2
  db 18,$55
  !as3
  db 18,$57
  !as2
  !end

.sub55AF
  !pan,12
  db 9,$78
  !g4
  db 9,$76
  !as4
  !c5
  !e5
  !pan,8
  db 9,$78
  !e4
  db 9,$76
  !as4
  !c5
  !e5
  !pan,12
  db 9,$78
  !g4
  db 9,$76
  !as4
  !c5
  !e5
  !pan,8
  db 9,$78
  !e4
  db 9,$76
  !as4
  !c5
  !e5
  !end

.sub5633
  db 9,$78
  !g5
  db 18,$08
  !g5
  db 9,$78
  !g5
  !g5
  db 9,$73
  !c4
  !g4
  !c5
  !ds5
  !g5
  db 18,$08
  !g5
  db 9,$78
  !g5
  db 18,$08
  !g5
  db 9,$78
  !g5
  !a5
  db 9,$73
  !c4
  !ds4
  !a4
  !c5
  !f5
  !a5
  !f5
  db 9,$78
  !g5
  !g5
  db 9,$73
  !g4
  db 9,$78
  !f5
  !d5
  db 9,$73
  !g4
  !b4
  !d5
  !end

.sub566B
  db 9,$78
  !c6
  db 18,$08
  !c6
  db 9,$78
  !as5
  !c6
  db 9,$73
  !e4
  !c5
  !e5
  !g5
  !as5
  db 18,$08
  !c6
  db 9,$78
  !c6
  db 18,$08
  !c6
  db 9,$78
  !as5
  !c6
  db 9,$73
  !f4
  !a4
  !c5
  !ds5
  !a5
  !c6
  !as5
  db 9,$78
  !c6
  !c6
  db 9,$73
  !c5
  db 9,$78
  !b5
  !g5
  db 9,$73
  !d5
  !f5
  !g5
  !end

.sub56A3
  !volume,170
  db 18
  !c5
  !dynamicVolume,126,75
  db 126
  !tie
  !end

.sub56AD
  db 27
  !d4
  !d4
  db 90
  !b3
  !end

.sub56B3
  !pan,10
  !volume,235
  !instr,!instr2E
  db 27,$76
  !d4
  !d4
  db 18
  !b3
  !volume,150
  !pan,8
  db 9,$29
  %percNote(!instr2D-!instr2C)
  db 9,$26
  %percNote(!instr2D-!instr2C)
  db 9,$23
  %percNote(!instr2D-!instr2C)
  !pan,12
  db 9,$29
  %percNote(!instr2D-!instr2C)
  db 9,$26
  %percNote(!instr2D-!instr2C)
  db 9,$23
  %percNote(!instr2D-!instr2C)
  !pan,8
  db 9,$29
  %percNote(!instr2D-!instr2C)
  db 9,$23
  %percNote(!instr2D-!instr2C)
  !end

.sub56E0
  !pan,8
  db 9,$09
  !g7
  db 9,$08
  !g7
  db 9,$03
  !g7
  !pan,12
  db 9,$09
  !g7
  db 9,$08
  !g7
  db 9,$03
  !g7
  !pan,8
  db 9,$09
  !g7
  db 9,$03
  !g7
  db 36
  !rest
  !pan,12
  db 9,$09
  !g7
  db 9,$08
  !g7
  db 9,$03
  !g7
  db 9,$06
  !g7
  !end

.sub570F
  !pan,8
  db 9,$09
  !g7
  db 9,$06
  !g7
  !e7
  !pan,12
  db 9,$09
  !g7
  db 9,$06
  !g7
  !e7
  !pan,8
  db 9,$09
  !g7
  db 9,$06
  !e7
  !pan,12
  db 9,$08
  !gs7
  db 9,$06
  !gs7
  db 9,$09
  !gs7
  !pan,8
  db 9,$06
  !gs7
  db 9,$09
  !gs7
  db 9,$06
  !gs7
  !pan,12
  !gs7
  !gs7
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
