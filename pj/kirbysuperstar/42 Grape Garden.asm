asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr03 = $16
!instr05 = $17
!instr0B = $18
!instr1C = $19
!instr1D = $1A
!instr22 = $1B
!instr23 = $1C
!instr27 = $1D
!instr2B = $1E
!instr2C = $1F
!instr2E = $20
!instr2F = $21
!instr30 = $22

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FC,$E0,$B8,$03,$80
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr1C,$AF,$A1,$B8,$03,$C0
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr27,$8F,$E0,$B8,$03,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample27,Sample27+45
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample_55d7dd5330b8a8ef8525169d9eaa7cd3.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample27: incbin "Sample_55365c24760b7ccb8bdcacbb9417c216.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
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
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echo,%00010000,1,1
  !echoParameters,1,1,2
  !musicVolume,255
  !tempo,51
  !echo,%00011100,34,34
  !echoParameters,5,50,0
  !volume,200
  !pan,10
  !instr,!instr2E
  db 10,$45
  !f5
  db 10,$42
  !f5
  db 10,$49
  !g3
  db 10,$43
  !a3
  db 10,$45
  !d4
  db 10,$42
  !a3
  db 10,$79
  !d4
  !instr,!instr2E
  db 10,$46
  !e5
  !pan,12
  !b4
  !pan,8
  !f4
  !end

.pattern0_1
  db 20
  !rest
  !volume,255
  db 20,$76
  %percNote(!instr2C-!instr2C)
  db 7,$73
  %percNote(!instr30-!instr2C)
  db 6,$71
  %percNote(!instr30-!instr2C)
  db 7,$72
  %percNote(!instr30-!instr2C)
  db 10,$78
  %percNote(!instr30-!instr2C)
  db 10,$76
  %percNote(!instr30-!instr2C)
  db 10,$71
  %percNote(!instr30-!instr2C)
  db 10,$76
  %percNote(!instr30-!instr2C)

.pattern1_0
  !musicVolume,255
  !tempo,51
  !volume,210
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,10
  db 5,$72
  %percNote(!instr30-!instr2C)
  db 5,$73
  %percNote(!instr30-!instr2C)
  !volume,230
  !pan,12
  !instr,!instr2E
  db 10,$76
  !e5
  !e5
  db 10,$73
  !e5
  !pan,8
  db 10,$76
  !b4
  !b4
  db 10,$73
  !b4
  !pan,11
  db 10,$76
  !f4
  db 10,$74
  !f4
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 15
  !rest
  db 5,$72
  %percNote(!instr30-!instr2C)
  db 10,$76
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !instr,!instr2F
  db 5
  !gs6
  db 5,$73
  !gs6
  !echo,%00011100,30,30
  db 5,$75
  !gs6
  db 5,$76
  !gs6
  !end

.pattern1_1
  !volume,235
  !pan,10
  !instr,!instr05
  db 30,$36
  !as2
  db 20,$54
  !as3
  db 10,$56
  !f3
  db 20,$46
  !d3
  db 30,$36
  !as2
  db 20,$54
  !as3
  db 10,$56
  !f3
  db 20
  !d3
  db 30,$36
  !a2
  db 20,$54
  !a3
  db 10,$56
  !e3
  db 20
  !c3
  db 30,$36
  !a2
  db 20,$54
  !a3
  db 10,$56
  !e3
  db 20
  !c3
  db 30,$38
  !g2
  db 20,$56
  !g3
  db 10
  !d3
  db 20
  !as2
  db 20,$58
  !g2
  db 10
  !g2
  db 20,$56
  !g3
  db 10
  !d3
  !g3
  !d3
  !volume,255
  db 10,$36
  !cs3
  db 20
  !cs3
  !cs3
  db 20,$33
  !cs4
  db 10,$36
  !cs3
  db 10,$49
  !fs2
  !fs2
  db 20
  !rest
  db 10,$47
  !c3
  !c3
  db 20
  !rest

.pattern1_2
  !instr,!instr0B
  !volume,160
  !pan,12
  db 10,$26
  !d6
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !d6
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !c6
  !e5
  !g5
  !e5
  !g5
  !e5
  !g5
  !e5
  !c6
  !e5
  !g5
  !e5
  !g5
  !e5
  !g5
  !e5
  !dynamicVolume,160,170
  !d6
  !f5
  !a5
  !f5
  !g5
  !f5
  !a5
  !f5
  !d6
  !f5
  !a5
  !f5
  !g5
  !f5
  !a5
  !f5
  !volume,175
  db 10,$36
  !e5
  db 20,$06
  !e5
  !e5
  !e5
  db 10,$36
  !e5
  !cs5
  !cs5
  db 20
  !rest
  db 10
  !e5
  !e5
  db 20
  !rest

.pattern1_3
  !instr,!instr0B
  !volume,160
  !pan,8
  db 10,$26
  !f6
  !as5
  !d6
  !as5
  !c6
  !as5
  !d6
  !as5
  !f6
  !as5
  !d6
  !as5
  !c6
  !as5
  !d6
  !as5
  !e6
  !a5
  !c6
  !a5
  !b5
  !a5
  !c6
  !a5
  !e6
  !a5
  !c6
  !a5
  !b5
  !a5
  !c6
  !a5
  !dynamicVolume,160,170
  !f6
  !as5
  !d6
  !as5
  !c6
  !as5
  !d6
  !as5
  !f6
  !as5
  !d6
  !as5
  !c6
  !as5
  !d6
  !as5
  !volume,175
  db 10,$36
  !gs5
  db 20,$06
  !gs5
  !gs5
  !gs5
  db 10,$36
  !gs5
  !e5
  !e5
  db 20
  !rest
  db 10
  !g5
  !gs5
  db 20
  !rest

