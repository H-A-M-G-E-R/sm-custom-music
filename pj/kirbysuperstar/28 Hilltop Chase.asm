asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr04 = $17
!instr05 = $18
!instr07 = $19
!instr0B = $1A
!instr1B = $1B
!instr23 = $1C
!instr2B = $1D
!instr2D = $1E
!instr2E = $1F
!instr30 = $20
!instr31 = $21
!instr32 = $22
!instr34 = $23

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr07,$FF,$EE,$B8,$0F,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FD,$F1,$B8,$07,$40
  db !instr32,$8F,$E0,$B8,$03,$C0
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample04,Sample04+1098
  dw Sample05,Sample05+27
  dw Sample06_07,Sample06_07+558
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample23,Sample23+396
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+27
  dw Sample32,Sample32+2232
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_997ae0fd998037789f5b8dc17e49af0b.brr"
  Sample32: incbin "Sample_1a788f845be3181021d56997b0deeaa8.brr"
  Sample34: incbin "Sample_deadfac8fb90983ab9614fd75bc82e34.brr"

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
  dw .pattern8
  dw .pattern9
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, 0, 0, 0
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2D
  !echo,%00011100,38,38
  !echoParameters,4,50,0
  !musicVolume,255
  !tempo,51
  !loop : dw .sub59A8 : db 3
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  %percNote(!instr2D-!instr2D)
  !end

.pattern0_1
  !instr,!instr07
  !volume,220
  !slideIn,0,12,1
  db 36,$66
  !f3
  !endSlide
  !gs3
  db 36,$54
  !c4
  db 18,$15
  !as3
  db 18,$14
  !c4
  db 36,$66
  !c3
  db 36,$65
  !as3
  db 36,$56
  !gs3
  db 18,$16
  !g3
  !gs3
  !loop : dw .sub59D5 : db 1

.pattern0_2
  db 18
  !rest
  !instr,!instr04
  !volume,170
  !pan,12
  db 18,$06
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !e5
  !rest
  !e5
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 18,$06
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !c5
  !rest
  !c5
  !rest
  db 9,$36
  !as4
  db 9,$32
  !as4
  db 18
  !rest
  db 9,$36
  !as4
  db 9,$32
  !as4

.pattern0_3
  db 18
  !rest
  !instr,!instr04
  !volume,170
  !pan,8
  db 18,$06
  !g5
  !rest
  !g5
  !rest
  !g5
  !rest
  !g5
  !rest
  !f5
  !rest
  !f5
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 18,$06
  !g5
  !rest
  !g5
  !rest
  !g5
  !rest
  !g5
  !rest
  !f5
  !rest
  !f5
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5

.pattern0_4
  db 18
  !rest
  !instr,!instr04
  !volume,175
  !pan,10
  db 18,$06
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !loop : dw .sub59F8 : db 1

.pattern1_0
  !loop : dw .sub59A8 : db 3
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !loop : dw .sub59A8 : db 3
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !end

.pattern1_1
  !instr,!instr07
  !volume,220
  !endVibrato
  !pan,10
  !loop : dw .sub5A2A : db 1
  !loop : dw .sub59D5 : db 1
  !loop : dw .sub5A2A : db 1
  !loop : dw .sub59D5 : db 1

.pattern1_2
  !instr,!instr04
  !pan,10
  !vibrato,27,27,60
  !volume,175
  !slideIn,2,25,1
  db 72,$64
  !f6
  !endSlide
  db 36,$65
  !e6
  db 36,$66
  !c6
  !b5
  !c6
  db 36,$56
  !g5
  db 36,$66
  !as5
  !slideIn,0,7,1
  db 18,$68
  !gs5
  !endSlide
  db 18,$67
  !f5
  db 108
  !rest
  db 72
  !rest
  !instr,!instr2E
  !volume,240
  db 27,$73
  !a2
  db 9,$74
  !d3
  db 18,$78
  !d3
  !d3
  !instr,!instr04
  !pan,10
  !vibrato,27,27,60
  !volume,175
  !slideIn,2,25,1
  db 72,$64
  !f6
  !endSlide
  db 36,$65
  !e6
  db 36,$66
  !c6
  !b5
  !c6
  db 36,$56
  !e6
  db 36,$65
  !g6
  !slideIn,0,7,1
  db 18,$64
  !gs6
  !endSlide
  db 18,$66
  !f6
  db 108
  !rest
  db 72
  !rest
  !instr,!instr2E
  !volume,240
  db 27,$73
  !a2
  db 9,$74
  !d3
  db 18,$78
  !d3
  !d3

