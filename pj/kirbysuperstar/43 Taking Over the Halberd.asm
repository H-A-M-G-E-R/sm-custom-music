asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr04 = $18
!instr05 = $19
!instr0B = $1A
!instr19 = $1B
!instr1B = $1C
!instr1C = $1D
!instr22 = $1E
!instr2B = $1F
!instr2C = $20
!instr2D = $21
!instr2E = $22
!instr30 = $23
!instr31 = $24
!instr32 = $25
!instr33 = $26

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr02,$FF,$E0,$B8,$04,$80
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr1C,$AF,$A1,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FF,$E0,$B8,$04,$00
  db !instr32,$FF,$E0,$B8,$02,$50
  db !instr33,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample02,Sample02+765
  dw Sample04,Sample04+1098
  dw Sample05,Sample05+27
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample22,Sample22+315
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+27
  dw Sample32,Sample32+2502
  dw Sample33,Sample33+3267
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample02: incbin "Sample_759514f69dc1ba8eed65c41c2bb81670.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample32: incbin "Sample_8d56d18ccf40f82419c6f6881e3b1271.brr"
  Sample33: incbin "Sample_49e5db46f22a1ff8ea1bc7ae56432f7f.brr"

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
  dw .pattern1
  dw .pattern2
  dw .pattern5
  dw .pattern6
  dw .pattern7
  dw .pattern8
  dw .pattern9
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern1_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern3_0, .pattern3_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, 0, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, 0, 0, 0
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !musicVolume,255
  !tempo,51
  !echo,%00011110,38,38
  !echoParameters,5,60,0
  !loop : dw .sub586F : db 2
  !end

.pattern0_1
  !pan,10
  !instr,!instr05
  !volume,255
  !loop : dw .sub58EF : db 1
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  db 9,$3B
  !e2
  !e2
  db 9,$36
  !e3
  !b2
  db 9,$3B
  !e2
  !e2
  db 9,$36
  !e3
  !b2
  db 9,$3B
  !e2
  !e2
  db 9,$36
  !e3
  !b2
  db 9,$3B
  !e2
  !e2
  db 9,$36
  !e3
  !b2
  !end

.pattern0_2
  !subtranspose,0
  !endVibrato
  !instr,!instr01
  !volume,185
  !pan,8
  db 27,$27
  !a4
  db 27,$37
  !gs4
  db 90
  !rest
  db 27,$27
  !g4
  db 27,$37
  !fs4
  db 90
  !rest
  db 27,$16
  !g4
  db 27,$26
  !g4
  db 90
  !rest
  db 27,$27
  !a4
  db 27,$37
  !gs4
  db 90
  !rest
  !end

.pattern0_3
  !subtranspose,0
  !endVibrato
  !instr,!instr01
  !volume,185
  !pan,12
  db 27,$16
  !c5
  db 27,$26
  !c5
  db 90
  !rest
  db 27,$16
  !c5
  db 27,$26
  !c5
  db 90
  !rest
  db 27,$27
  !c5
  db 27,$37
  !b4
  db 90
  !rest
  db 27,$16
  !b4
  db 27,$26
  !b4
  db 90
  !rest
  !end

.pattern0_4
  !subtranspose,0
  !endVibrato
  !instr,!instr32
  !volume,225
  !pan,10
  db 27,$16
  !e5
  db 27,$26
  !e5
  db 90
  !rest
  db 27,$16
  !e5
  db 27,$26
  !e5
  db 90
  !rest
  db 27,$16
  !ds5
  db 27,$26
  !ds5
  db 90
  !rest
  db 27,$16
  !ds5
  db 27,$26
  !e5
  db 90
  !rest
  !end

.pattern1_0
  !loop : dw .sub586F : db 2
  !end

.pattern1_1
  !loop : dw .sub58EF : db 1
  !loop : dw .sub5932 : db 2
  !end

.pattern1_2
  !subtranspose,58
  !instr,!instr1C
  !volume,210
  !slideIn,0,10,1
  db 27,$46
  !a4
  !endSlide
  db 27,$27
  !gs4
  db 90
  !rest
  !slideIn,0,10,1
  db 27,$46
  !g4
  !endSlide
  db 27,$27
  !fs4
  db 90
  !rest
  !loop : dw .sub5953 : db 2
  !end

.pattern1_3
  !subtranspose,58
  !instr,!instr1C
  !volume,210
  !slideIn,0,10,1
  db 27,$46
  !c5
  !endSlide
  db 27,$27
  !c5
  db 90
  !rest
  !slideIn,0,10,1
  db 27,$46
  !c5
  !endSlide
  db 27,$27
  !c5
  db 90
  !rest
  !slideIn,0,10,1
  db 27,$46
  !c5
  !endSlide
  db 27,$27
  !b4
  db 90
  !rest
  !slideIn,0,10,1
  db 27,$46
  !as4
  !endSlide
  db 27,$27
  !a4
  db 90
  !rest
  !end

