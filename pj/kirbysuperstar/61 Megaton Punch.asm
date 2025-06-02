asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr17 = $16
!instr19 = $17
!instr2B = $18
!instr2C = $19
!instr2D = $1A
!instr2E = $1B
!instr30 = $1C
!instr31 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr17,$8E,$E0,$B8,$03,$C0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FF,$E0,$B8,$0F,$40
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+1539
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_28d81e0078a594731b171bf494850ddb.brr"

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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !musicVolume,255
  !volume,180
  !tempo,52
  !echo,%00011111,34,34
  !echoParameters,3,176,2
  !vibrato,0,7,20
  !instr,!instr31
  !pan,13
  db 18,$56
  !e4
  db 9,$48
  !e4
  !e4
  db 18,$56
  !e4
  !e4
  !e4
  !e4
  !e4
  db 18,$76
  !fs4
  !loop : dw .sub5668 : db 1
  db 18,$58
  !tie
  !endSlide
  db 18,$56
  !a4
  !g4
  !e4
  !fs4
  !g4
  !a4
  db 18,$76
  !e4
  db 18,$58
  !tie
  db 9,$48
  !e4
  !e4
  db 18,$56
  !e4
  !e4
  !e4
  !e4
  !e4
  db 18,$76
  !fs4
  !loop : dw .sub5668 : db 1
  db 18,$58
  !tie
  !endSlide
  db 18,$56
  !a4
  !g4
  !e4
  !fs4
  db 36
  !d4
  db 18,$76
  !e4
  db 18,$56
  !tie
  !fs4
  !g4
  !a4
  !b4
  !cs5
  !ds5
  !volume,170
  db 18,$76
  !gs4
  db 36,$56
  !tie
  db 36,$06
  !b4
  db 36,$56
  !cs5
  db 18
  !fs4
  db 36
  !gs4
  db 18
  !b4
  db 36
  !cs5
  !f4
  db 36,$06
  !gs4
  db 36,$56
  !as4
  db 9,$48
  !ds4
  !ds4
  db 36,$56
  !f4
  db 18
  !gs4
  db 20,$66
  !as4
  db 8,$56
  !f4
  !f4
  db 36
  !gs4
  db 36,$06
  !b4
  db 36,$56
  !cs5
  db 18
  !fs4
  db 36
  !gs4
  db 18
  !b4
  !slideOut,24,12,252
  db 36,$57
  !cs5
  !volume,180
  !endSlide
  db 36,$58
  !a4
  db 36,$06
  !c5
  db 36,$56
  !d5
  db 9,$48
  !a4
  !a4
  db 36,$56
  !c5
  db 18
  !d5
  !slideOut,24,12,252
  db 36
  !e5
  db 36,$57
  !b4
  !end

.pattern0_1
  !instr,!instr2B
  !volume,225
  !pan,7
  db 18,$5B
  !e2
  db 9
  !e2
  !e2
  db 18
  !e2
  db 9
  !e2
  !e2
  db 18
  !e2
  db 9
  !e2
  !e2
  db 18
  !e2
  db 18,$79
  !fs2
  !loop : dw .sub568F : db 1
  db 18,$58
  !tie
  !endSlide
  db 18,$56
  !a2
  db 18,$58
  !g2
  db 18,$5B
  !e2
  db 18,$59
  !fs2
  db 18,$58
  !g2
  db 18,$56
  !a2
  db 18,$7B
  !e2
  db 18,$5B
  !tie
  db 9
  !e2
  !e2
  db 18
  !e2
  db 9
  !e2
  !e2
  db 18
  !e2
  db 9
  !e2
  !e2
  db 18
  !e2
  db 18,$79
  !fs2
  !loop : dw .sub568F : db 1
  db 18,$58
  !tie
  !endSlide
  db 18,$56
  !a2
  db 18,$58
  !g2
  db 18,$5B
  !e2
  db 18,$59
  !fs2
  db 36,$5C
  !d2
  db 18,$7B
  !e2
  db 18,$59
  !tie
  !fs2
  db 18,$58
  !g2
  db 18,$56
  !a2
  !b2
  !cs3
  !ds3
  db 18,$77
  !gs2
  db 36,$56
  !tie
  db 36,$06
  !ds3
  db 36,$56
  !cs3
  db 18,$59
  !fs2
  db 36,$57
  !gs2
  db 18,$56
  !ds3
  db 36
  !cs3
  db 36,$59
  !f2
  db 36,$06
  !c3
  db 36,$56
  !as2
  db 18,$57
  !gs2
  db 36,$59
  !f2
  db 18,$56
  !c3
  db 36
  !as2
  db 36,$57
  !gs2
  db 36,$06
  !ds3
  db 36,$56
  !cs3
  db 18,$59
  !fs2
  db 36,$57
  !gs2
  db 18,$56
  !ds3
  !cs3
  db 18,$59
  !fs2
  db 36,$56
  !a2
  db 36,$06
  !e3
  db 36,$56
  !d3
  db 18
  !a2
  db 36
  !c3
  db 18
  !d3
  db 36,$5B
  !e2
  db 36,$56
  !b2