.pattern1_3
  !subtranspose,0
  db 18
  !rest
  !endVibrato
  !instr,!instr04
  !volume,175
  !pan,9
  db 18,$06
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !loop : dw .sub5A4F : db 1
  db 18
  !rest
  db 18,$06
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !loop : dw .sub5A4F : db 1

.pattern1_4
  db 18
  !rest
  !endVibrato
  !instr,!instr04
  !volume,175
  !pan,11
  db 18,$06
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !loop : dw .sub59F8 : db 1
  !loop : dw .sub5A81 : db 2

.pattern2_0
  !loop : dw .sub59A8 : db 3
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !end

.pattern2_1
  !loop : dw .sub5A2A : db 1
  !loop : dw .sub59D5 : db 1

.pattern2_2
  !instr,!instr2B
  !volume,180
  !vibrato,20,20,100
  !slideIn,0,8,1
  db 18,$66
  !f6
  !endSlide
  db 36,$16
  !c6
  db 18,$56
  !b5
  !c6
  !g5
  !gs5
  !f5
  db 72,$76
  !e5
  db 36
  !g5
  !as5
  !slideIn,0,8,1
  db 18,$77
  !gs5
  !endSlide
  db 18,$76
  !c6
  db 108
  !rest
  db 72
  !rest
  !instr,!instr2E
  !volume,240
  db 27,$73
  !a2
  db 9,$74
  !d3
  db 18,$78
  !d3
  !d3

.pattern2_3
  db 18
  !rest
  !instr,!instr04
  !volume,175
  !pan,9
  db 18,$06
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !loop : dw .sub5A4F : db 1

.pattern2_4
  db 18
  !rest
  !instr,!instr04
  !volume,175
  !pan,11
  db 18,$06
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !loop : dw .sub59F8 : db 1

.pattern3_0
  !loop : dw .sub59A8 : db 3
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$77
  %percNote(!instr30-!instr2D)
  db 9,$73
  %percNote(!instr30-!instr2D)
  db 9,$78
  %percNote(!instr30-!instr2D)
  !instr,!instr2E
  !pan,12
  db 9,$76
  !b4
  db 9,$74
  !b4
  !pan,8
  db 9,$77
  !f4
  !pan,11
  db 9,$78
  !d4
  !end

.pattern3_1
  !loop : dw .sub5AFA : db 1
  !loop : dw .sub5B1D : db 2

.pattern3_2
  !loop : dw .sub5B2E : db 1
  !slideIn,0,70,1
  !vibrato,70,12,240
  !dynamicVibrato,100
  db 72,$73
  !c7
  !tie
  !tie
  !tie

.pattern3_3
  !loop : dw .sub5B50 : db 1
  db 18
  !rest
  db 18,$06
  !e5
  !rest
  !e5
  !rest
  !e5
  !rest
  !e5
  !rest
  !as4
  !rest
  !as4
  !rest
  db 9,$36
  !as4
  db 9,$32
  !as4
  db 18
  !rest
  db 9,$36
  !as4
  db 9,$32
  !as4

.pattern3_4
  !loop : dw .sub5B6F : db 1
  db 18
  !rest
  db 18,$06
  !g5
  !rest
  !g5
  !rest
  !g5
  !rest
  !g5
  !rest
  !e5
  !rest
  !e5
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5

.pattern4_0
  !loop : dw .sub5AA0 : db 7
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !instr,!instr2E
  !pan,10
  db 36,$18
  !d3
  !pan,11
  db 36,$62
  %percNote(!instr31-!instr2D)
  !end