.pattern1_4
  db 18
  !rest
  !instr,!instr01
  !volume,185
  !endVibrato
  db 18,$25
  !e6
  db 9,$46
  !c6
  db 18,$26
  !d6
  db 18,$25
  !e6
  db 54
  !rest
  db 9,$41
  !g6
  !loop : dw .sub5961 : db 1
  db 18
  !rest
  db 18,$24
  !g6
  db 9,$46
  !ds6
  db 18,$25
  !f6
  db 9,$44
  !g6
  db 18,$26
  !ds6
  !c6
  db 36
  !rest
  !end

.pattern2_1
  !loop : dw .sub58EF : db 1
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  db 9,$46
  !c3
  !c3
  db 9,$43
  !c4
  db 9,$46
  !g3
  db 9,$56
  !c3
  !c3
  db 9,$53
  !c4
  db 9,$56
  !g3
  !end

.pattern2_2
  !subtranspose,60
  !instr,!instr19
  !volume,190
  !slideIn,0,10,1
  db 27,$46
  !a4
  !endSlide
  db 27,$26
  !gs4
  db 90
  !rest
  !slideIn,0,10,1
  db 27,$46
  !g4
  !endSlide
  db 27,$26
  !fs4
  db 90
  !rest
  !slideIn,0,10,1
  db 27,$46
  !ds4
  !endSlide
  db 27,$26
  !ds4
  db 90
  !rest
  !slideIn,0,30,1
  db 72,$66
  !ds4
  db 72,$67
  !ds4
  !end

.pattern2_3
  !subtranspose,60
  !instr,!instr19
  !volume,190
  !loop : dw .sub5987 : db 2
  !slideIn,0,10,1
  db 27,$46
  !c5
  !endSlide
  db 27,$26
  !b4
  db 90
  !rest
  !slideIn,0,30,1
  db 72,$66
  !as4
  db 72,$67
  !a4
  !end

.pattern2_4
  db 18
  !rest
  !instr,!instr31
  !volume,140
  !vibrato,0,25,20
  db 18,$25
  !e6
  db 9,$46
  !c6
  db 18,$26
  !d6
  db 18,$45
  !e6
  db 54
  !rest
  db 9,$41
  !g6
  !loop : dw .sub5961 : db 1
  db 18
  !rest
  db 18,$24
  !ds6
  db 9,$46
  !f6
  db 18,$25
  !g6
  db 18,$24
  !f6
  db 18,$26
  !ds6
  !d6
  db 9,$46
  !ds6
  !d6
  !c6
  !end

.pattern3_0
  !loop : dw .sub5995 : db 4
  !end

.pattern3_1
  !loop : dw .sub59D2 : db 2
  !loop : dw .sub59F3 : db 2
  !end

.pattern3_2
  !subtranspose,0
  !instr,!instr22
  !volume,165
  !endSlide
  !loop : dw .sub5A14 : db 1
  !loop : dw .sub5A37 : db 2
  !end

.pattern3_3
  !subtranspose,0
  !instr,!instr22
  !volume,165
  !endSlide
  !loop : dw .sub5A48 : db 1
  !loop : dw .sub5A6B : db 2
  !end

.pattern3_4
  db 18
  !rest
  !vibrato,0,12,20
  !instr,!instr02
  !volume,170
  db 18,$06
  !c6
  db 9,$46
  !f6
  db 18,$06
  !g6
  db 9,$76
  !ds6
  db 18,$56
  !tie
  db 18,$06
  !c6
  db 9,$46
  !as5
  db 27
  !c6
  db 18
  !rest
  db 18,$06
  !c6
  db 9,$46
  !f6
  db 18,$06
  !g6
  db 27,$55
  !as6
  db 18,$06
  !g6
  db 9,$46
  !f6
  db 27
  !g6
  db 18
  !rest
  !instr,!instr04
  !volume,180
  db 18,$06
  !gs5
  db 9,$46
  !cs6
  db 18,$06
  !ds6
  db 9,$76
  !b5
  db 18,$56
  !tie
  db 18,$06
  !gs5
  db 9,$46
  !fs5
  db 27
  !gs5
  db 18
  !rest
  db 18,$06
  !gs5
  db 9,$46
  !cs6
  db 18,$06
  !ds6
  db 9,$76
  !fs6
  db 18,$56
  !tie
  db 18,$06
  !ds6
  db 12,$46
  !cs6
  !ds6
  !cs6
  !end