.pattern1_4
  !instr,!instr03
  !volume,70
  !dynamicVolume,60,125
  !vibrato,50,20,40
  !slideIn,0,20,1
  db 120,$76
  !a7
  !endSlide
  db 20
  !g7
  db 10
  !f7
  !g7
  db 120
  !tie
  db 10
  !f7
  db 30
  !g7
  db 120,$74
  !a7
  !dynamicVolume,30,90
  db 10,$76
  !g7
  db 30
  !a7
  !endVibrato
  !instr,!instr0B
  !volume,175
  db 10,$36
  !b5
  db 20,$06
  !b5
  !b5
  !b5
  db 10,$36
  !b5
  !as5
  !as5
  db 20
  !rest
  db 10
  !as5
  !c6
  db 20
  !rest

.pattern2_0
  !volume,210
  !loop : dw .sub5871 : db 2
  !loop : dw .sub58B6 : db 1
  !end

.pattern2_1
  !volume,255
  !pan,10
  !instr,!instr05
  db 30,$36
  !f2
  db 30,$26
  !f3
  db 20,$46
  !fs2
  db 30,$36
  !g2
  db 30,$26
  !g3
  db 20,$46
  !g2
  !loop : dw .sub5942 : db 1

.pattern2_2
  !loop : dw .sub597F : db 1

.pattern2_3
  !loop : dw .sub5A26 : db 1

.pattern2_4
  !instr,!instr1C
  !volume,190
  !subtranspose,58
  db 30,$16
  !c7
  db 30,$15
  !g7
  db 20,$26
  !c7
  db 20,$27
  !as6
  db 40
  !rest
  db 10,$67
  !a6
  !as6
  !loop : dw .sub5ACD : db 1
  db 20,$28
  !c7
  !instr,!instr1D
  !volume,165
  db 20,$06
  !c6
  db 30
  !c6
  db 20
  !c6
  !c6
  db 10
  !c6
  !c6
  !c6
  db 20,$03
  !c6

.pattern3_0
  !loop : dw .sub5871 : db 2
  !loop : dw .sub5AF6 : db 1
  !end

.pattern3_1
  !loop : dw .sub5B6C : db 1

.pattern3_2
  !loop : dw .sub5BB2 : db 1
  !pan,10
  db 10,$36
  !g6
  !pan,12
  db 10,$32
  !a4
  db 10,$36
  !a5
  db 10,$32
  !a4
  db 10,$36
  !a5
  db 10,$32
  !c5
  !a4
  db 10,$36
  !a5
  db 10,$32
  !a4
  db 10,$36
  !a5
  db 10,$32
  !a4
  db 10,$36
  !a5
  !a5
  !a5
  !instr,!instr23
  !volume,150
  db 10,$38
  !d6
  !e6

.pattern3_3
  !loop : dw .sub5C2B : db 1
  db 10,$36
  !e6
  db 10,$32
  !c5
  db 10,$36
  !e6
  db 10,$32
  !c5
  db 10,$36
  !e6
  db 10,$32
  !e5
  !c5
  db 10,$36
  !e6
  db 10,$32
  !c5
  db 10,$36
  !e6
  db 10,$32
  !c5
  db 10,$36
  !e6
  !e6
  !e6
  !instr,!instr23
  !volume,170
  !pan,10
  !vibrato,20,10,12
  db 10,$38
  !f6
  !g6

.pattern3_4
  !volume,190
  db 30,$16
  !c7
  db 30,$15
  !g7
  db 20,$26
  !c7
  db 20,$27
  !as6
  db 60
  !rest
  !loop : dw .sub5CA4 : db 1
  db 20,$28
  !f7
  !instr,!instr1D
  !volume,135
  db 20,$06
  !g6
  db 30
  !g6
  db 20
  !g6
  !g6
  db 10
  !g6
  !g6
  !g6
  db 20
  !g6

.pattern4_0
  !loop : dw .sub5871 : db 3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,10
  db 10,$78
  %percNote(!instr30-!instr2C)
  !loop : dw .sub5871 : db 3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !pan,8
  db 10,$72
  !a3
  !end

.pattern4_1
  !loop : dw .sub5CD0 : db 2
  db 30
  !a2
  db 30,$36
  !a3
  db 20,$46
  !a2
  db 30,$36
  !a2
  !a3
  db 20,$46
  !a2
  db 30,$36
  !a2
  !a3
  db 20,$46
  !a2
  db 30,$36
  !a2
  !a3
  db 20,$46
  !a2
  db 30,$36
  !g2
  !g3
  db 20
  !g2
  db 30
  !g2
  !g3
  db 20,$46
  !g2
  db 30,$36
  !g2
  !g3
  db 20,$46
  !g2
  db 30,$36
  !g2
  !g3
  db 20,$46
  !g2
  db 30
  !f2
  db 30,$36
  !f3
  db 20,$46
  !f2
  db 30,$36
  !f2
  !f3
  db 20,$46
  !f2
  db 30,$36
  !f2
  !f3
  db 20,$46
  !f2
  db 30,$36
  !f2
  !f3
  db 20,$46
  !f2

.pattern4_2
  db 60,$36
  !f6
  db 10
  !d6
  !e6
  db 30
  !f6
  !e6
  db 20
  !d6
  db 40
  !c6
  db 100,$46
  !as5
  db 10,$36
  !d6
  !d6
  db 80,$76
  !g5
  db 80,$38
  !tie
  !instr,!instr2B
  !volume,150
  db 10,$36
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  !e5
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  db 20,$06
  !e5
  !volume,150
  !instr,!instr23
  db 10,$36
  !as5
  !c6
  db 60
  !d6
  db 10
  !d6
  !e6
  db 30
  !f6
  !e6
  db 20
  !d6
  db 40
  !c6
  db 100,$46
  !as5
  db 10,$36
  !d6
  !d6
  db 80,$76
  !a5
  db 80,$38
  !tie
  !endVibrato
  !instr,!instr2B
  !volume,150
  db 10,$36
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  !e5
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  !e5