.pattern4_1
  db 18
  !rest
  !instr,!instr04
  !volume,175
  !pan,9
  db 9,$36
  !cs5
  db 9,$32
  !cs5
  db 18
  !rest
  db 9,$36
  !cs5
  db 9,$32
  !cs5
  db 18
  !rest
  db 9,$36
  !cs5
  db 9,$32
  !cs5
  db 18
  !rest
  db 9,$36
  !cs5
  db 9,$32
  !cs5
  db 18
  !rest
  db 9,$36
  !c5
  db 9,$32
  !c5
  db 18
  !rest
  db 9,$36
  !c5
  db 9,$32
  !c5
  db 18
  !rest
  db 9,$36
  !as4
  db 9,$32
  !as4
  db 18
  !rest
  db 9,$36
  !as4
  db 9,$32
  !as4
  db 18
  !rest
  db 9,$36
  !cs5
  db 9,$32
  !cs5
  db 18
  !rest
  db 9,$36
  !cs5
  db 9,$32
  !cs5
  db 18
  !rest
  db 9,$36
  !b4
  db 9,$32
  !b4
  db 18
  !rest
  db 9,$36
  !b4
  db 9,$32
  !b4
  db 18
  !rest
  db 9,$36
  !c5
  db 9,$32
  !c5
  db 18
  !rest
  db 9,$36
  !c5
  db 9,$32
  !c5
  db 18
  !rest
  db 9,$36
  !c5
  db 9,$32
  !c5
  db 18
  !rest
  db 9,$36
  !c5
  db 9,$32
  !c5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !cs5
  db 9,$32
  !cs5
  db 18
  !rest
  db 9,$36
  !cs5
  db 9,$32
  !cs5
  db 18
  !rest
  db 9,$36
  !c5
  db 9,$32
  !c5
  db 18
  !rest
  db 9,$36
  !c5
  db 9,$32
  !c5
  db 18
  !rest
  db 9,$36
  !c5
  db 9,$32
  !c5
  db 18
  !rest
  db 9,$36
  !c5
  db 9,$32
  !c5
  db 18
  !rest
  db 9,$36
  !g4
  db 9,$32
  !g4
  db 18
  !rest
  db 9,$36
  !g4
  db 9,$32
  !g4
  db 18
  !rest
  db 9,$36
  !b4
  db 9,$32
  !b4
  db 18
  !rest
  db 9,$36
  !b4
  db 9,$32
  !b4
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 9,$78
  !g5
  db 27
  !rest
  !pan,11
  !volume,185
  !instr,!instr32
  db 36,$66
  !c4

.pattern4_2
  !endSlide
  !instr,!instr04
  !volume,230
  !vibrato,0,30,50
  !pan,10
  db 54,$58
  !f3
  db 18,$29
  !gs3
  db 36,$55
  !c4
  db 18,$29
  !as3
  !gs3
  db 54,$57
  !g3
  db 18,$29
  !ds3
  db 36,$59
  !c3
  db 18,$2A
  !c3
  !ds3
  db 36,$58
  !f3
  db 18,$29
  !f3
  !g3
  db 36,$76
  !gs3
  db 24,$49
  !as3
  db 12
  !c4
  db 36,$56
  !ds4
  db 27,$46
  !ds4
  db 9,$59
  !f4
  db 36,$76
  !ds4
  db 18,$29
  !c4
  !ds4
  db 36,$56
  !cs4
  db 27,$46
  !cs4
  db 9,$59
  !c4
  db 36,$76
  !as3
  db 24,$56
  !gs3
  db 12,$58
  !as3
  db 36,$56
  !c4
  db 27
  !gs3
  db 9,$59
  !c4
  db 36,$56
  !f4
  db 27
  !c4
  db 9,$59
  !gs3
  db 36,$57
  !g3
  db 27
  !g3
  db 9,$59
  !b3
  db 36,$56
  !e4
  db 12
  !b3
  !e4
  !g4
  db 36
  !b4
  db 11,$58
  !ds4
  db 10
  !e4
  db 8,$59
  !g4
  db 8,$5A
  !b4
  db 18,$1A
  !c5
  db 16
  !rest
  !instr,!instr32
  !volume,230
  db 37,$69
  !c3