.pattern4_0
  !loop : dw .sub5995 : db 2
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2E
  db 9,$78
  !f3
  db 9,$76
  !e3
  !pan,8
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,12
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$78
  %percNote(!instr33-!instr2C)
  db 9,$75
  %percNote(!instr33-!instr2C)
  db 9,$76
  %percNote(!instr33-!instr2C)
  db 9,$78
  %percNote(!instr33-!instr2C)
  !end

.pattern4_1
  db 9,$6B
  !e2
  !e2
  db 9,$66
  !e3
  !e3
  db 9,$6B
  !e2
  !e2
  db 9,$66
  !e3
  !e3
  db 9,$69
  !f2
  !f2
  db 9,$66
  !f3
  !f3
  db 9,$69
  !f2
  !f2
  db 9,$66
  !f3
  !f3
  db 9,$68
  !g2
  !g2
  db 9,$66
  !g3
  !g3
  db 9,$68
  !g2
  !g2
  db 9,$66
  !g3
  !g3
  db 9,$67
  !a2
  !a2
  db 9,$66
  !a3
  !a3
  db 9,$67
  !a2
  !a2
  db 9,$66
  !a3
  !a3
  !b2
  !b2
  !b3
  !b3
  !b2
  !b2
  !b3
  !b3
  !b2
  !b2
  !b3
  !b3
  db 9,$6B
  !e2
  !e2
  db 9,$66
  !e3
  !e3
  !end

.pattern4_2
  db 9,$56
  !gs4
  !b4
  !gs4
  !b4
  !gs4
  !b4
  !gs4
  !b4
  !gs4
  !c5
  !gs4
  !c5
  !gs4
  !c5
  !gs4
  !c5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !c5
  !e5
  !c5
  !e5
  !c5
  !e5
  !c5
  !e5
  !c5
  !d5
  !c5
  !d5
  !c5
  !d5
  !c5
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !d5
  !b4
  !d5
  !end

.pattern4_3
  db 9,$56
  !ds5
  !e5
  !ds5
  !e5
  !ds5
  !e5
  !ds5
  !e5
  !ds5
  !f5
  !ds5
  !f5
  !ds5
  !f5
  !ds5
  !f5
  !f5
  !g5
  !f5
  !g5
  !f5
  !g5
  !f5
  !g5
  !g5
  !a5
  !g5
  !a5
  !g5
  !a5
  !g5
  !f5
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !e5
  !gs5
  !e5
  !gs5
  !end

.pattern4_4
  db 9,$66
  !b5
  !volume,175
  !as5
  db 30
  !gs5
  db 12
  !fs5
  !gs5
  db 24
  !as5
  db 24,$65
  !ds6
  db 24,$66
  !as5
  !volume,170
  !slideIn,0,7,1
  !c6
  !endSlide
  db 24,$65
  !f6
  db 24,$66
  !c6
  !slideIn,0,7,1
  !e6
  !endSlide
  db 24,$65
  !f6
  db 24,$66
  !g6
  db 24,$65
  !f6
  db 24,$66
  !d6
  db 24,$65
  !f6
  !slideIn,0,6,1
  !gs6
  !endSlide
  db 24,$64
  !a6
  db 24,$63
  !b6
  !end

.pattern5_2
  !endSlide
  !subtranspose,0
  !instr,!instr22
  !volume,165
  !loop : dw .sub5A14 : db 1
  !subtranspose,60
  !instr,!instr19
  !volume,190
  !loop : dw .sub5A37 : db 2
  !end

.pattern5_3
  !endSlide
  !subtranspose,0
  !instr,!instr22
  !volume,165
  !loop : dw .sub5A48 : db 1
  !subtranspose,60
  !instr,!instr19
  !volume,190
  !loop : dw .sub5A6B : db 2
  !end

.pattern5_4
  !vibrato,0,12,20
  !instr,!instr02
  !volume,170
  db 27,$06
  !c6
  db 9,$46
  !c6
  !f6
  db 18,$16
  !g6
  db 9,$76
  !ds6
  db 18,$56
  !tie
  db 18,$06
  !c6
  db 9,$46
  !as5
  db 27
  !c6
  !rest
  db 9
  !c6
  !f6
  db 18,$16
  !g6
  !slideIn,0,9,1
  db 27,$65
  !as6
  !endSlide
  db 18,$06
  !g6
  db 9,$46
  !f6
  db 27
  !g6
  db 18
  !rest
  !instr,!instr19
  !subtranspose,60
  !volume,210
  db 18,$19
  !gs5
  db 9,$46
  !cs6
  db 18,$08
  !ds6
  db 9,$76
  !b5
  db 18,$58
  !tie
  db 18,$08
  !gs5
  db 9,$46
  !fs5
  db 27
  !gs5
  db 18
  !rest
  db 18,$08
  !gs5
  db 9,$46
  !cs6
  db 18,$08
  !ds6
  db 9,$76
  !fs6
  db 18,$58
  !tie
  db 18,$08
  !ds6
  !slideIn,0,9,1
  db 12,$56
  !cs6
  !endSlide
  !ds6
  !cs6
  !end