.pattern4_3
  db 60,$36
  !a6
  db 10
  !f6
  !g6
  db 30
  !a6
  !g6
  db 20
  !f6
  !loop : dw .sub5CDF : db 1
  !instr,!instr2B
  !volume,150
  db 10,$36
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  !g5
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  db 20,$06
  !g5
  !instr,!instr23
  !volume,170
  db 10,$36
  !d6
  !e6
  db 60
  !f6
  db 10
  !f6
  !g6
  db 30
  !a6
  !g6
  db 20
  !f6
  !loop : dw .sub5CDF : db 1
  !endVibrato
  !instr,!instr2B
  !volume,150
  db 10,$36
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  !g5
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  !g5

.pattern4_4
  !pan,8
  !subtranspose,0
  !instr,!instr0B
  !volume,160
  db 10,$76
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !a4
  !e5
  !c5
  !e5
  !a4
  !e5
  !c5
  !e5
  !a4
  !e5
  !c5
  !e5
  !a4
  !e5
  !c5
  !e5
  !g4
  !a4
  !c5
  !g4
  !a4
  !c5
  !g4
  !a4
  !g4
  !a4
  !c5
  !g4
  !a4
  !c5
  !f5
  !g5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !g5
  !d5
  !g5
  !as4
  !f5
  !d5
  !f5
  !as4
  !g5
  !d5
  !g5
  !as4
  !f5
  !d5
  !f5
  !f4
  !c5
  !a4
  !c5
  !f4
  !c5
  !a4
  !c5
  !f4
  !c5
  !a4
  !c5
  !f4
  !c5
  !a4
  !c5
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !f4
  !c5
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !instr,!instr22
  !volume,165
  !pan,10
  !vibrato,30,7,20
  db 10,$36
  !f6
  !g6

.pattern5_0
  !loop : dw .sub5871 : db 6
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,10
  db 5,$72
  %percNote(!instr30-!instr2C)
  db 5,$73
  %percNote(!instr30-!instr2C)
  !pan,10
  db 20,$79
  %percNote(!instr30-!instr2C)
  db 10
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$76
  !a4
  db 20,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$76
  !a4
  db 20,$79
  !a4
  db 10,$76
  !a4
  db 10,$79
  !a4
  db 10,$75
  !a4
  db 10,$79
  !b4
  db 10,$75
  !b4
  !pan,12
  db 10,$79
  !g4
  !pan,8
  db 10,$75
  !g4
  !end

.pattern5_1
  db 30,$36
  !as2
  db 20,$76
  !as3
  db 10,$75
  !f3
  db 20,$56
  !as2
  db 30,$36
  !c3
  db 20,$75
  !c4
  db 10
  !g3
  db 20,$56
  !c3
  db 30,$36
  !d3
  db 20,$75
  !d4
  db 10
  !a3
  db 20,$56
  !d3
  db 30,$36
  !d3
  db 20,$75
  !d4
  db 10
  !a3
  db 20,$56
  !d3
  db 30,$46
  !cs3
  db 20,$75
  !cs4
  db 10
  !gs3
  db 20,$56
  !cs3
  db 30,$36
  !cs3
  db 20,$75
  !cs4
  db 10
  !gs3
  db 20,$56
  !cs3
  !loop : dw .sub5CEF : db 2
  db 30,$36
  !cs3
  db 20,$75
  !cs4
  db 10
  !gs3
  db 20,$56
  !cs3
  db 30,$36
  !cs3
  db 20,$75
  !cs4
  db 10,$76
  !gs3
  db 20,$56
  !cs3
  db 30,$46
  !cs3
  db 20,$75
  !cs4
  db 10
  !gs3
  db 20,$56
  !cs3
  db 30,$36
  !cs3
  db 20,$75
  !cs4
  db 10,$76
  !gs3
  db 20,$56
  !cs3
  db 30,$36
  !fs2
  db 20,$76
  !fs3
  db 10,$75
  !cs3
  db 20,$56
  !fs2
  db 30,$36
  !fs2
  db 10,$56
  !fs3
  !c3
  db 10,$35
  !c4
  db 20,$77
  !c3

.pattern5_2
  !instr,!instr0B
  !volume,160
  !pan,12
  db 10,$36
  !cs5
  !as4
  !gs5
  !f5
  !cs5
  !as4
  !gs5
  !f5
  !ds5
  !c5
  !as5
  !g5
  !ds5
  !c5
  !as5
  !g5
  !d5
  !a4
  !a5
  !f5
  !d5
  !a4
  !a5
  !f5
  !d5
  !a4
  !a5
  !f5
  !d5
  !a4
  !a5
  !f5
  !loop : dw .sub5D06 : db 2
  !loop : dw .sub5D17 : db 2
  db 10,$33
  !cs5
  db 10,$34
  !gs4
  !gs5
  db 10,$35
  !e5
  !cs5
  db 10,$36
  !gs4
  !gs5
  !e5
  !cs5
  !gs4
  !gs5
  !e5
  !cs5
  !gs4
  !gs5
  !e5
  !cs5
  !gs4
  !fs5
  !cs5
  !cs5
  !gs4
  !fs5
  !cs5
  !cs5
  !gs4
  !fs5
  !cs5
  !e5
  db 10,$35
  !c5
  !as5
  db 10,$34
  !g5