.pattern0_2
  !volume,225
  !pan,7
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,4
  db 9,$74
  %percNote(!instr2E-!instr2C)
  !pan,7
  db 9,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$79
  !a4
  !a4
  !instr,!instr2E
  !pan,9
  db 9,$76
  !e4
  !e4
  !pan,10
  !d4
  !d4
  !pan,11
  !c4
  !c4
  !pan,12
  db 9,$78
  !a3
  !a3
  !pan,7
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !loop : dw .sub56BE : db 6
  !rest
  !pan,4
  !instr,!instr2E
  db 36
  !g4
  !pan,7
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,10
  !instr,!instr30
  db 36
  !a4
  !a4
  !pan,7
  db 18
  %percNote(!instr2C-!instr2C)
  !pan,10
  !instr,!instr30
  db 27
  !a4
  db 9,$76
  !a4
  !pan,7
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,10
  !instr,!instr30
  db 27
  !a4
  db 9,$76
  !a4
  db 18,$79
  !a4
  !a4
  !loop : dw .sub56ED : db 3
  !pan,10
  db 18,$7A
  %percNote(!instr2C-!instr2C)
  db 9,$77
  %percNote(!instr2C-!instr2C)
  db 9,$75
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 27,$79
  !a4
  db 9,$72
  !a4
  !pan,8
  !instr,!instr2E
  db 9,$76
  !f4
  db 9,$73
  !f4
  !pan,12
  db 18,$76
  !f4
  !pan,10
  db 18,$78
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 27,$79
  !a4
  db 9,$72
  !a4
  db 9,$79
  !a4
  db 27,$72
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  db 9,$77
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,8
  db 9,$79
  !a4
  !pan,9
  !g4
  !pan,11
  !f4
  !pan,12
  !ds4

.pattern0_3
  !volume,200
  !instr,!instr2D
  !pan,8
  db 18,$3B
  !g3
  db 18,$33
  !d3
  db 18,$38
  !g3
  db 18,$33
  !d3
  db 27,$39
  !a3
  db 9,$38
  !d3
  db 18
  !g3
  db 18,$39
  !a3
  !loop : dw .sub5730 : db 8
  !g2
  db 36,$09
  !g2
  db 18,$36
  !g2
  !g3
  !g3
  db 18,$39
  !g2
  db 36,$09
  !g2
  db 18,$39
  !g2
  db 18,$36
  !g3
  db 18,$39
  !g2
  !g2
  db 36
  !g2
  db 18,$36
  !g2
  !g3
  db 18,$39
  !g2
  !g2
  db 18,$36
  !g3
  !pan,12
  db 18,$38
  !c3
  !pan,5
  db 18,$39
  !g2
  db 18,$3B
  !d2
  !pan,12
  db 18,$39
  !g2
  !pan,8
  !g2
  db 36,$09
  !g2
  db 18,$36
  !g2
  !g3
  !g3
  db 18,$39
  !g2
  db 36,$09
  !g2
  db 18,$39
  !g2
  db 18,$36
  !g3
  db 18,$39
  !g2
  !g2
  db 36
  !g2
  db 18,$36
  !g2
  !g3
  db 18,$39
  !g2
  !g2
  db 18,$36
  !g3
  !pan,12
  db 18,$38
  !c3
  !pan,5
  db 18,$39
  !g2
  db 18,$3B
  !d2
  !pan,12
  db 18,$39
  !g2
  !pan,8
  db 18,$36
  !g3
  !g2