.pattern6_0
  !loop : dw .sub5A7C : db 3
  !pan,10
  !instr,!instr2E
  db 9,$79
  !d3
  db 9,$77
  !d3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2E
  db 9,$78
  !f3
  !f3
  !pan,8
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,12
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$78
  %percNote(!instr33-!instr2C)
  db 9,$75
  %percNote(!instr33-!instr2C)
  db 9,$76
  %percNote(!instr33-!instr2C)
  db 9,$78
  %percNote(!instr33-!instr2C)
  !end

.pattern6_1
  db 9,$66
  !c3
  !c3
  db 9,$63
  !c4
  db 9,$66
  !c3
  !c3
  !c3
  db 9,$63
  !c4
  db 9,$66
  !c3
  !d3
  !d3
  db 9,$63
  !d4
  db 9,$66
  !d3
  !d3
  !d3
  db 9,$63
  !d4
  db 9,$66
  !d3
  db 9,$6B
  !ds2
  !ds2
  db 9,$66
  !ds3
  db 9,$6B
  !ds2
  !ds2
  !ds2
  db 9,$66
  !ds3
  db 9,$6B
  !ds2
  db 9,$69
  !f2
  !f2
  db 9,$66
  !f3
  db 9,$69
  !f2
  !f2
  !f2
  db 9,$66
  !f3
  db 9,$69
  !f2
  db 9,$68
  !fs2
  !fs2
  db 9,$66
  !fs3
  db 9,$68
  !fs2
  !fs2
  !fs2
  db 9,$66
  !fs3
  db 9,$68
  !fs2
  !gs2
  !gs2
  db 9,$66
  !gs3
  db 9,$68
  !gs2
  !gs2
  !gs2
  db 9,$66
  !gs3
  db 9,$68
  !gs2
  db 9,$67
  !as2
  !as2
  db 9,$66
  !as3
  db 9,$67
  !as2
  !as2
  !as2
  db 9,$66
  !as3
  db 9,$67
  !as2
  !as2
  !as2
  db 9,$66
  !as3
  db 9,$67
  !as2
  !as2
  !as2
  db 9,$66
  !as3
  db 9,$67
  !as2
  !end

.pattern6_2
  db 9,$56
  !as4
  !c5
  !as4
  !c5
  !as4
  !c5
  !as4
  !c5
  !c5
  !d5
  !c5
  !d5
  !c5
  !d5
  !c5
  !d5
  !cs5
  !ds5
  !cs5
  !ds5
  !cs5
  !ds5
  !cs5
  !ds5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !e5
  !fs5
  !e5
  !fs5
  !e5
  !fs5
  !e5
  !fs5
  !fs5
  !gs5
  !fs5
  !gs5
  !fs5
  !gs5
  !fs5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !d5
  !f5
  !d5
  !f5
  !as4
  !d5
  !as4
  !d5
  !gs4
  !as4
  !f4
  !gs4
  !end

.pattern6_3
  db 9,$56
  !ds5
  !g5
  !ds5
  !g5
  !ds5
  !g5
  !ds5
  !g5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !fs5
  !as5
  !fs5
  !as5
  !fs5
  !as5
  !fs5
  !as5
  !gs5
  !c6
  !gs5
  !c6
  !gs5
  !c6
  !gs5
  !c6
  !a5
  !cs6
  !a5
  !cs6
  !a5
  !cs6
  !a5
  !cs6
  !b5
  !ds6
  !b5
  !ds6
  !b5
  !ds6
  !b5
  !ds6
  !as5
  !d6
  !as5
  !d6
  !gs5
  !as5
  !gs5
  !as5
  !f5
  !gs5
  !f5
  !gs5
  !d5
  !f5
  !as4
  !d5
  !end

.pattern6_4
  !vibrato,18,16,40
  !volume,190
  !slideIn,3,7,2
  db 48,$66
  !ds6
  !endSlide
  db 12
  !d6
  !ds6
  db 24
  !f6
  !ds6
  !f6
  db 48
  !fs6
  db 12
  !f6
  !fs6
  db 24,$65
  !gs6
  db 24,$66
  !fs6
  db 24,$65
  !gs6
  db 48
  !a6
  db 12
  !gs6
  !a6
  db 24,$64
  !b6
  db 24,$65
  !a6
  db 24,$64
  !b6
  db 36,$65
  !as6
  !f6
  !d6
  !as5
  !end