.pattern4_3
  db 18
  !rest
  !instr,!instr04
  !volume,175
  !pan,11
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !ds5
  db 9,$32
  !ds5
  db 18
  !rest
  db 9,$36
  !ds5
  db 9,$32
  !ds5
  db 18
  !rest
  db 9,$36
  !ds5
  db 9,$32
  !ds5
  db 18
  !rest
  db 9,$36
  !ds5
  db 9,$32
  !ds5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !ds5
  db 9,$32
  !ds5
  db 18
  !rest
  db 9,$36
  !ds5
  db 9,$32
  !ds5
  db 18
  !rest
  db 9,$36
  !ds5
  db 9,$32
  !ds5
  db 18
  !rest
  db 9,$36
  !ds5
  db 9,$32
  !ds5
  db 18
  !rest
  db 9,$36
  !fs5
  db 9,$32
  !fs5
  db 18
  !rest
  db 9,$36
  !fs5
  db 9,$32
  !fs5
  db 18
  !rest
  db 9,$36
  !fs5
  db 9,$32
  !fs5
  db 18
  !rest
  db 9,$36
  !fs5
  db 9,$32
  !fs5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !f5
  db 9,$32
  !f5
  db 18
  !rest
  db 9,$36
  !b4
  db 9,$32
  !b4
  db 18
  !rest
  db 9,$36
  !b4
  db 9,$32
  !b4
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 9,$78
  !as5
  db 27
  !rest
  !pan,10
  !volume,255
  !instr,!instr34
  db 36,$68
  !c4

.pattern4_4
  db 18
  !rest
  !instr,!instr04
  !volume,175
  !pan,10
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  !loop : dw .sub5AD9 : db 2
  db 18
  !rest
  db 9,$36
  !as5
  db 9,$32
  !as5
  db 18
  !rest
  db 9,$36
  !as5
  db 9,$32
  !as5
  db 18
  !rest
  db 9,$36
  !as5
  db 9,$32
  !as5
  db 18
  !rest
  db 9,$36
  !as5
  db 9,$32
  !as5
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 18
  !rest
  db 9,$36
  !b5
  db 9,$32
  !b5
  db 18
  !rest
  db 9,$36
  !b5
  db 9,$32
  !b5
  db 9,$78
  !e6
  db 27
  !rest
  !instr,!instr32
  !volume,170
  !pan,9
  db 36,$63
  !g4

.pattern5_0
  !loop : dw .sub59A8 : db 3
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !loop : dw .sub59A8 : db 3
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !end

.pattern5_1
  !instr,!instr07
  !volume,220
  !endVibrato
  !pan,10
  !loop : dw .sub5A2A : db 1
  !loop : dw .sub59D5 : db 1
  !loop : dw .sub5A2A : db 1
  !loop : dw .sub59D5 : db 1

.pattern5_2
  !instr,!instr04
  !pan,10
  !vibrato,27,27,60
  !volume,175
  !slideIn,2,25,1
  db 72,$64
  !f6
  !endSlide
  db 36,$65
  !e6
  db 36,$66
  !c6
  !b5
  !c6
  db 36,$56
  !g5
  db 36,$66
  !as5
  !slideIn,0,7,1
  db 18,$68
  !gs5
  !endSlide
  db 18,$67
  !f5
  db 108
  !rest
  db 72
  !rest
  !instr,!instr2E
  !volume,240
  db 27,$73
  !a2
  db 9,$74
  !d3
  db 18,$78
  !d3
  !d3
  !instr,!instr04
  !pan,10
  !vibrato,27,27,60
  !volume,175
  !slideIn,2,25,1
  db 72,$64
  !f6
  !endSlide
  db 36,$65
  !e6
  db 36,$66
  !c6
  !b5
  !c6
  db 36,$56
  !e6
  db 36,$65
  !g6
  !slideIn,0,7,1
  db 18,$64
  !gs6
  !endSlide
  db 18,$66
  !f6
  db 108
  !rest
  db 72
  !rest
  !instr,!instr2E
  !volume,240
  db 27,$73
  !a2
  db 9,$74
  !d3
  db 18,$78
  !d3
  !d3

.pattern5_3
  !subtranspose,0
  db 18
  !rest
  !endVibrato
  !instr,!instr04
  !volume,175
  !pan,9
  db 18,$06
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !loop : dw .sub5A4F : db 1
  db 18
  !rest
  db 18,$06
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !loop : dw .sub5A4F : db 1

.pattern5_4
  db 18
  !rest
  !endVibrato
  !instr,!instr04
  !volume,175
  !pan,11
  db 18,$06
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !loop : dw .sub59F8 : db 1
  !loop : dw .sub5A81 : db 2

.pattern6_0
  !loop : dw .sub59A8 : db 3
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !end