.pattern5_3
  !instr,!instr0B
  !volume,160
  !pan,8
  db 10,$36
  !f5
  !cs5
  !cs6
  !gs5
  !f5
  !cs5
  !cs6
  !gs5
  !g5
  !ds5
  !ds6
  !as5
  !g5
  !ds5
  !ds6
  !as5
  !f5
  !d5
  !c6
  !a5
  !f5
  !d5
  !c6
  !a5
  !f5
  !d5
  !c6
  !a5
  !f5
  !d5
  !c6
  !a5
  !loop : dw .sub5D28 : db 2
  !loop : dw .sub5D39 : db 2
  db 10,$33
  !e5
  db 10,$34
  !cs5
  !b5
  db 10,$35
  !gs5
  !e5
  db 10,$36
  !cs5
  !b5
  !gs5
  !e5
  !cs5
  !b5
  !gs5
  !e5
  !cs5
  !b5
  !gs5
  !e5
  !cs5
  !as5
  !fs5
  !e5
  !cs5
  !as5
  !fs5
  !e5
  !cs5
  !as5
  !fs5
  !c5
  db 10,$35
  !g4
  !g5
  db 10,$34
  !c5

.pattern5_4
  db 60,$46
  !gs6
  db 10,$38
  !g6
  !gs6
  db 30,$48
  !as6
  db 30,$46
  !gs6
  db 20,$76
  !as6
  db 40,$08
  !c7
  db 100,$56
  !f6
  db 10,$38
  !f6
  !g6
  db 30,$48
  !gs6
  db 30,$46
  !g6
  db 100,$76
  !f6
  !instr,!instr03
  !tremolo,20,12,120
  !endVibrato
  !volume,100
  !pan,7
  db 30,$46
  !gs7
  !g7
  db 80,$76
  !f7
  !volume,165
  !vibrato,30,7,20
  !endTremolo
  !pan,10
  !instr,!instr22
  db 10,$38
  !f6
  !g6
  db 30,$48
  !gs6
  db 30,$46
  !fs6
  db 100,$76
  !e6
  !instr,!instr03
  !endVibrato
  !tremolo,20,12,120
  !volume,100
  !pan,13
  db 30,$46
  !gs7
  !fs7
  db 100,$76
  !e7
  !endTremolo
  !pan,10
  !volume,160
  !instr,!instr0B
  db 10,$33
  !gs5
  db 10,$34
  !e5
  !e6
  db 10,$35
  !b5
  !gs5
  db 10,$36
  !e5
  !e6
  !b5
  !gs5
  !e5
  !e6
  !b5
  !gs5
  !e5
  !e6
  !b5
  !gs5
  !e5
  !e6
  !as5
  !gs5
  !e5
  !e6
  !as5
  !gs5
  !e5
  !e6
  !as5
  !g5
  db 10,$35
  !e5
  !e6
  db 10,$34
  !as5

.pattern6_0
  !volume,210
  !loop : dw .sub5871 : db 2
  !loop : dw .sub58B6 : db 1
  !loop : dw .sub5871 : db 2
  !loop : dw .sub5AF6 : db 1
  !end

.pattern6_1
  db 30,$36
  !f2
  db 30,$26
  !f3
  db 20,$46
  !fs2
  db 30,$36
  !g2
  db 30,$26
  !g3
  db 20,$46
  !g2
  !loop : dw .sub5942 : db 1
  !loop : dw .sub5B6C : db 1

.pattern6_2
  !loop : dw .sub597F : db 1
  !loop : dw .sub5BB2 : db 1
  !pan,10
  db 10,$36
  !g6
  !pan,12
  db 10,$32
  !a4
  db 10,$36
  !a5
  db 10,$32
  !a4
  db 10,$36
  !a5
  db 10,$32
  !c5
  !a4
  db 10,$36
  !a5
  db 10,$32
  !a4
  db 10,$36
  !a5
  db 10,$32
  !a4
  db 10,$36
  !a5
  !a5
  !a5
  !instr,!instr23
  !volume,150
  !d6
  !e6

.pattern6_3
  !loop : dw .sub5A26 : db 1
  !loop : dw .sub5C2B : db 1
  db 10,$36
  !e6
  db 10,$32
  !c5
  db 10,$36
  !e6
  db 10,$32
  !c5
  db 10,$36
  !e6
  db 10,$32
  !e5
  !c5
  db 10,$36
  !e6
  db 10,$32
  !c5
  db 10,$36
  !e6
  db 10,$32
  !c5
  db 10,$36
  !e6
  !e6
  !e6
  !instr,!instr23
  !volume,170
  !pan,10
  !vibrato,20,10,12
  !f6
  !g6

.pattern6_4
  !instr,!instr03
  !volume,160
  db 30,$16
  !c7
  db 30,$15
  !g7
  db 20,$26
  !c7
  db 20,$27
  !as6
  db 40
  !rest
  db 10,$67
  !a6
  !as6
  !loop : dw .sub5ACD : db 1
  db 20,$28
  !c7
  !subtranspose,58
  !instr,!instr1D
  !volume,170
  db 20,$06
  !c6
  db 30
  !c6
  db 20
  !c6
  !c6
  db 10
  !c6
  !c6
  !c6
  db 20
  !c6
  !subtranspose,0
  !instr,!instr03
  !volume,165
  db 30,$16
  !c7
  db 30,$15
  !g7
  db 20,$26
  !c7
  db 20,$27
  !as6
  db 60
  !rest
  !loop : dw .sub5CA4 : db 1
  db 20,$18
  !f7
  !instr,!instr1D
  !subtranspose,58
  !volume,140
  db 20,$06
  !g6
  db 30
  !g6
  db 20
  !g6
  !g6
  db 10
  !g6
  !g6
  !g6
  db 20
  !g6