.pattern0_4
  !subtranspose,60
  !pan,6
  !dynamicPan,144,14
  db 18
  !rest
  !volume,210
  !instr,!instr19
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !e5
  db 9,$62
  !e5
  !loop : dw .sub5746 : db 1
  !dynamicPan,144,6
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !d5
  db 9,$62
  !d5
  db 9,$65
  !cs5
  db 9,$62
  !cs5
  db 9,$65
  !d5
  db 9,$62
  !d5
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !d5
  !d5
  !dynamicPan,144,14
  !a4
  db 9,$62
  !a4
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !e5
  db 9,$62
  !e5
  !loop : dw .sub5746 : db 1
  !dynamicPan,144,6
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !d5
  db 9,$62
  !d5
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !cs5
  db 9,$62
  !cs5
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !cs5
  db 9,$62
  !cs5
  db 9,$65
  !g4
  db 9,$62
  !g4
  !pan,10
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !cs5
  db 9,$62
  !cs5
  db 9,$65
  !d5
  db 9,$62
  !d5
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !fs5
  db 9,$62
  !fs5
  db 9,$65
  !gs5
  db 9,$62
  !gs5
  db 9,$65
  !as5
  db 9,$62
  !as5
  db 18
  !rest
  !instr,!instr17
  !volume,165
  db 18,$56
  !ds4
  db 36,$06
  !fs4
  db 18,$56
  !ds4
  db 36
  !f4
  db 18
  !cs4
  db 36
  !ds4
  db 18
  !fs4
  db 36
  !f4
  db 18
  !c4
  db 36,$06
  !ds4
  db 18,$56
  !c4
  db 36
  !d4
  db 18
  !as3
  db 36
  !c4
  db 18
  !ds4
  !f4
  db 18,$46
  !d4
  db 18,$56
  !ds4
  db 36,$06
  !fs4
  db 18,$56
  !ds4
  db 36
  !f4
  db 18
  !cs4
  db 36
  !ds4
  db 18
  !fs4
  db 36
  !f4
  db 18
  !a4
  db 36,$06
  !c5
  db 18,$56
  !a4
  !b4
  !d4
  !a4
  db 36
  !c5
  db 18
  !d5
  !e5
  !c5
  db 36
  !fs5

.pattern1_0
  !endSlide
  !pan,20
  !volume,145
  db 18,$36
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !loop : dw .sub57AD : db 1
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !slideOut,24,30,250
  db 54,$76
  !a4
  !end

.pattern1_1
  db 18,$4C
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  db 54,$7B
  !e2
  db 18,$4C
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  db 54,$78
  !a2

.pattern1_2
  !loop : dw .sub57C0 : db 2
  !pan,7
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,4
  db 18,$74
  %percNote(!instr2E-!instr2C)
  db 18,$76
  %percNote(!instr2E-!instr2C)
  !pan,7
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,12
  !g4
  !pan,13
  !e4
  !pan,14
  !c4
  !pan,7
  !instr,!instr30
  db 18,$79
  !a4
  !pan,7
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,4
  db 18,$74
  %percNote(!instr2E-!instr2C)
  db 18,$76
  %percNote(!instr2E-!instr2C)
  !pan,7
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,12
  !g4
  !pan,13
  !e4
  !pan,14
  !c4
  !pan,10
  !instr,!instr30
  db 18,$79
  !a4

.pattern1_3
  !pan,10
  !instr,!instr17
  !volume,170
  db 72,$76
  !g4
  !tie
  !tie
  db 18
  !tie
  db 54
  !gs4
  db 72
  !g4
  !tie
  !tie
  db 18
  !tie
  db 54
  !d4

.pattern1_4
  db 1
  !rest
  !instr,!instr31
  !volume,145
  !pan,0
  !subtranspose,10
  db 18,$36
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !slideOut,24,30,250
  db 54,$76
  !e4
  !endSlide
  db 18,$36
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  db 53,$76
  !a4

.pattern2_0
  !endSlide
  db 18,$36
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !slideOut,24,30,250
  db 54,$76
  !e4
  !endSlide
  db 18,$36
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !rest
  !e4
  !rest
  !f4
  !rest
  !fs4
  !rest
  db 9,$26
  !g4
  !g4
  !end

.pattern2_1
  db 18,$4C
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  db 54,$4B
  !e2
  db 18,$4C
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !ds2
  !rest
  db 18,$4B
  !e2
  !rest
  db 18,$4A
  !f2
  !rest
  db 18,$49
  !fs2
  !rest
  db 18,$48
  !g2

