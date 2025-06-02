asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr07 = $17
!instr09 = $18
!instr0B = $19
!instr26 = $1A
!instr29 = $1B
!instr2E = $1C
!instr30 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$86,$EB,$B8,$04,$00
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr29,$88,$87,$B8,$07,$00
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample06_07,Sample06_07+558
  dw Sample08_09,Sample08_09+90
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample26,Sample26+27
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr30
  !echo,%00011100,45,45
  !echoParameters,5,60,0
  !musicVolume,255
  !tempo,51
  !loop : dw .sub525D : db 7
  !instr,!instr2E
  !pan,9
  db 16,$77
  !as3
  !pan,11
  db 13,$73
  !f3
  !pan,8
  db 16,$74
  !as3
  !pan,12
  db 13,$72
  !f3
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  !pan,8
  db 13,$72
  !f3
  !pan,10
  !instr,!instr30
  db 16,$77
  !as3
  db 13
  !cs4
  !end

.pattern0_1
  !pan,10
  !instr,!instr07
  !volume,240
  !loop : dw .sub528A : db 2

.pattern0_2
  !instr,!instr0B
  !pan,12
  !volume,135
  !loop : dw .sub52BC : db 2

.pattern0_3
  !instr,!instr0B
  !pan,8
  !volume,135
  !loop : dw .sub52E3 : db 2

.pattern0_4
  !pan,10
  !instr,!instr00
  !volume,175
  !vibrato,30,7,100
  !dynamicVibrato,30
  db 116,$76
  !ds5
  db 58
  !as5
  !g5
  db 116
  !f5
  db 87
  !tie
  db 16,$7D
  !ds5
  db 13,$7F
  !f5
  db 116,$76
  !ds5
  db 58
  !as5
  !c6
  db 116
  !f5
  !tie

.pattern1_0
  !loop : dw .sub525D : db 7
  !instr,!instr2E
  !pan,9
  db 16,$77
  !as3
  !pan,11
  db 13,$73
  !f3
  !pan,8
  db 16,$74
  !as3
  !pan,12
  db 13,$72
  !f3
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  !pan,8
  db 13,$72
  !f3
  !pan,10
  !instr,!instr30
  db 16,$77
  !as3
  db 13
  !cs4
  !end

.pattern1_1
  !loop : dw .sub528A : db 2

.pattern1_2
  !loop : dw .sub52E3 : db 2

.pattern1_3
  !loop : dw .sub530A : db 1
  !loop : dw .sub5324 : db 1
  !loop : dw .sub5332 : db 1
  !loop : dw .sub5324 : db 1

.pattern1_4
  !slideIn,0,15,1
  db 116,$76
  !d6
  !endSlide
  db 58
  !as5
  !g5
  db 116
  !g5
  db 87
  !f5
  db 16,$7B
  !as5
  db 13,$7D
  !c6
  db 116,$76
  !d6
  db 58,$74
  !f6
  db 58,$75
  !d6
  db 116,$76
  !c6
  !tie

.pattern2_0
  !loop : dw .sub525D : db 7
  !instr,!instr2E
  !pan,9
  db 16,$77
  !as3
  !pan,11
  db 13,$73
  !f3
  !pan,8
  db 16,$74
  !as3
  !pan,12
  db 13,$72
  !f3
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  !pan,8
  db 13,$72
  !f3
  !pan,10
  !instr,!instr30
  db 16,$77
  !as3
  db 13
  !cs4
  !end

.pattern2_1
  !loop : dw .sub528A : db 2

.pattern2_2
  !loop : dw .sub52BC : db 2

.pattern2_3
  !loop : dw .sub52E3 : db 2

.pattern2_4
  !instr,!instr29
  !volume,180
  !vibrato,30,14,45
  !dynamicVibrato,10
  !slideIn,0,16,1
  db 116,$76
  !ds5
  !endSlide
  db 58
  !as5
  !g5
  !slideIn,1,24,1
  db 116
  !g5
  !endSlide
  db 87,$65
  !f5
  db 16,$79
  !ds5
  db 13
  !f5
  db 116,$76
  !ds5
  db 58
  !as5
  !c6
  !slideIn,1,40,1
  db 116
  !f5
  !endSlide
  !tie

.pattern3_0
  !loop : dw .sub525D : db 7
  !instr,!instr2E
  !pan,9
  db 16,$77
  !as3
  !pan,11
  db 13,$73
  !f3
  !pan,8
  db 16,$74
  !as3
  !pan,12
  db 13,$72
  !f3
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  !pan,8
  db 13,$72
  !f3
  !pan,10
  !instr,!instr30
  db 16,$77
  !as3
  db 13
  !cs4
  !end

.pattern3_1
  !loop : dw .sub528A : db 2

.pattern3_2
  !loop : dw .sub52E3 : db 2