.pattern6_1
  !loop : dw .sub5A2A : db 1
  !loop : dw .sub59D5 : db 1

.pattern6_2
  !instr,!instr2B
  !volume,180
  !vibrato,20,20,100
  !slideIn,0,8,1
  db 18,$66
  !f6
  !endSlide
  db 36,$16
  !c6
  db 18,$56
  !b5
  !c6
  !g5
  !gs5
  !f5
  db 72,$76
  !e5
  db 36
  !g5
  !as5
  !slideIn,0,8,1
  db 18,$77
  !gs5
  !endSlide
  db 18,$76
  !c6
  db 108
  !rest
  db 72
  !rest
  !instr,!instr2E
  !volume,240
  db 27,$73
  !a2
  db 9,$74
  !d3
  db 18,$78
  !d3
  !d3

.pattern6_3
  db 18
  !rest
  !instr,!instr04
  !volume,175
  !pan,9
  db 18,$06
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !loop : dw .sub5A4F : db 1

.pattern6_4
  db 18
  !rest
  !instr,!instr04
  !volume,175
  !pan,11
  db 18,$06
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !loop : dw .sub59F8 : db 1

.pattern7_0
  !loop : dw .sub59A8 : db 5
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$77
  %percNote(!instr30-!instr2D)
  db 9,$73
  %percNote(!instr30-!instr2D)
  db 9,$78
  %percNote(!instr30-!instr2D)
  !instr,!instr2E
  !pan,12
  db 9,$76
  !b4
  db 9,$74
  !b4
  !pan,8
  db 9,$77
  !f4
  !pan,11
  db 9,$78
  !d4
  !end

.pattern7_1
  !loop : dw .sub5AFA : db 1
  db 36,$68
  !gs2
  db 36,$66
  !gs3
  db 27,$58
  !gs2
  db 9,$68
  !gs2
  db 18,$16
  !gs3
  db 18,$18
  !gs2
  db 36,$67
  !as2
  db 36,$65
  !as3
  db 27,$57
  !as2
  db 9,$66
  !as2
  db 18,$15
  !as3
  db 18,$17
  !as2
  db 36,$76
  !c3
  db 36,$63
  !c4
  db 27,$56
  !c3
  db 9
  !c3
  db 18,$13
  !c4
  db 18,$18
  !g2
  db 36,$66
  !c3
  db 36,$65
  !as3
  db 27,$56
  !gs3
  db 9,$66
  !gs3
  db 18,$16
  !g3
  !gs3

.pattern7_2
  !loop : dw .sub5B2E : db 1
  db 72,$63
  !c7
  db 36,$65
  !gs6
  db 36,$63
  !c7
  !volume,135
  db 72,$66
  !d7
  db 36,$67
  !as6
  db 36,$66
  !d7
  !slideIn,0,100,1
  !vibrato,70,12,240
  !dynamicVibrato,100
  db 72,$73
  !e7
  !tie
  !dynamicVolume,144,70
  !tie
  !tie

.pattern7_3
  !loop : dw .sub5B50 : db 1
  db 18
  !rest
  db 18,$06
  !c6
  !rest
  !c6
  !rest
  !c6
  !rest
  !c6
  !rest
  !d6
  !rest
  !d6
  !rest
  db 9,$36
  !d6
  db 9,$32
  !d6
  db 18
  !rest
  db 9,$36
  !d6
  db 9,$32
  !d6
  db 18
  !rest
  db 18,$06
  !c6
  !rest
  !c6
  !rest
  !c6
  !rest
  !c6
  !rest
  !as5
  !rest
  !g5
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5

.pattern7_4
  !loop : dw .sub5B6F : db 1
  db 18
  !rest
  db 18,$06
  !ds6
  !rest
  !ds6
  !rest
  !ds6
  !rest
  !ds6
  !rest
  !f6
  !rest
  !f6
  !rest
  db 9,$36
  !f6
  db 9,$32
  !f6
  db 18
  !rest
  db 9,$36
  !f6
  db 9,$32
  !f6
  db 18
  !rest
  db 18,$06
  !g6
  !rest
  !g6
  !rest
  !g6
  !rest
  !g6
  !rest
  !e6
  !rest
  !c6
  !rest
  db 9,$36
  !as5
  db 9,$32
  !as5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5