.pattern7_0
  !loop : dw .sub5871 : db 3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,10
  db 10,$78
  %percNote(!instr30-!instr2C)
  !loop : dw .sub5871 : db 3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !pan,8
  db 10,$72
  !a3
  !end

.pattern7_1
  !loop : dw .sub5CD0 : db 2
  db 30
  !a2
  db 30,$36
  !a3
  db 20,$46
  !a2
  db 30,$36
  !a2
  !a3
  db 20,$46
  !a2
  db 30,$36
  !a2
  !a3
  db 20,$46
  !a2
  db 30,$36
  !a2
  !a3
  db 20,$46
  !a2
  db 30,$36
  !g2
  !g3
  db 20
  !g2
  db 30
  !g2
  !g3
  db 20,$46
  !g2
  db 30,$36
  !g2
  !g3
  db 20,$46
  !g2
  db 30,$36
  !g2
  !g3
  db 20,$46
  !g2
  db 30
  !f2
  db 30,$36
  !f3
  db 20,$46
  !f2
  db 30,$36
  !f2
  !f3
  db 20,$46
  !f2
  db 30,$36
  !f2
  !f3
  db 20,$46
  !f2
  db 30,$36
  !f2
  !f3
  db 20,$46
  !f2

.pattern7_2
  db 60,$36
  !f6
  db 10
  !d6
  !e6
  db 30
  !f6
  !e6
  db 20
  !d6
  db 40
  !c6
  db 100,$46
  !as5
  db 10,$36
  !d6
  !d6
  db 80,$76
  !g5
  db 80,$38
  !tie
  !instr,!instr2B
  !volume,150
  db 10,$36
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  !e5
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  db 20,$06
  !e5
  !volume,150
  !instr,!instr23
  db 10,$36
  !as5
  !c6
  db 60
  !d6
  db 10
  !d6
  !e6
  db 30
  !f6
  !e6
  db 20
  !d6
  db 40
  !c6
  db 100,$46
  !as5
  db 10,$36
  !d6
  !d6
  db 80,$76
  !a5
  db 80,$38
  !tie
  !endVibrato
  !instr,!instr2B
  !volume,150
  db 10,$36
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  !e5
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  db 20,$06
  !e5
  db 10,$36
  !c5
  !e5

.pattern7_3
  db 60,$36
  !a6
  db 10
  !f6
  !g6
  db 30
  !a6
  !g6
  db 20
  !f6
  !loop : dw .sub5CDF : db 1
  !instr,!instr2B
  !volume,150
  db 10,$36
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  !g5
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  db 20,$06
  !g5
  !instr,!instr23
  !volume,170
  db 10,$36
  !d6
  !e6
  db 60
  !f6
  db 10
  !f6
  !g6
  db 30
  !a6
  !g6
  db 20
  !f6
  !loop : dw .sub5CDF : db 1
  !endVibrato
  !instr,!instr2B
  !volume,150
  db 10,$36
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  !g5
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  db 20,$06
  !g5
  db 10,$36
  !e5
  !g5

.pattern7_4
  !pan,8
  !subtranspose,0
  !instr,!instr0B
  !volume,160
  db 10,$76
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !a4
  !e5
  !c5
  !e5
  !a4
  !e5
  !c5
  !e5
  !a4
  !e5
  !c5
  !e5
  !a4
  !e5
  !c5
  !e5
  !g4
  !a4
  !c5
  !g4
  !a4
  !c5
  !g4
  !a4
  !g4
  !a4
  !c5
  !g4
  !a4
  !c5
  !f5
  !g5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !f5
  !d5
  !f5
  !as4
  !g5
  !d5
  !g5
  !as4
  !f5
  !d5
  !f5
  !as4
  !g5
  !d5
  !g5
  !as4
  !f5
  !d5
  !f5
  !f4
  !c5
  !a4
  !c5
  !f4
  !c5
  !a4
  !c5
  !f4
  !c5
  !a4
  !c5
  !f4
  !c5
  !a4
  !c5
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !f4
  !c5
  !f4
  !a4
  !c5
  !f4
  !a4
  !c5
  !instr,!instr22
  !volume,165
  !pan,10
  !vibrato,30,7,20
  db 10,$36
  !f6
  !g6

.pattern8_0
  !loop : dw .sub5871 : db 6
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,10
  db 5,$72
  %percNote(!instr30-!instr2C)
  db 5,$73
  %percNote(!instr30-!instr2C)
  !pan,10
  db 20,$79
  %percNote(!instr30-!instr2C)
  db 10
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$76
  !a4
  db 20,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$76
  !a4
  db 20,$79
  !a4
  db 10,$76
  !a4
  db 10,$79
  !a4
  db 10,$75
  !a4
  db 10,$79
  !b4
  db 10,$75
  !b4
  !pan,12
  db 10,$79
  !g4
  !pan,8
  db 10,$75
  !g4
  !end