.pattern3_3
  !loop : dw .sub530A : db 1
  !loop : dw .sub5324 : db 1
  !loop : dw .sub5332 : db 1
  !loop : dw .sub5324 : db 1

.pattern3_4
  !slideIn,0,15,1
  db 116,$76
  !d6
  !endSlide
  db 58
  !as5
  !g5
  !slideIn,0,30,1
  db 116
  !g5
  !endSlide
  db 74,$55
  !f5
  db 13,$75
  !f5
  db 16,$78
  !as5
  db 13,$7A
  !c6
  db 116,$76
  !d6
  db 58,$75
  !f6
  !d6
  !slideIn,0,55,1
  db 116,$74
  !f6
  !endSlide
  !tie

.pattern4_0
  !loop : dw .sub525D : db 15
  !instr,!instr2E
  !pan,9
  db 16,$77
  !as3
  !pan,11
  db 13,$73
  !f3
  !pan,8
  db 16,$74
  !as3
  !pan,12
  db 13,$72
  !f3
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  !pan,8
  db 13,$72
  !f3
  !pan,10
  !instr,!instr30
  db 16,$77
  !as3
  db 13
  !cs4
  !end

.pattern4_1
  db 45,$08
  !gs2
  db 42,$06
  !gs3
  db 29,$07
  !gs2
  db 16
  !rest
  db 29,$06
  !g3
  db 29,$56
  !gs3
  db 13,$57
  !gs2
  db 16,$56
  !g3
  db 13
  !gs3
  db 45,$08
  !g2
  db 42,$06
  !g3
  db 29,$08
  !g2
  db 16
  !rest
  db 29,$06
  !f3
  db 29,$56
  !g3
  db 13,$58
  !g2
  db 16,$56
  !f3
  db 13
  !g3
  db 45,$08
  !fs2
  db 42,$06
  !fs3
  db 29,$08
  !fs2
  db 16
  !rest
  db 29,$06
  !f3
  db 29,$56
  !fs3
  db 13,$58
  !fs2
  db 16,$56
  !f3
  db 13
  !fs3
  db 45,$08
  !f2
  db 42,$06
  !f3
  db 29,$08
  !f2
  db 16
  !rest
  db 29,$06
  !ds3
  db 29,$56
  !f3
  db 13,$58
  !f2
  db 16,$56
  !c3
  db 13
  !f3
  db 45,$0A
  !ds2
  db 42,$06
  !ds3
  db 29,$0A
  !ds2
  db 16
  !rest
  db 29,$06
  !cs3
  db 29,$56
  !ds3
  db 13,$5A
  !ds2
  db 16,$56
  !as2
  db 13
  !ds3
  db 45,$07
  !cs3
  db 42,$04
  !cs4
  db 29,$06
  !cs3
  db 16
  !rest
  db 29,$04
  !c4
  db 29,$34
  !cs4
  db 13,$75
  !b3
  db 16,$76
  !b2
  db 13,$74
  !b3
  db 45,$07
  !as2
  db 42,$05
  !as3
  db 29,$06
  !as2
  db 16
  !rest
  db 29
  !f3
  db 29,$55
  !as3
  db 13,$56
  !as2
  db 16
  !f3
  db 13,$55
  !as3
  db 45,$07
  !as2
  db 42,$05
  !as3
  db 29,$06
  !as2
  db 16
  !rest
  db 29
  !f3
  db 29,$35
  !as3
  db 13,$78
  !f2
  db 16,$76
  !c3
  db 13
  !f3

.pattern4_2
  !instr,!instr09
  !volume,150
  db 116,$76
  !ds7
  db 58
  !c7
  !g6
  !f6
  !d7
  !tie
  !f6
  db 116
  !cs7
  db 58
  !as6
  !f6
  !ds6
  !c7
  !tie
  !ds6
  !cs6
  !as6
  !fs6
  !cs6
  !c6
  !f6
  !tie
  !ds6
  db 116
  !d6
  !tie
  !tie
  !tie

.pattern4_3
  !instr,!instr09
  !volume,145
  db 116,$76
  !g7
  db 58
  !ds7
  !c7
  !as6
  !f7
  !tie
  !as6
  db 116
  !f7
  db 58
  !cs7
  !as6
  !gs6
  !ds7
  !tie
  !gs6
  !fs6
  !cs7
  !as6
  !fs6
  !f6
  !gs6
  !tie
  !a6
  db 116
  !as6
  !tie
  !tie
  !tie