.pattern2_2
  !loop : dw .sub57C0 : db 3
  !pan,7
  db 18,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$79
  !a4
  !pan,7
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,10
  !instr,!instr30
  db 18,$79
  !a4
  db 9
  !a4
  db 27,$76
  !a4
  db 18,$79
  !a4
  db 9
  !a4
  !a4

.pattern2_3
  db 72,$76
  !g4
  !tie
  !tie
  db 18
  !tie
  db 54
  !gs4
  db 72
  !g4
  !tie
  db 18
  !rest
  db 36,$06
  !gs4
  !a4
  !as4
  db 9,$26
  !b4
  !b4

.pattern2_4
  db 1
  !rest
  db 18,$36
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !loop : dw .sub57AD : db 1
  !rest
  !e4
  !rest
  !f4
  !rest
  !fs4
  !rest
  db 9,$26
  !g4
  db 8
  !g4

.pattern3_0
  !volume,160
  db 18,$56
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !loop : dw .sub57E3 : db 1
  !as4
  !as4
  !as4
  !b4
  !b4
  !b4
  !cs5
  !cs5
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !loop : dw .sub57E3 : db 1
  !fs4
  !fs4
  !fs4
  !f4
  !f4
  !f4
  db 9,$26
  !f4
  !f4
  !f4
  !f4
  !end

.pattern3_1
  !volume,255
  db 18,$57
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !loop : dw .sub57F4 : db 6
  !fs2
  !fs2
  !fs2
  !a2
  !a2
  !a2
  !a2
  !a2

.pattern3_2
  !pan,10
  !instr,!instr30
  db 18,$78
  !a4
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !loop : dw .sub57FD : db 1
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  db 18
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  db 18
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18
  !a4
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !loop : dw .sub57FD : db 1
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  db 18
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$75
  !a4
  db 9,$76
  !a4
  db 9,$78
  !a4
  !a4
  !a4

.pattern3_3
  !volume,185
  !pan,7
  !subtranspose,0
  !endVibrato
  !instr,!instr2D
  !loop : dw .sub583F : db 7
  db 9,$78
  !e4
  db 9,$73
  !b3
  db 9,$76
  !d4
  db 9,$73
  !b3
  db 9,$78
  !e4
  db 9,$73
  !b3
  !volume,255
  !instr,!instr2E
  !pan,7
  db 9,$75
  !d5
  db 9,$73
  !d5
  db 9,$76
  !d5
  !d5
  !pan,9
  !a4
  !a4
  !pan,11
  !e4
  !e4
  !pan,13
  db 9,$7A
  !a3
  !a3

.pattern3_4
  !endVibrato
  !subtranspose,60
  !instr,!instr17
  !pan,10
  !volume,170
  !loop : dw .sub5870 : db 1
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !cs5
  db 9,$54
  !cs5
  db 9,$56
  !cs5
  db 9,$54
  !cs5
  db 9,$56
  !cs5
  db 9,$54
  !cs5
  db 9,$56
  !ds5
  db 9,$54
  !ds5
  db 9,$56
  !ds5
  db 9,$54
  !ds5
  db 9,$56
  !ds5
  db 9,$54
  !ds5
  db 9,$56
  !e5
  db 9,$54
  !e5
  db 9,$56
  !e5
  db 9,$54
  !e5
  !loop : dw .sub5870 : db 1
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  db 9,$56
  !a4
  db 9,$54
  !a4
  db 9,$56
  !a4
  db 9,$54
  !a4
  db 9,$56
  !a4
  db 9,$54
  !a4
  db 9,$56
  !a4
  db 9,$54
  !a4
  db 9,$56
  !a4
  db 9,$54
  !a4
  db 9,$58
  !a4
  db 9,$56
  !a4
  db 9,$58
  !a4
  db 9,$56
  !a4
  db 9,$58
  !a4
  db 9,$56
  !a4

.sub5668
  db 18,$58
  !tie
  db 9,$48
  !e4
  !e4
  db 18,$56
  !e4
  !e4
  !e4
  !e4
  !e4
  db 18,$76
  !g4
  db 18,$58
  !tie
  db 9,$48
  !e4
  !e4
  db 18,$56
  !e4
  !e4
  !e4
  !e4
  !e4
  !slideIn,0,10,1
  db 18,$76
  !b4
  !end