.pattern8_1
  db 30,$36
  !as2
  db 20,$76
  !as3
  db 10,$75
  !f3
  db 20,$56
  !as2
  db 30,$36
  !c3
  db 20,$75
  !c4
  db 10
  !g3
  db 20,$56
  !c3
  db 30,$36
  !d3
  db 20,$75
  !d4
  db 10
  !a3
  db 20,$56
  !d3
  db 30,$36
  !d3
  db 20,$75
  !d4
  db 10
  !a3
  db 20,$56
  !d3
  db 30,$46
  !cs3
  db 20,$75
  !cs4
  db 10
  !gs3
  db 20,$56
  !cs3
  db 30,$36
  !cs3
  db 20,$75
  !cs4
  db 10
  !gs3
  db 20,$56
  !cs3
  !loop : dw .sub5CEF : db 2
  db 30,$36
  !cs3
  db 20,$75
  !cs4
  db 10
  !gs3
  db 20,$56
  !cs3
  db 30,$36
  !cs3
  db 20,$75
  !cs4
  db 10,$76
  !gs3
  db 20,$56
  !cs3
  db 30,$46
  !cs3
  db 20,$75
  !cs4
  db 10
  !gs3
  db 20,$56
  !cs3
  db 30,$36
  !cs3
  db 20,$75
  !cs4
  db 10,$76
  !gs3
  db 20,$56
  !cs3
  db 30,$36
  !fs2
  db 20,$76
  !fs3
  db 10,$75
  !cs3
  db 20,$56
  !fs2
  db 30,$36
  !fs2
  db 10,$56
  !fs3
  !c3
  db 10,$35
  !c4
  db 20,$77
  !c3

.pattern8_2
  !instr,!instr0B
  !volume,160
  !pan,12
  db 10,$36
  !cs5
  !as4
  !gs5
  !f5
  !cs5
  !as4
  !gs5
  !f5
  !ds5
  !c5
  !as5
  !g5
  !ds5
  !c5
  !as5
  !g5
  !d5
  !a4
  !a5
  !f5
  !d5
  !a4
  !a5
  !f5
  !d5
  !a4
  !a5
  !f5
  !d5
  !a4
  !a5
  !f5
  !loop : dw .sub5D06 : db 2
  !loop : dw .sub5D17 : db 2
  db 10,$33
  !cs5
  db 10,$34
  !gs4
  !gs5
  db 10,$35
  !e5
  !cs5
  db 10,$36
  !gs4
  !gs5
  !e5
  !cs5
  !gs4
  !gs5
  !e5
  !cs5
  !gs4
  !gs5
  !e5
  !cs5
  !gs4
  !fs5
  !cs5
  !cs5
  !gs4
  !fs5
  !cs5
  !cs5
  !gs4
  !fs5
  !cs5
  !e5
  db 10,$35
  !c5
  !as5
  db 10,$34
  !g5

.pattern8_3
  !instr,!instr0B
  !volume,160
  !pan,8
  db 10,$36
  !f5
  !cs5
  !cs6
  !gs5
  !f5
  !cs5
  !cs6
  !gs5
  !g5
  !ds5
  !ds6
  !as5
  !g5
  !ds5
  !ds6
  !as5
  !f5
  !d5
  !c6
  !a5
  !f5
  !d5
  !c6
  !a5
  !f5
  !d5
  !c6
  !a5
  !f5
  !d5
  !c6
  !a5
  !loop : dw .sub5D28 : db 2
  !loop : dw .sub5D39 : db 2
  db 10,$33
  !e5
  db 10,$34
  !cs5
  !b5
  db 10,$35
  !gs5
  !e5
  db 10,$36
  !cs5
  !b5
  !gs5
  !e5
  !cs5
  !b5
  !gs5
  !e5
  !cs5
  !b5
  !gs5
  !e5
  !cs5
  !as5
  !fs5
  !e5
  !cs5
  !as5
  !fs5
  !e5
  !cs5
  !as5
  !fs5
  !c5
  db 10,$35
  !g4
  !g5
  db 10,$34
  !c5

.pattern8_4
  db 60,$46
  !gs6
  db 10,$38
  !g6
  !gs6
  db 30,$48
  !as6
  db 30,$46
  !gs6
  db 20,$76
  !as6
  db 40,$08
  !c7
  db 100,$56
  !f6
  db 10,$38
  !f6
  !g6
  db 30,$48
  !gs6
  db 30,$46
  !g6
  db 100,$76
  !f6
  !instr,!instr03
  !tremolo,20,12,120
  !endVibrato
  !volume,100
  !pan,7
  db 30,$46
  !gs7
  !g7
  db 80,$76
  !f7
  !volume,165
  !vibrato,30,7,20
  !endTremolo
  !pan,10
  !instr,!instr22
  db 10,$38
  !f6
  !g6
  db 30,$48
  !gs6
  db 30,$46
  !fs6
  db 100,$76
  !e6
  !instr,!instr03
  !endVibrato
  !tremolo,20,12,120
  !volume,100
  !pan,13
  db 30,$46
  !gs7
  !fs7
  db 100,$76
  !e7
  !endTremolo
  !pan,10
  !volume,160
  !instr,!instr0B
  db 10,$33
  !gs5
  db 10,$34
  !e5
  !e6
  db 10,$35
  !b5
  !gs5
  db 10,$36
  !e5
  !e6
  !b5
  !gs5
  !e5
  !e6
  !b5
  !gs5
  !e5
  !e6
  !b5
  !gs5
  !e5
  !e6
  !as5
  !gs5
  !e5
  !e6
  !as5
  !gs5
  !e5
  !e6
  !as5
  !g5
  db 10,$35
  !e5
  !e6
  db 10,$34
  !as5

.sub5871
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !end

.sub58B6
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,10
  db 5,$72
  %percNote(!instr30-!instr2C)
  db 5,$73
  %percNote(!instr30-!instr2C)
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,10
  db 10,$78
  %percNote(!instr30-!instr2C)
  !end