.pattern4_4
  !instr,!instr26
  !volume,140
  db 16,$06
  !g5
  db 13
  !g4
  db 16
  !gs5
  db 13
  !gs4
  db 16
  !g5
  db 13
  !g4
  db 16
  !gs5
  db 13
  !gs4
  db 16
  !g5
  db 13
  !g4
  db 16
  !gs5
  db 13
  !gs4
  db 16
  !g5
  db 13
  !g4
  db 16
  !gs5
  db 13
  !gs4
  !loop : dw .sub534C : db 2
  !loop : dw .sub535D : db 2
  !loop : dw .sub536E : db 2
  !loop : dw .sub537F : db 2
  db 16
  !c5
  db 13
  !c4
  db 16
  !cs5
  db 13
  !cs4
  db 16
  !c5
  db 13
  !c4
  db 16
  !cs5
  db 13
  !cs4
  db 16
  !c5
  db 13
  !c4
  db 16
  !cs5
  db 13
  !cs4
  db 16
  !ds5
  db 13
  !ds4
  db 16
  !fs5
  db 13
  !fs4
  !loop : dw .sub5390 : db 3
  db 16
  !a5
  db 13
  !a4
  db 16
  !as5
  db 13
  !as4
  db 16
  !ds5
  db 13
  !ds4
  db 16
  !f5
  db 13
  !a4

.sub525D
  !instr,!instr2E
  !pan,9
  db 16,$77
  !as3
  !pan,11
  db 13,$73
  !f3
  !pan,8
  db 16,$74
  !as3
  !pan,12
  db 13,$72
  !f3
  !pan,10
  db 16,$76
  %percNote(!instr30-!instr30)
  !instr,!instr2E
  !pan,8
  db 13,$72
  !f3
  !pan,12
  db 16,$74
  !as3
  !pan,8
  db 13,$73
  !f3
  !end

.sub528A
  db 45,$07
  !c3
  db 42,$06
  !ds3
  db 29
  !as2
  db 16
  !rest
  db 29,$07
  !c3
  db 29,$56
  !as2
  db 13
  !c3
  db 16,$58
  !g2
  db 13
  !fs2
  db 45,$08
  !f2
  db 42,$06
  !c3
  db 29
  !f3
  db 16
  !rest
  !slideOut,18,47,252
  db 58,$77
  !f2
  !endSlide
  db 13,$58
  !g2
  db 16,$56
  !as2
  db 13
  !b2
  !end

.sub52BC
  db 29,$06
  !ds6
  !ds6
  db 16
  !ds6
  db 29
  !ds6
  db 13,$16
  !ds6
  db 16
  !rest
  db 13,$06
  !ds6
  db 29
  !ds6
  db 16
  !ds6
  db 29
  !ds6
  db 13,$16
  !ds6
  db 29,$06
  !c6
  !c6
  db 16
  !c6
  db 29
  !c6
  db 13,$16
  !c6
  db 116
  !rest
  !end

.sub52E3
  db 29,$06
  !as6
  !as6
  db 16
  !as6
  db 29
  !as6
  db 13,$16
  !as6
  db 16
  !rest
  db 13,$06
  !as6
  db 29
  !as6
  db 16
  !as6
  db 29
  !as6
  db 13,$16
  !as6
  db 29,$06
  !a6
  !a6
  db 16
  !a6
  db 29
  !a6
  db 13,$16
  !a6
  db 116
  !rest
  !end

.sub530A
  db 29,$06
  !d7
  !d7
  db 16
  !d7
  db 29
  !d7
  db 13,$16
  !d7
  db 16
  !rest
  db 13,$06
  !d7
  db 29
  !d7
  db 16
  !d7
  db 29
  !d7
  db 13,$16
  !d7
  !end

.sub5324
  db 29,$06
  !c7
  !c7
  db 16
  !c7
  db 29
  !c7
  db 13,$16
  !c7
  db 116
  !rest
  !end

.sub5332
  db 29,$06
  !ds7
  !ds7
  db 16
  !ds7
  db 29
  !ds7
  db 13,$16
  !ds7
  db 16
  !rest
  db 13,$06
  !ds7
  db 29
  !ds7
  db 16
  !d7
  db 29
  !ds7
  db 13,$16
  !d7
  !end

.sub534C
  db 16
  !f5
  db 13
  !f4
  db 16
  !g5
  db 13
  !g4
  db 16
  !f5
  db 13
  !f4
  db 16
  !g5
  db 13
  !g4
  !end

.sub535D
  db 16
  !f5
  db 13
  !f4
  db 16
  !fs5
  db 13
  !fs4
  db 16
  !f5
  db 13
  !f4
  db 16
  !fs5
  db 13
  !fs4
  !end

.sub536E
  db 16
  !ds5
  db 13
  !ds4
  db 16
  !f5
  db 13
  !f4
  db 16
  !ds5
  db 13
  !ds4
  db 16
  !f5
  db 13
  !f4
  !end

.sub537F
  db 16
  !cs5
  db 13
  !cs4
  db 16
  !ds5
  db 13
  !ds4
  db 16
  !cs5
  db 13
  !cs4
  db 16
  !ds5
  db 13
  !ds4
  !end

.sub5390
  db 16
  !a5
  db 13
  !a4
  db 16
  !as5
  db 13
  !as4
  db 16
  !a5
  db 13
  !a4
  db 16
  !as5
  db 13
  !as4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