.sub568F
  db 18,$5B
  !tie
  db 9
  !e2
  !e2
  db 18
  !e2
  db 9
  !e2
  !e2
  db 18
  !e2
  db 9
  !e2
  !e2
  db 18
  !e2
  db 18,$78
  !g2
  db 18,$5B
  !tie
  db 9
  !e2
  !e2
  db 18
  !e2
  db 9
  !e2
  !e2
  db 18
  !e2
  db 9
  !e2
  !e2
  db 18
  !e2
  !slideIn,0,10,1
  db 18,$76
  !b2
  !end

.sub56BE
  !tie
  !pan,4
  db 9,$74
  %percNote(!instr2E-!instr2C)
  !pan,7
  db 9,$72
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr30
  db 9,$79
  !a4
  !a4
  !instr,!instr2E
  !pan,9
  db 9,$76
  !e4
  !e4
  !pan,10
  !d4
  !d4
  !pan,11
  !c4
  !c4
  !pan,12
  db 9,$78
  !a3
  !a3
  !pan,7
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !end

.sub56ED
  !pan,10
  db 18,$7A
  %percNote(!instr2C-!instr2C)
  db 9,$77
  %percNote(!instr2C-!instr2C)
  db 9,$75
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 27,$79
  !a4
  db 9,$72
  !a4
  !pan,8
  !instr,!instr2E
  db 9,$76
  !f4
  db 9,$73
  !f4
  !pan,12
  db 18,$76
  !f4
  !pan,10
  db 18,$78
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 9,$79
  !a4
  db 18,$72
  !a4
  db 9,$71
  !a4
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  !a4
  !instr,!instr2E
  !pan,8
  db 9,$76
  !f4
  db 9,$73
  !f4
  !end

.sub5730
  !tie
  db 18,$33
  !d3
  db 18,$38
  !g3
  db 18,$33
  !d3
  db 27,$39
  !a3
  db 9,$38
  !d3
  db 18
  !g3
  db 18,$39
  !a3
  !end

.sub5746
  !dynamicPan,144,6
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !b4
  db 9,$62
  !b4
  !dynamicPan,144,14
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !a4
  db 9,$62
  !a4
  db 9,$65
  !b4
  db 9,$62
  !b4
  db 9,$65
  !e5
  db 9,$62
  !e5
  db 9,$65
  !a4
  db 9,$62
  !a4
  !end

.sub57AD
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  db 54,$76
  !e4
  db 18,$36
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !ds4
  !end

.sub57C0
  !pan,7
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,4
  db 18,$74
  %percNote(!instr2E-!instr2C)
  db 18,$76
  %percNote(!instr2E-!instr2C)
  !pan,7
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,12
  !g4
  !pan,13
  !e4
  !pan,14
  !c4
  !pan,10
  !instr,!instr30
  db 18,$79
  !a4
  !end

.sub57E3
  !as4
  !as4
  !as4
  !fs4
  !fs4
  !fs4
  !fs4
  !fs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !gs4
  !end

.sub57F4
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !gs2
  !end

.sub57FD
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  db 18
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  db 18
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr30
  db 18,$78
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !end

.sub583F
  db 9,$78
  !e4
  db 9,$73
  !b3
  db 9,$76
  !d4
  db 9,$73
  !b3
  db 9,$78
  !e4
  db 9,$73
  !b3
  db 9,$76
  !d4
  db 9,$73
  !b3
  db 9,$78
  !e4
  db 9,$73
  !b3
  db 9,$76
  !d4
  db 9,$73
  !b3
  db 9,$78
  !e4
  db 9,$73
  !b3
  db 9,$76
  !d4
  db 9,$73
  !b3
  !end

.sub5870
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  db 9,$56
  !b4
  db 9,$54
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  !b4
  db 9,$56
  !cs5
  db 9,$54
  !cs5
  db 9,$56
  !cs5
  db 9,$54
  !cs5
  db 9,$56
  !cs5
  db 9,$54
  !cs5
  db 9,$56
  !as4
  db 9,$54
  !as4
  db 9,$56
  !as4
  db 9,$54
  !as4
  db 9,$56
  !as4
  db 9,$54
  !as4
  db 9,$56
  !as4
  db 9,$54
  !as4
  db 9,$56
  !as4
  db 9,$54
  !as4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