.sub5942
  db 30,$36
  !a2
  db 30,$26
  !a3
  db 20,$46
  !a2
  db 30,$36
  !g2
  db 30,$26
  !g3
  db 20,$46
  !g2
  db 30,$36
  !f2
  db 30,$26
  !f3
  db 20,$46
  !fs2
  db 30,$36
  !g2
  db 30,$26
  !g3
  db 20,$46
  !g2
  db 30,$36
  !c3
  db 30,$25
  !c4
  db 20,$46
  !c3
  db 30,$36
  !c3
  db 10,$45
  !c4
  db 10,$76
  !c3
  db 10,$75
  !c4
  db 20,$76
  !c3
  !end

.sub597F
  !volume,180
  !instr,!instr27
  !pan,12
  db 10,$36
  !a5
  db 10,$32
  !e5
  !c5
  db 10,$36
  !a5
  db 10,$32
  !e5
  !c5
  db 10,$36
  !a5
  db 10,$32
  !ds5
  db 10,$36
  !as5
  db 10,$32
  !f5
  !d5
  db 10,$36
  !as5
  db 10,$32
  !f5
  !d5
  db 10,$36
  !as5
  db 10,$32
  !f5
  db 10,$36
  !c6
  db 10,$32
  !g5
  !e5
  db 10,$36
  !c6
  db 10,$32
  !g5
  !e5
  db 10,$36
  !c6
  db 10,$32
  !fs5
  db 10,$36
  !as5
  db 10,$32
  !f5
  !d5
  db 10,$36
  !as5
  db 10,$32
  !f5
  !d5
  db 10,$36
  !as5
  db 10,$32
  !f5
  db 10,$36
  !a5
  db 10,$32
  !e5
  !c5
  db 10,$36
  !a5
  db 10,$32
  !e5
  !c5
  db 10,$36
  !a5
  db 10,$32
  !ds5
  db 10,$36
  !as5
  db 10,$32
  !f5
  !d5
  db 10,$36
  !as5
  db 10,$32
  !f5
  !d5
  db 10,$36
  !as5
  db 10,$32
  !d5
  db 10,$36
  !gs5
  db 10,$32
  !c5
  db 10,$36
  !gs5
  db 10,$32
  !c5
  db 10,$36
  !gs5
  db 10,$32
  !e5
  !c5
  db 10,$36
  !gs5
  db 10,$32
  !c5
  db 10,$36
  !gs5
  db 10,$32
  !c5
  db 10,$36
  !gs5
  !gs5
  !gs5
  !gs5
  db 10,$32
  !c5
  !end

.sub5A26
  !volume,180
  !instr,!instr27
  !pan,8
  db 10,$36
  !e6
  db 10,$32
  !a5
  !e5
  db 10,$36
  !e6
  db 10,$32
  !a5
  !e5
  db 10,$36
  !e6
  db 10,$32
  !fs5
  db 10,$36
  !f6
  db 10,$32
  !as5
  !g5
  db 10,$36
  !f6
  db 10,$32
  !as5
  !g5
  db 10,$36
  !f6
  db 10,$32
  !as5
  db 10,$36
  !g6
  db 10,$32
  !c6
  !g5
  db 10,$36
  !g6
  db 10,$32
  !c6
  !g5
  db 10,$36
  !fs6
  db 10,$32
  !a5
  db 10,$36
  !f6
  db 10,$32
  !as5
  !f5
  db 10,$36
  !f6
  db 10,$32
  !as5
  !f5
  db 10,$36
  !f6
  db 10,$32
  !as5
  db 10,$36
  !e6
  db 10,$32
  !a5
  !e5
  db 10,$36
  !e6
  db 10,$32
  !a5
  !e5
  db 10,$36
  !e6
  db 10,$32
  !fs5
  db 10,$36
  !f6
  db 10,$32
  !as5
  !f5
  db 10,$36
  !f6
  db 10,$32
  !as5
  !f5
  db 10,$36
  !f6
  db 10,$32
  !f5
  db 10,$36
  !e6
  db 10,$32
  !e5
  db 10,$36
  !e6
  db 10,$32
  !e5
  db 10,$36
  !e6
  db 10,$32
  !gs5
  !e5
  db 10,$36
  !e6
  db 10,$32
  !e5
  db 10,$36
  !e6
  db 10,$32
  !e5
  db 10,$36
  !e6
  !e6
  !e6
  !e6
  db 10,$32
  !e5
  !end

.sub5ACD
  !slideIn,0,4,1
  db 30,$36
  !c7
  !endSlide
  db 30,$15
  !g7
  db 20,$26
  !c7
  db 20,$27
  !as6
  db 60
  !rest
  db 30
  !a6
  db 30,$26
  !as6
  db 20
  !c7
  !slideIn,0,8,1
  db 30,$27
  !d7
  !endSlide
  db 30,$16
  !e7
  db 20,$26
  !f7
  !end

.sub5AF6
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$75
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,8
  db 10,$72
  !a3
  !pan,10
  !instr,!instr2E
  db 10,$79
  !d4
  db 10,$73
  !a3
  db 10,$76
  !d4
  db 10,$72
  !a3
  db 10,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$73
  !a3
  !pan,12
  db 10,$76
  !d4
  !pan,10
  db 5,$72
  %percNote(!instr30-!instr2C)
  db 5,$73
  %percNote(!instr30-!instr2C)
  db 20,$79
  %percNote(!instr30-!instr2C)
  db 10
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$76
  !a4
  db 20,$79
  %percNote(!instr30-!instr2C)
  !instr,!instr2E
  db 10,$76
  !a4
  db 20,$79
  !a4
  db 10,$76
  !a4
  db 10,$79
  !a4
  db 10,$75
  !a4
  db 10,$79
  !b4
  db 10,$75
  !b4
  !pan,12
  db 10,$79
  !g4
  !pan,8
  db 10,$75
  !g4
  !end