.pattern7_0
  !pan,10
  !loop : dw .sub5AB9 : db 4
  !end

.pattern7_1
  !loop : dw .sub5AE8 : db 3
  db 9,$56
  !c3
  !c3
  db 9,$53
  !c4
  !c4
  db 9,$56
  !c3
  !c3
  db 9,$53
  !c4
  !c4
  db 9,$56
  !c3
  !c3
  db 9,$53
  !c4
  !c4
  db 9,$56
  !c3
  !c3
  db 9,$53
  !c4
  !c4
  !end

.pattern7_2
  !instr,!instr04
  !subtranspose,0
  !volume,180
  db 48,$57
  !c5
  db 12,$55
  !a4
  db 12,$57
  !c5
  db 24,$45
  !g4
  db 24,$47
  !b4
  db 24,$45
  !g4
  db 27,$57
  !c5
  db 9,$66
  !f4
  db 90,$67
  !a4
  db 18
  !rest
  db 48,$55
  !a4
  db 12,$57
  !b4
  db 12,$55
  !a4
  db 24,$47
  !d5
  db 24,$45
  !g4
  db 24,$47
  !d5
  db 108,$75
  !c5
  !subtranspose,0
  !instr,!instr2B
  !volume,170
  !slideIn,0,7,1
  db 12,$77
  !c5
  !endSlide
  db 12,$75
  !c5
  db 12,$77
  !g5
  !end

.pattern7_3
  !instr,!instr04
  !subtranspose,0
  !volume,180
  db 48,$55
  !a4
  db 12,$57
  !b4
  db 12,$55
  !a4
  db 24,$47
  !d5
  db 24,$45
  !g4
  db 24,$47
  !d5
  db 27,$55
  !f4
  db 9,$68
  !b4
  db 90,$65
  !f4
  db 18
  !rest
  db 48,$57
  !c5
  db 12,$55
  !a4
  db 12,$57
  !c5
  db 24,$45
  !g4
  db 24,$47
  !b4
  db 24,$45
  !g4
  db 108,$77
  !ds5
  !subtranspose,0
  !instr,!instr2B
  !volume,170
  !slideIn,0,7,1
  db 12,$75
  !c5
  !endSlide
  db 12,$77
  !ds5
  db 12,$75
  !ds5
  !end

.pattern7_4
  !instr,!instr30
  !volume,150
  !pan,12
  db 9,$73
  !g4
  !pan,8
  !f4
  !pan,12
  !ds4
  !pan,8
  !f4
  !pan,12
  !g4
  !pan,8
  !f4
  !pan,12
  !ds4
  !pan,8
  !f4
  !pan,12
  !g4
  !pan,8
  !f4
  !pan,12
  !ds4
  !pan,8
  !f4
  !pan,12
  !g4
  !pan,8
  !f4
  !pan,12
  !ds4
  !pan,8
  !f4
  !loop : dw .sub5B09 : db 3
  !end