.pattern8_0
  !loop : dw .sub5B8E : db 8
  !end

.pattern8_1
  !volume,255
  !instr,!instr05
  !loop : dw .sub5BC1 : db 1
  db 27,$66
  !cs3
  db 9,$46
  !cs3
  db 18,$16
  !cs2
  db 9,$47
  !gs2
  db 9,$46
  !c3
  db 18,$06
  !cs3
  !cs3
  !gs2
  !cs3
  db 27,$66
  !c3
  db 9,$46
  !c3
  db 18,$18
  !g2
  db 9,$46
  !g2
  !as2
  db 18,$06
  !c3
  !c3
  !g2
  !c3

.pattern8_2
  !endSlide
  !instr,!instr23
  !volume,180
  !pan,10
  !vibrato,15,27,50
  !loop : dw .sub5C3A : db 1
  !gs4
  db 9,$46
  !gs4
  !c5
  db 18,$06
  !f5
  !g5
  db 36,$56
  !f5
  !c5
  db 18,$06
  !f5
  db 9,$46
  !f5
  !f5
  db 18,$06
  !f5
  !g5
  !gs5
  !gs5
  !as5
  !gs5
  !g5
  db 9,$46
  !g5
  !g5
  db 18,$06
  !g5
  !gs5
  db 54,$36
  !as5
  !instr,!instr01
  !volume,185
  db 9,$46
  !gs5
  !g5

.pattern8_3
  db 27
  !rest
  !instr,!instr0B
  !volume,160
  !pan,8
  db 27,$06
  !gs4
  db 18,$08
  !gs4
  db 36
  !rest
  db 9,$38
  !gs4
  db 27,$06
  !gs4
  !rest
  !g4
  db 18,$08
  !g4
  db 36
  !rest
  db 9,$38
  !g4
  db 27,$06
  !g4
  !rest
  !f4
  db 18,$08
  !f4
  db 36
  !rest
  db 9,$38
  !f4
  db 27,$06
  !f4
  !rest
  !ds4
  db 18,$08
  !ds4
  db 36
  !rest
  db 9,$38
  !ds4
  db 27,$06
  !ds4
  !rest
  !as4
  db 18,$08
  !as4
  db 36
  !rest
  db 9,$38
  !as4
  db 27,$06
  !as4
  !rest
  !gs4
  db 18,$08
  !gs4
  db 36
  !rest
  db 9,$38
  !gs4
  db 27,$06
  !gs4
  !loop : dw .sub5C84 : db 2

.pattern8_4
  db 27
  !rest
  !instr,!instr0B
  !volume,160
  !pan,12
  db 27,$06
  !f5
  db 18,$08
  !f5
  db 36
  !rest
  db 9,$38
  !f5
  db 27,$06
  !f5
  !rest
  !ds5
  db 18,$08
  !ds5
  db 36
  !rest
  db 9,$38
  !ds5
  db 27,$06
  !ds5
  !loop : dw .sub5C92 : db 2
  !rest
  !gs4
  db 18,$08
  !gs4
  db 36
  !rest
  db 9,$38
  !gs4
  db 27,$06
  !gs4
  !rest
  !as4
  db 18,$08
  !as4
  db 36
  !rest
  db 9,$38
  !as4
  db 27,$06
  !as4

.pattern9_0
  !loop : dw .sub5B8E : db 6
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  db 9,$71
  %percNote(!instr30-!instr2D)
  db 9,$73
  %percNote(!instr30-!instr2D)
  db 72,$77
  %percNote(!instr30-!instr2D)
  !rest
  !end

.pattern9_1
  !loop : dw .sub5BC1 : db 1
  db 18,$46
  !cs3
  db 9
  !cs3
  db 9,$43
  !cs4
  db 18,$46
  !cs3
  db 9
  !cs3
  db 9,$43
  !cs4
  db 18,$46
  !cs3
  db 9
  !cs3
  db 9,$43
  !cs4
  db 18,$46
  !cs3
  db 9
  !cs3
  db 9,$43
  !cs4
  db 54,$06
  !c3
  db 9,$46
  !as2
  !b2
  db 36,$06
  !c3
  !instr,!instr34
  db 36,$67
  !c4