.sub5B6C
  db 30,$36
  !f2
  db 30,$26
  !f3
  db 20,$46
  !fs2
  db 30,$36
  !g2
  db 30,$26
  !g3
  db 20,$46
  !g2
  db 30,$36
  !a2
  db 30,$26
  !a3
  db 20,$46
  !a2
  db 30,$36
  !d3
  db 30,$45
  !d4
  db 20,$65
  !c4
  db 30,$46
  !as2
  db 30,$36
  !as3
  db 20,$46
  !as2
  db 30,$36
  !c3
  db 30,$35
  !c4
  db 20,$46
  !c3
  db 30,$36
  !f2
  !f3
  db 20,$46
  !f2
  db 30,$36
  !f2
  db 30,$46
  !f3
  db 20
  !f2
  !end

.sub5BB2
  db 10,$36
  !a5
  db 10,$32
  !e5
  !c5
  db 10,$36
  !a5
  db 10,$32
  !e5
  !c5
  db 10,$36
  !a5
  db 10,$32
  !ds5
  db 10,$36
  !as5
  db 10,$32
  !f5
  !d5
  db 10,$36
  !as5
  db 10,$32
  !f5
  !d5
  db 10,$36
  !as5
  db 10,$32
  !f5
  db 10,$36
  !cs6
  db 10,$32
  !e5
  !cs5
  db 10,$36
  !cs6
  db 10,$32
  !e5
  !cs5
  db 10,$36
  !cs6
  db 10,$32
  !cs5
  db 10,$36
  !f6
  db 10,$32
  !f5
  !c5
  db 10,$36
  !f6
  db 10,$32
  !f5
  !c5
  db 10,$36
  !e6
  db 10,$32
  !c5
  db 10,$36
  !d6
  db 10,$32
  !d5
  !as4
  db 10,$36
  !d6
  db 10,$32
  !d5
  !as4
  db 10,$36
  !d6
  db 10,$32
  !as4
  db 10,$36
  !e6
  db 10,$32
  !e5
  !c5
  db 10,$36
  !e6
  db 10,$32
  !e5
  !c5
  db 10,$36
  !e6
  db 10,$32
  !c5
  !end

.sub5C2B
  db 10,$36
  !e6
  db 10,$32
  !a5
  !e5
  db 10,$36
  !e6
  db 10,$32
  !a5
  !e5
  db 10,$36
  !e6
  db 10,$32
  !fs5
  db 10,$36
  !f6
  db 10,$32
  !as5
  !g5
  db 10,$36
  !f6
  db 10,$32
  !as5
  !g5
  db 10,$36
  !f6
  db 10,$32
  !as5
  db 10,$36
  !g6
  db 10,$32
  !a5
  !g5
  db 10,$36
  !g6
  db 10,$32
  !a5
  !g5
  db 10,$36
  !g6
  db 10,$32
  !g5
  db 10,$36
  !a6
  db 10,$32
  !a5
  !f5
  db 10,$36
  !a6
  db 10,$32
  !a5
  !f5
  db 10,$36
  !g6
  db 10,$32
  !g5
  db 10,$36
  !f6
  db 10,$32
  !f5
  !d5
  db 10,$36
  !f6
  db 10,$32
  !f5
  !d5
  db 10,$36
  !f6
  db 10,$32
  !d5
  db 10,$36
  !g6
  db 10,$32
  !as5
  !g5
  db 10,$36
  !g6
  db 10,$32
  !as5
  !g5
  db 10,$36
  !g6
  db 10,$32
  !g5
  !end

.sub5CA4
  !slideIn,0,7,1
  db 30,$57
  !e7
  !endSlide
  db 30,$15
  !g7
  db 20,$26
  !e7
  db 20,$27
  !f7
  db 40
  !rest
  db 10,$56
  !f7
  !g7
  !slideIn,0,8,1
  db 30,$77
  !a7
  !endSlide
  db 30,$16
  !g7
  db 20,$26
  !f7
  db 40,$07
  !e7
  db 40,$06
  !g7
  !end

.sub5CD0
  db 30,$36
  !as2
  !as3
  db 20,$46
  !as2
  db 30,$36
  !as2
  !as3
  db 20,$46
  !as2
  !end

.sub5CDF
  db 40
  !e6
  db 100,$46
  !d6
  db 10,$36
  !f6
  !g6
  db 80,$76
  !c6
  db 80,$38
  !tie
  !end

.sub5CEF
  db 30,$36
  !cs3
  db 20,$75
  !cs4
  db 10
  !gs3
  db 20,$56
  !cs3
  db 30,$36
  !cs3
  db 20,$75
  !cs4
  db 10
  !gs3
  db 20,$56
  !cs3
  !end

.sub5D06
  !cs5
  !gs4
  !gs5
  !f5
  !cs5
  !gs4
  !gs5
  !f5
  !cs5
  !gs4
  !gs5
  !f5
  !cs5
  !gs4
  !gs5
  !f5
  !end

.sub5D17
  !cs5
  !gs4
  !gs5
  !e5
  !cs5
  !gs4
  !gs5
  !e5
  !cs5
  !gs4
  !gs5
  !e5
  !cs5
  !gs4
  !gs5
  !e5
  !end

.sub5D28
  !f5
  !cs5
  !c6
  !gs5
  !f5
  !cs5
  !c6
  !gs5
  !f5
  !cs5
  !c6
  !gs5
  !f5
  !cs5
  !c6
  !gs5
  !end

.sub5D39
  !e5
  !cs5
  !b5
  !gs5
  !e5
  !cs5
  !b5
  !gs5
  !e5
  !cs5
  !b5
  !gs5
  !e5
  !cs5
  !b5
  !gs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