.pattern8_0
  !loop : dw .sub5B3A : db 3
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 9,$12
  !g3
  !pan,8
  !g3
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !instr,!instr2D
  !pan,12
  db 9,$12
  !g3
  !pan,10
  db 9,$73
  %percNote(!instr33-!instr2C)
  !instr,!instr2E
  db 9,$78
  !f3
  db 18,$75
  %percNote(!instr33-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$77
  %percNote(!instr33-!instr2C)
  !pan,12
  !instr,!instr2D
  db 9,$12
  !g3
  !pan,8
  !g3
  !end

.pattern8_1
  !loop : dw .sub5B7F : db 1
  !end

.pattern8_2
  !vibrato,13,20,20
  db 54,$66
  !gs5
  db 9
  !g5
  !f5
  db 18
  !d5
  !d5
  !c5
  !d5
  db 36
  !d5
  db 27
  !c5
  db 9
  !d5
  db 36
  !g4
  !g4
  db 108
  !f4
  db 27,$65
  !g4
  db 9,$64
  !c5
  db 72,$66
  !b4
  db 36
  !d4
  !instr,!instr19
  !volume,205
  !subtranspose,58
  db 9,$76
  !g4
  !b4
  !d5
  !g5
  !end

.pattern8_3
  !vibrato,13,20,20
  !loop : dw .sub5BE6 : db 1
  db 108
  !d5
  db 27
  !d5
  db 9
  !ds5
  db 72
  !d5
  db 36
  !g4
  !instr,!instr19
  !volume,205
  !subtranspose,60
  db 9,$76
  !g4
  !b4
  !d5
  !g5
  !end

.pattern8_4
  !instr,!instr1B
  !subtranspose,58
  !volume,185
  !loop : dw .sub5BFB : db 1
  !loop : dw .sub5C61 : db 1
  db 9,$38
  !g4
  db 9,$36
  !b4
  !d5
  !f5
  !g5
  !f5
  !d5
  !b4
  !dynamicPan,72,15
  db 9,$38
  !g4
  db 9,$36
  !b4
  !d5
  !f5
  !g5
  !f5
  !d5
  !g4
  !end

.pattern9_0
  !loop : dw .sub5995 : db 5
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 9,$78
  %percNote(!instr33-!instr2C)
  db 9,$76
  %percNote(!instr33-!instr2C)
  db 9,$70
  %percNote(!instr33-!instr2C)
  db 9,$72
  %percNote(!instr33-!instr2C)
  db 9,$78
  %percNote(!instr33-!instr2C)
  db 9,$75
  %percNote(!instr33-!instr2C)
  db 9,$76
  %percNote(!instr33-!instr2C)
  db 9,$78
  %percNote(!instr33-!instr2C)
  !end

.pattern9_1
  !loop : dw .sub5B7F : db 1
  db 9,$38
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  db 9,$36
  !d3
  !d3
  db 9,$38
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  db 9,$36
  !d3
  !d3
  db 9,$38
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  db 9,$36
  !d3
  !d3
  db 9,$79
  !g2
  db 27
  !rest
  !instr,!instr2E
  !pan,8
  db 9,$76
  !d3
  !d3
  !pan,12
  !a2
  !a2
  !end

.pattern9_2
  !subtranspose,60
  db 54,$66
  !gs5
  db 9
  !g5
  !f5
  db 18
  !d5
  !d5
  !c5
  !d5
  db 36
  !d5
  db 27
  !c5
  db 9
  !d5
  db 36
  !g4
  !g4
  db 18,$46
  !f4
  !g4
  !c5
  !f4
  !g4
  !c5
  !f4
  !g4
  !c5
  !f4
  !g4
  !c5
  !f4
  !g4
  !c5
  !f4
  !b4
  !f4
  !g4
  !b4
  !f4
  !g4
  !b4
  !f4
  !b4
  db 18,$45
  !d4
  db 18,$44
  !f4
  db 18,$43
  !b4
  db 36
  !rest
  !instr,!instr33
  !pan,10
  !volume,255
  db 36,$7C
  !d2
  !end

.pattern9_3
  !loop : dw .sub5BE6 : db 1
  !volume,160
  !dynamicVolume,216,240
  db 72,$76
  !d5
  db 72,$68
  !tie
  db 108,$48
  !tie
  !volume,210
  db 27,$66
  !d5
  db 9,$64
  !ds5
  !volume,160
  !dynamicVolume,144,230
  db 72,$76
  !d5
  !tie
  !volume,140
  !dynamicVolume,72,255
  !g4
  !rest
  !end

.pattern9_4
  !instr,!instr0B
  !subtranspose,0
  !volume,175
  !loop : dw .sub5BFB : db 1
  !loop : dw .sub5C61 : db 2
  db 9,$38
  !g4
  db 9,$36
  !b4
  !d5
  !f5
  !g5
  !f5
  !d5
  !b4
  !dynamicPan,72,15
  db 9,$38
  !g4
  db 9,$36
  !b4
  !d5
  !f5
  !g5
  !f5
  !d5
  !g4
  !dynamicPan,72,5
  db 9,$38
  !g4
  db 9,$36
  !b4
  !d5
  !f5
  !g5
  !f5
  !d5
  !b4
  db 72
  !rest
  !end

.sub586F
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 9,$12
  !g3
  !pan,8
  !g3
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !instr,!instr2D
  !pan,12
  db 9,$12
  !g3
  !pan,8
  !g3
  !pan,10
  !instr,!instr2E
  db 9,$78
  !f3
  db 9,$76
  !e3
  !pan,8
  !instr,!instr2D
  db 9,$12
  !g3
  !pan,12
  !g3
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !pan,12
  !instr,!instr2D
  db 9,$12
  !g3
  !pan,8
  !g3
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 9,$12
  !g3
  !pan,8
  !g3
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !instr,!instr2D
  !pan,12
  db 9,$12
  !g3
  !pan,10
  db 9,$73
  %percNote(!instr33-!instr2C)
  !instr,!instr2E
  db 9,$78
  !f3
  db 18,$75
  %percNote(!instr33-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 18,$77
  %percNote(!instr33-!instr2C)
  !pan,12
  !instr,!instr2D
  db 9,$12
  !g3
  !pan,8
  !g3
  !end

.sub58EF
  db 9,$36
  !a2
  !a2
  db 9,$34
  !a3
  db 9,$36
  !e3
  !a2
  !a2
  db 9,$34
  !a3
  db 9,$36
  !e3
  !a2
  !a2
  db 9,$34
  !a3
  db 9,$36
  !e3
  !a2
  !a2
  db 9,$34
  !a3
  db 9,$36
  !e3
  !a2
  !a2
  db 9,$34
  !a3
  db 9,$36
  !e3
  !a2
  !a2
  db 9,$34
  !a3
  db 9,$36
  !e3
  !a2
  !a2
  db 9,$34
  !a3
  db 9,$36
  !e3
  !a2
  !a2
  db 9,$34
  !a3
  db 9,$36
  !e3
  !end

.sub5932
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !c3
  !c3
  db 9,$33
  !c4
  db 9,$36
  !g3
  !end

.sub5953
  !slideIn,0,10,1
  db 27,$46
  !ds5
  !endSlide
  db 27,$27
  !ds5
  db 90
  !rest
  !end

.sub5961
  db 18
  !rest
  db 18,$25
  !e6
  db 9,$46
  !c6
  db 18,$26
  !d6
  db 9,$45
  !e6
  db 18,$26
  !c6
  !a5
  db 36
  !rest
  db 18
  !rest
  !g5
  db 9,$46
  !c6
  db 18,$26
  !ds6
  db 18,$14
  !g6
  db 54
  !rest
  db 9,$41
  !g6
  !end

.sub5987
  !slideIn,0,10,1
  db 27,$46
  !c5
  !endSlide
  db 27,$26
  !c5
  db 90
  !rest
  !end

.sub5995
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2E
  db 9,$78
  !f3
  db 9,$76
  !e3
  !pan,8
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,12
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !end

.sub59D2
  db 9,$47
  !gs2
  !gs2
  db 9,$46
  !gs3
  !gs3
  db 9,$47
  !gs2
  !gs2
  db 9,$46
  !gs3
  !gs3
  db 9,$48
  !g2
  !g2
  db 9,$46
  !g3
  !g3
  db 9,$48
  !g2
  !g2
  db 9,$46
  !g3
  !g3
  !end

.sub59F3
  db 9,$4B
  !e2
  !e2
  db 9,$46
  !e3
  !e3
  db 9,$4B
  !e2
  !e2
  db 9,$46
  !e3
  !e3
  db 9,$4C
  !ds2
  !ds2
  db 9,$46
  !ds3
  !ds3
  db 9,$4C
  !ds2
  !ds2
  db 9,$46
  !ds3
  !ds3
  !end

.sub5A14
  db 9,$56
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !c5
  !ds5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !as4
  !d5
  !end

.sub5A37
  !b4
  !ds5
  !b4
  !ds5
  !b4
  !ds5
  !b4
  !ds5
  !as4
  !cs5
  !as4
  !cs5
  !as4
  !cs5
  !as4
  !cs5
  !end

.sub5A48
  db 9,$56
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !gs5
  !f5
  !g5
  !f5
  !g5
  !f5
  !g5
  !f5
  !g5
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !gs5
  !g5
  !gs5
  !f5
  !g5
  !f5
  !g5
  !f5
  !g5
  !f5
  !g5
  !end

.sub5A6B
  !e5
  !gs5
  !e5
  !gs5
  !e5
  !gs5
  !e5
  !gs5
  !ds5
  !fs5
  !ds5
  !fs5
  !ds5
  !fs5
  !ds5
  !fs5
  !end

.sub5A7C
  !pan,10
  !instr,!instr2E
  db 9,$79
  !d3
  db 9,$77
  !d3
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !pan,10
  !instr,!instr2E
  db 9,$78
  !f3
  !f3
  !pan,8
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,12
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !pan,12
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,8
  %percNote(!instr2D-!instr2C)
  !end

.sub5AB9
  !instr,!instr2E
  db 18,$78
  !d3
  db 9,$76
  !d3
  db 9,$75
  !d3
  !instr,!instr33
  db 18,$77
  !c4
  !instr,!instr2E
  db 9,$76
  !d3
  db 9,$75
  !d3
  db 18,$78
  !d3
  db 9,$76
  !d3
  db 9,$75
  !d3
  !instr,!instr33
  db 18,$77
  !c4
  !instr,!instr2E
  db 9,$76
  !d3
  db 9,$75
  !d3
  !end

.sub5AE8
  db 9,$56
  !a2
  !a2
  db 9,$55
  !a3
  !a3
  db 9,$56
  !a2
  !a2
  db 9,$55
  !a3
  !a3
  db 9,$56
  !a2
  !a2
  db 9,$55
  !a3
  !a3
  db 9,$56
  !a2
  !a2
  db 9,$55
  !a3
  !a3
  !end

.sub5B09
  !pan,12
  !g4
  !pan,8
  !f4
  !pan,12
  !ds4
  !pan,8
  !f4
  !pan,12
  !g4
  !pan,8
  !f4
  !pan,12
  !ds4
  !pan,8
  !f4
  !pan,12
  !g4
  !pan,8
  !f4
  !pan,12
  !ds4
  !pan,8
  !f4
  !pan,12
  !g4
  !pan,8
  !f4
  !pan,12
  !ds4
  !pan,8
  !f4
  !end

.sub5B3A
  !pan,10
  db 9,$77
  %percNote(!instr2C-!instr2C)
  db 9,$74
  %percNote(!instr2C-!instr2C)
  !pan,12
  !instr,!instr2D
  db 9,$12
  !g3
  !pan,8
  !g3
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !instr,!instr2D
  !pan,12
  db 9,$12
  !g3
  !pan,8
  !g3
  !pan,10
  !instr,!instr2E
  db 9,$78
  !f3
  db 9,$76
  !e3
  !pan,8
  !instr,!instr2D
  db 9,$12
  !g3
  !pan,12
  !g3
  !pan,10
  db 18,$76
  %percNote(!instr33-!instr2C)
  !pan,12
  !instr,!instr2D
  db 9,$12
  !g3
  !pan,8
  !g3
  !end

.sub5B7F
  db 9,$39
  !f2
  !f2
  !f2
  !f2
  db 9,$36
  !f3
  !f3
  db 9,$39
  !f2
  !f2
  db 9,$36
  !as2
  !as2
  !as2
  !as2
  db 9,$35
  !as3
  !as3
  db 9,$36
  !as2
  !as2
  db 9,$3B
  !ds2
  !ds2
  !ds2
  !ds2
  db 9,$36
  !ds3
  !ds3
  db 9,$3B
  !ds2
  !ds2
  db 9,$38
  !gs2
  !gs2
  !gs2
  !gs2
  db 9,$36
  !gs3
  !gs3
  db 9,$38
  !gs2
  !gs2
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  db 9,$36
  !d3
  !d3
  db 9,$38
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  db 9,$36
  !d3
  !d3
  db 9,$38
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  db 9,$36
  !d3
  !d3
  db 9,$38
  !g2
  !g2
  !g2
  !g2
  !g2
  !g2
  db 9,$36
  !d3
  !d3
  !end

.sub5BE6
  db 54,$66
  !c6
  db 9
  !as5
  !gs5
  db 18
  !g5
  !f5
  !ds5
  !f5
  db 36
  !g5
  db 27
  !f5
  db 9
  !g5
  db 36
  !c5
  !c5
  !end

.sub5BFB
  !dynamicPan,72,5
  db 9,$38
  !f4
  db 9,$37
  !gs4
  db 9,$36
  !c5
  !f5
  db 9,$35
  !gs5
  db 9,$34
  !c6
  db 9,$33
  !f6
  db 9,$34
  !c6
  !dynamicPan,72,15
  db 9,$38
  !as4
  db 9,$37
  !d5
  db 9,$36
  !f5
  db 9,$35
  !gs5
  !as5
  !gs5
  db 9,$34
  !as5
  db 9,$35
  !gs5
  !dynamicPan,72,5
  db 9,$39
  !ds4
  db 9,$38
  !g4
  db 9,$37
  !as4
  db 9,$36
  !ds5
  db 9,$35
  !g5
  db 9,$36
  !ds5
  db 9,$35
  !g5
  db 9,$36
  !as5
  !dynamicPan,72,15
  !gs4
  db 9,$37
  !c5
  db 9,$36
  !ds5
  db 9,$35
  !gs5
  db 9,$33
  !ds6
  db 9,$35
  !gs5
  db 9,$36
  !ds5
  !gs4
  !dynamicPan,72,5
  !end

.sub5C61
  db 9,$38
  !g4
  db 9,$37
  !c5
  db 9,$36
  !d5
  !f5
  !g5
  !f5
  !d5
  !c5
  !dynamicPan,72,15
  db 9,$38
  !g4
  db 9,$36
  !c5
  !d5
  !f5
  !g5
  !f5
  !d5
  !c5
  !dynamicPan,72,5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