.pattern9_2
  !loop : dw .sub5C3A : db 1
  !gs4
  db 6,$69
  !f4
  db 6,$68
  !gs4
  !c5
  db 18,$06
  !f5
  db 6,$69
  !gs4
  db 6,$68
  !c5
  !f5
  db 18,$06
  !gs5
  db 6,$69
  !c5
  db 6,$68
  !f5
  !gs5
  db 18,$06
  !c6
  db 6,$69
  !f5
  db 6,$68
  !gs5
  !c6
  db 27,$66
  !f6
  db 5,$76
  !g6
  !f6
  !g6
  db 6
  !f6
  !g6
  db 7
  !f6
  !g6
  !f6
  db 8
  !g6
  !f6
  !g6
  db 10,$65
  !as6
  db 11,$66
  !gs6
  db 12
  !g6
  !f6
  db 36,$06
  !e6
  db 108
  !rest

.pattern9_3
  !instr,!instr1B
  !volume,80
  !dynamicVolume,50,145
  !subtranspose,58
  !vibrato,0,10,40
  db 72,$76
  !f4
  !tie
  !g4
  !tie
  !f4
  !tie
  !ds4
  !tie
  !ds4
  !tie
  db 36
  !c4
  !f4
  !gs4
  !c5
  db 72
  !f5
  !tie
  !volume,180
  !instr,!instr01
  !subtranspose,0
  db 9
  !g5
  db 45
  !rest
  !volume,140
  !instr,!instr32
  !pan,20
  !subtranspose,20
  db 9,$46
  !as5
  !b5
  db 18,$16
  !c6
  db 54
  !rest

.pattern9_4
  !instr,!instr1B
  !volume,80
  !dynamicVolume,50,145
  !subtranspose,58
  !vibrato,0,10,40
  db 72,$76
  !gs4
  !tie
  !as4
  !tie
  !gs4
  !tie
  !gs4
  !tie
  !fs4
  !tie
  db 36
  !f4
  !gs4
  !c5
  !f5
  db 72
  !gs5
  !tie
  !volume,180
  !instr,!instr01
  !subtranspose,0
  db 9
  !as5
  db 45
  !rest
  !instr,!instr32
  !pan,0
  !volume,140
  db 9,$46
  !as5
  !b5
  db 18,$16
  !c6
  db 54
  !rest

.sub59A8
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !end

.sub59D5
  !slideIn,0,12,1
  db 36,$66
  !f3
  !endSlide
  !gs3
  db 36,$54
  !c4
  db 18,$15
  !as3
  db 18,$14
  !c4
  db 36,$66
  !c3
  db 36,$65
  !as3
  db 27,$56
  !gs3
  db 9,$66
  !gs3
  db 18,$16
  !g3
  !gs3
  !end

.sub59F8
  !rest
  !g5
  !rest
  !g5
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 18
  !rest
  db 18,$06
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !g5
  !rest
  !g5
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  !end

.sub5A2A
  !slideIn,0,12,1
  db 36,$76
  !f3
  !endSlide
  db 36,$66
  !gs3
  db 36,$54
  !c4
  db 18,$15
  !as3
  db 18,$14
  !c4
  db 36,$66
  !e3
  !b3
  db 27,$56
  !e3
  db 9,$66
  !e3
  db 18,$14
  !c4
  db 18,$26
  !c3
  !end

.sub5A4F
  !rest
  !e5
  !rest
  !e5
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !as4
  db 9,$32
  !as4
  db 18
  !rest
  db 18,$06
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !e5
  !rest
  !e5
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  db 18
  !rest
  db 9,$36
  !e5
  db 9,$32
  !e5
  !end

.sub5A81
  db 18
  !rest
  db 18,$06
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !g5
  !rest
  !g5
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  db 18
  !rest
  db 9,$36
  !g5
  db 9,$32
  !g5
  !end

.sub5AFA
  db 36,$76
  !f3
  db 36,$64
  !c4
  db 27,$56
  !f3
  db 9
  !f3
  db 18,$14
  !c4
  db 18,$16
  !c3
  db 36,$76
  !fs3
  db 36,$63
  !cs4
  db 27,$56
  !fs3
  db 9
  !fs3
  db 18,$13
  !cs4
  db 18,$16
  !cs3
  !end

.sub5B1D
  db 36,$66
  !c3
  !g3
  db 27,$56
  !c3
  db 9,$66
  !c3
  db 18,$16
  !g3
  db 18,$18
  !g2
  !end

.sub5B2E
  !instr,!instr04
  !volume,145
  !slideIn,0,8,1
  db 18,$67
  !f6
  !endSlide
  db 36,$17
  !g6
  db 36,$15
  !gs6
  db 18,$64
  !as6
  db 36,$63
  !c7
  db 72,$64
  !as6
  db 36,$65
  !gs6
  db 36,$64
  !as6
  !end

.sub5B50
  db 18
  !rest
  db 18,$06
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !f5
  !rest
  !fs5
  !rest
  !fs5
  !rest
  db 9,$36
  !fs5
  db 9,$32
  !fs5
  db 18
  !rest
  db 9,$36
  !fs5
  db 9,$32
  !fs5
  !end

.sub5B6F
  db 18
  !rest
  db 18,$06
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !gs5
  !rest
  !as5
  !rest
  !as5
  !rest
  db 9,$36
  !as5
  db 9,$32
  !as5
  db 18
  !rest
  db 9,$36
  !as5
  db 9,$32
  !as5
  !end

.sub5AA0
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !end

.sub5AD9
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  db 18
  !rest
  db 9,$36
  !gs5
  db 9,$32
  !gs5
  !end

.sub5B8E
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 18,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 18,$77
  !d3
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 18,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  !end

.sub5BC1
  db 27,$66
  !cs3
  db 9,$46
  !cs3
  db 18,$1D
  !cs2
  db 9,$47
  !gs2
  db 9,$46
  !c3
  db 18,$06
  !cs3
  !cs3
  !gs2
  !cs3
  db 27,$66
  !c3
  db 9,$46
  !c3
  db 18,$18
  !g2
  db 9,$48
  !g2
  db 9,$46
  !as2
  db 18,$06
  !c3
  !c3
  !g2
  !c3
  db 27,$66
  !cs3
  db 9,$46
  !cs3
  db 18,$1D
  !cs2
  db 9,$47
  !gs2
  db 9,$46
  !c3
  db 18,$06
  !cs3
  !cs3
  !gs2
  !cs3
  db 27,$66
  !gs3
  db 9,$46
  !gs3
  db 18,$17
  !gs2
  db 9,$46
  !ds3
  !g3
  db 18,$06
  !gs3
  !gs3
  !gs2
  !gs3
  db 27,$66
  !fs3
  db 9,$46
  !fs3
  db 18,$18
  !fs2
  db 9,$46
  !cs3
  !f3
  db 18,$06
  !fs3
  !fs3
  !fs2
  !fs3
  db 27,$66
  !f3
  db 9,$46
  !f3
  db 18,$19
  !f2
  db 9,$46
  !c3
  !ds3
  db 18,$06
  !f3
  !f3
  !f2
  !f3
  !end

.sub5C3A
  db 18,$06
  !f5
  db 9,$46
  !f5
  !f5
  db 18,$06
  !f5
  !g5
  !gs5
  !gs5
  !g5
  !f5
  !ds5
  db 9,$46
  !ds5
  !ds5
  db 18,$06
  !ds5
  !f5
  db 72,$26
  !ds5
  db 18,$06
  !cs5
  db 9,$46
  !cs5
  !cs5
  db 18,$06
  !cs5
  !ds5
  !f5
  !f5
  !ds5
  !cs5
  !c5
  db 9,$46
  !c5
  !c5
  db 18,$06
  !c5
  !cs5
  db 54,$36
  !ds5
  db 9,$46
  !cs5
  !c5
  db 18,$06
  !as4
  db 9,$46
  !as4
  !as4
  db 18,$06
  !as4
  !c5
  !cs5
  !cs5
  !c5
  !as4
  !end

.sub5C84
  !rest
  !f4
  db 18,$08
  !f4
  db 36
  !rest
  db 9,$38
  !f4
  db 27,$06
  !f4
  !end

.sub5C92
  !rest
  !cs5
  db 18,$08
  !cs5
  db 36
  !rest
  db 9,$38
  !cs5
  db 27,$06
  !cs5
  !rest
  !c5
  db 18,$08
  !c5
  db 36
  !rest
  db 9,$38
  !c5
  db 27,$06
  !c5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
