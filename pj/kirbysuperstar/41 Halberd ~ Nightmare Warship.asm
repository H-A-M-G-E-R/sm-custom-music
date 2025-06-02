asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr03 = $18
!instr04 = $19
!instr06 = $1A
!instr0B = $1B
!instr1B = $1C
!instr23 = $1D
!instr27 = $1E
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
  db !instr03,$FC,$E0,$B8,$03,$80
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr06,$BF,$D4,$B8,$0F,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr27,$8F,$E0,$B8,$03,$00
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
  dw Sample03,Sample03+27
  dw Sample04,Sample04+1098
  dw Sample06_07,Sample06_07+558
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample23,Sample23+396
  dw Sample27,Sample27+45
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
  Sample03: incbin "Sample_55d7dd5330b8a8ef8525169d9eaa7cd3.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample06_07: incbin "Sample_cd66d31bbaaac1d6ba77207f1e4c6c24.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample27: incbin "Sample_55365c24760b7ccb8bdcacbb9417c216.brr"
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
  dw .pattern10
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
.pattern10: dw .pattern10_0, .pattern10_1, .pattern10_2, .pattern10_3, .pattern10_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !echoParameters,1,1,2
  !echo,%00000010,1,1
  !transpose,0
  !echoParameters,5,70,0
  !echo,%00011110,45,45
  !musicVolume,255
  !tempo,51
  !volume,65
  !dynamicVolume,144,180
  db 6,$59
  %percNote(!instr30-!instr2C)
  db 6,$58
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 6,$59
  %percNote(!instr30-!instr2C)
  db 6,$58
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 6,$59
  %percNote(!instr30-!instr2C)
  db 6,$58
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 6,$59
  %percNote(!instr30-!instr2C)
  db 6,$58
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !dynamicVolume,64,255
  db 6,$5A
  %percNote(!instr30-!instr2C)
  db 6,$58
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  db 6,$5A
  %percNote(!instr30-!instr2C)
  db 6,$58
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  %percNote(!instr30-!instr2C)
  !echoParameters,4,50,0
  !echo,%00011100,38,38
  !instr,!instr33
  db 18,$76
  !a4
  !a4
  !instr,!instr2E
  !pan,12
  db 9,$77
  !g4
  !pan,8
  !f4
  !pan,10
  !instr,!instr33
  db 18
  !f4
  !end

.pattern0_1
  !subtranspose,58
  !transpose,0
  !instr,!instr1B
  !volume,85
  !dynamicVolume,216,255
  db 72,$76
  !b2
  !tie
  !tie
  !volume,255
  !subtranspose,0
  !instr,!instr06
  db 36,$7B
  !e2
  db 18,$78
  !g2
  !instr,!instr2D
  db 18,$7B
  !g2

.pattern0_2
  !subtranspose,58
  !instr,!instr1B
  !volume,70
  !dynamicVolume,216,200
  !vibrato,0,7,180
  !pan,12
  db 72,$76
  !ds5
  !tie
  !tie
  !subtranspose,0
  !endVibrato
  !instr,!instr32
  !volume,190
  db 36
  !e4
  !g4

.pattern0_3
  !subtranspose,58
  !instr,!instr1B
  !volume,70
  !dynamicVolume,216,200
  !vibrato,0,7,180
  !pan,8
  db 72,$76
  !a5
  !tie
  !tie
  !subtranspose,0
  !endVibrato
  !volume,190
  !instr,!instr32
  db 36
  !e5
  !g5

.pattern0_4
  !subtranspose,58
  !instr,!instr1B
  !volume,70
  !dynamicVolume,216,200
  !vibrato,0,7,180
  !pan,10
  db 72,$76
  !d6
  !tie
  !tie
  !subtranspose,0
  !endVibrato
  !volume,190
  !instr,!instr32
  db 36,$73
  !b3
  !d5

.pattern1_0
  !transpose,0
  !echoParameters,4,50,0
  !echo,%00011100,30,30
  !musicVolume,255
  !tempo,51
  !loop : dw .sub5B25 : db 1
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,10
  !instr,!instr33
  db 9,$73
  !a4
  db 9,$74
  !a4
  db 9,$75
  !a4
  db 18,$76
  !a4
  !instr,!instr2E
  !pan,12
  db 9,$78
  !b4
  db 9,$76
  !b4
  !b4
  !pan,8
  db 9,$78
  !f4
  db 9,$76
  !f4
  !f4
  !pan,10
  !instr,!instr2D
  db 18,$7D
  !g2
  !end

.pattern1_1
  !transpose,0
  !instr,!instr06
  !volume,255
  !loop : dw .sub5A6C : db 3
  db 9,$76
  !a3
  db 9,$77
  !a2
  db 9,$76
  !g3
  db 18,$36
  !a3
  db 9,$76
  !e3
  db 18
  !d3
  db 18,$7C
  !d2
  db 9,$76
  !c3
  !d3
  db 9,$7C
  !d2
  db 9,$76
  !d3
  !c3
  !d3

.pattern1_2
  !volume,240
  !instr,!instr2D
  !loop : dw .sub5BD8 : db 3
  !pan,12
  db 27,$79
  !a3
  !pan,8
  db 9,$75
  !f4
  !pan,12
  db 18,$15
  !d4
  !pan,8
  db 18,$75
  !f4
  !pan,10
  !instr,!instr2E
  db 27,$79
  !a2
  !a2
  !instr,!instr2D
  db 18
  !e4

.pattern1_3
  !transpose,0
  !instr,!instr32
  !volume,200
  !pan,8
  db 18,$74
  !a5
  !endVibrato
  !endSlide
  !pan,10
  !instr,!instr04
  !subtranspose,20
  !volume,185
  db 18,$08
  !a5
  db 18,$06
  !c6
  db 9,$46
  !a5
  db 27,$06
  !ds6
  db 18
  !d6
  db 9,$46
  !c6
  !a5
  db 18,$06
  !g5
  db 9,$46
  !a5
  db 18,$06
  !c6
  !d6
  db 9,$46
  !c6
  db 18,$06
  !d6
  !subtranspose,58
  !instr,!instr1B
  !pan,8
  !volume,170
  !slideIn,0,12,1
  db 36,$76
  !g4
  !fs4
  !vibrato,12,18,30
  !pan,10
  !endSlide
  !subtranspose,0
  !instr,!instr2B
  !volume,180
  db 9,$56
  !e5
  db 18,$06
  !g5
  !g5
  db 9,$46
  !e5
  !g5
  !e5
  !slideIn,1,8,1
  db 18,$66
  !a5
  !endSlide
  db 18,$06
  !c6
  db 9,$56
  !a5
  !a5
  db 18
  !a5
  db 9,$46
  !e5
  db 18,$06
  !e5
  !e5
  db 9,$56
  !c5
  db 18,$76
  !a4
  db 72
  !tie

.pattern1_4
  !transpose,0
  !instr,!instr32
  !volume,200
  !pan,12
  db 18,$77
  !a4
  !endVibrato
  !endSlide
  !subtranspose,0
  !pan,10
  !instr,!instr02
  !volume,185
  db 18,$08
  !a5
  db 18,$06
  !c6
  db 9,$46
  !a5
  db 27,$06
  !ds6
  db 18
  !d6
  db 9,$46
  !c6
  !a5
  db 18,$06
  !g5
  db 9,$46
  !a5
  db 18,$06
  !c6
  !d6
  db 9,$46
  !c6
  db 18,$06
  !d6
  !subtranspose,58
  !instr,!instr1B
  !pan,12
  !volume,170
  !slideIn,0,12,1
  db 36,$76
  !d5
  !c5
  !vibrato,12,18,30
  !pan,10
  !endSlide
  !subtranspose,0
  !instr,!instr2B
  !volume,185
  db 9,$56
  !a5
  db 18,$06
  !c6
  !c6
  db 9,$46
  !a5
  !ds6
  !a5
  !slideIn,1,8,1
  db 18,$66
  !e6
  !endSlide
  db 18,$06
  !g6
  db 9,$56
  !ds6
  !d6
  db 18
  !c6
  db 9,$46
  !g5
  db 18,$06
  !gs5
  !a5
  db 9,$56
  !e5
  db 18,$76
  !d5
  db 72
  !tie

.pattern2_0
  !loop : dw .sub5B25 : db 1
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,10
  !instr,!instr33
  db 9,$73
  !a4
  db 9,$74
  !a4
  db 9,$75
  !a4
  db 18,$76
  !a4
  db 9,$79
  %percNote(!instr2C-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  db 9,$79
  %percNote(!instr2C-!instr2C)
  db 9,$76
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  !a4
  !a4
  !instr,!instr2E
  !pan,12
  !a4
  !pan,8
  db 9,$16
  !f4
  !end

.pattern2_1
  !loop : dw .sub5A6C : db 2
  db 9,$76
  !a3
  db 9,$77
  !a2
  db 9,$76
  !g3
  db 18,$36
  !a3
  db 9,$76
  !d3
  !e3
  db 18,$46
  !g3
  db 9,$76
  !d3
  !a3
  !c4
  !d4
  !c4
  !d4
  db 9,$78
  !d3
  db 18,$76
  !b2
  db 9
  !b3
  !b2
  !b2
  !b3
  !b3
  !b2
  !b3
  !b2
  !b2
  !b3
  !b2
  !b2
  !b3
  !b2

.pattern2_2
  !instr,!instr2D
  !volume,240
  !loop : dw .sub5BD8 : db 3
  !pan,12
  db 27,$79
  !a3
  !pan,8
  db 9,$75
  !f4
  !pan,12
  db 18,$15
  !d4
  !pan,8
  db 18,$75
  !f4
  !pan,10
  db 27,$7A
  !f3
  db 27,$76
  !f3
  db 18,$7A
  !f3

.pattern2_3
  db 18
  !rest
  !endVibrato
  !endSlide
  !pan,10
  !instr,!instr04
  !subtranspose,20
  !volume,185
  db 18,$08
  !a5
  db 18,$06
  !c6
  db 9,$46
  !a5
  db 27,$06
  !ds6
  db 18
  !d6
  db 9,$46
  !c6
  !a5
  db 18,$06
  !g5
  db 9,$46
  !a5
  db 18,$06
  !c6
  !d6
  db 9,$46
  !c6
  db 18,$06
  !d6
  !subtranspose,58
  !instr,!instr1B
  !pan,8
  !volume,170
  !slideIn,0,12,1
  db 36,$76
  !g4
  !fs4
  !volume,185
  !instr,!instr01
  !vibrato,12,18,30
  !pan,10
  !endSlide
  !subtranspose,0
  db 18,$56
  !c6
  db 18,$06
  !c6
  db 9,$46
  !e5
  db 18,$06
  !e5
  !e5
  !e5
  !fs5
  db 9,$66
  !c5
  !e5
  !ds5
  db 72,$76
  !ds4
  !tie

.pattern2_4
  db 18
  !rest
  !endVibrato
  !endSlide
  !subtranspose,0
  !pan,10
  !instr,!instr02
  !volume,185
  db 18,$08
  !a5
  db 18,$06
  !c6
  db 9,$46
  !a5
  db 27,$06
  !ds6
  db 18
  !d6
  db 9,$46
  !c6
  !a5
  db 18,$06
  !g5
  db 9,$46
  !a5
  db 18,$06
  !c6
  !d6
  db 9,$46
  !c6
  db 18,$06
  !d6
  !subtranspose,58
  !instr,!instr1B
  !pan,12
  !volume,170
  !slideIn,0,12,1
  db 36,$76
  !d5
  !c5
  !volume,185
  !instr,!instr02
  !vibrato,12,18,30
  !pan,10
  !endSlide
  !subtranspose,0
  db 18,$55
  !g6
  db 18,$04
  !a6
  db 9,$46
  !d6
  db 18,$07
  !ds6
  db 18,$18
  !d6
  !c6
  !a5
  db 9,$68
  !g5
  !e5
  !ds5
  db 72,$76
  !d5
  !tie

.pattern3_0
  !echo,%00011000,49,49
  !echoParameters,5,70,0
  !loop : dw .sub5BFB : db 1
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 9
  %percNote(!instr2C-!instr2C)
  db 18,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  db 18,$76
  !a4
  !instr,!instr2E
  !pan,11
  db 9
  !as3
  !pan,10
  db 9,$18
  !f3
  !end

.pattern3_1
  !loop : dw .sub5CAF : db 2

.pattern3_2
  !instr,!instr2D
  !volume,200
  !loop : dw .sub5CEE : db 4

.pattern3_3
  !pan,9
  !instr,!instr03
  !volume,130
  !vibrato,0,24,30
  db 36,$76
  !d5
  !pitchSlide,24,12 : !g6
  !tie
  !pitchSlide,34,3 : !d6
  db 24
  !tie
  !pitchSlide,21,3 : !e6
  !tie
  !pitchSlide,21,3 : !fs6
  !tie
  !pitchSlide,21,3 : !c6
  db 36
  !tie
  !pitchSlide,24,12 : !e6
  !tie
  !pitchSlide,24,12 : !a5
  !tie
  !pitchSlide,24,11 : !e5
  !tie
  !pitchSlide,35,1 : !d5
  !tie
  !pitchSlide,24,12 : !g6
  !tie
  !pitchSlide,32,4 : !c6
  db 24
  !tie
  !pitchSlide,23,1 : !d6
  !tie
  !pitchSlide,23,2 : !fs6
  !dynamicVolume,24,110
  !tie
  !pitchSlide,16,18 : !c7
  db 72
  !tie
  !pitchSlide,36,36 : !e6
  !tie

.pattern3_4
  !pan,10
  !instr,!instr27
  !volume,180
  !vibrato,0,24,30
  db 36,$76
  !g5
  !pitchSlide,24,12 : !b6
  !tie
  !pitchSlide,34,3 : !fs6
  db 24
  !tie
  !pitchSlide,21,3 : !g6
  !tie
  !pitchSlide,21,3 : !a6
  !tie
  !pitchSlide,21,3 : !e6
  db 36
  !tie
  !pitchSlide,24,12 : !g6
  !tie
  !pitchSlide,24,12 : !d6
  !tie
  !pitchSlide,24,11 : !a5
  !tie
  !pitchSlide,35,1 : !g5
  !tie
  !pitchSlide,24,12 : !b6
  !tie
  !pitchSlide,32,4 : !fs6
  db 24
  !tie
  !pitchSlide,23,1 : !g6
  !tie
  !pitchSlide,23,2 : !a6
  !dynamicVolume,24,155
  !tie
  !pitchSlide,16,18 : !e7
  db 72
  !tie
  !pitchSlide,36,36 : !a6
  !tie

.pattern4_0
  !echo,%00011000,38,38
  !echoParameters,4,50,0
  !loop : dw .sub5BFB : db 1
  !pan,10
  db 9,$76
  %percNote(!instr33-!instr2C)
  %percNote(!instr33-!instr2C)
  %percNote(!instr33-!instr2C)
  %percNote(!instr33-!instr2C)
  db 18
  %percNote(!instr33-!instr2C)
  db 9
  %percNote(!instr33-!instr2C)
  %percNote(!instr33-!instr2C)
  %percNote(!instr33-!instr2C)
  %percNote(!instr33-!instr2C)
  db 18
  %percNote(!instr33-!instr2C)
  !instr,!instr2E
  !pan,12
  db 9
  !d5
  !pan,8
  !g4
  !pan,11
  db 18
  !d4
  !end

.pattern4_1
  !loop : dw .sub5D22 : db 1
  db 9,$78
  !as2
  !as2
  !as2
  !as2
  db 18,$08
  !as2
  db 9,$78
  !as2
  !as2
  !as2
  !as2
  db 18,$08
  !as2
  db 36
  !rest

.pattern4_2
  !instr,!instr2D
  !volume,200
  !loop : dw .sub5CEE : db 3
  !pan,12
  !volume,180
  !instr,!instr01
  db 9,$76
  !gs5
  !gs5
  !gs5
  !gs5
  db 18,$16
  !gs5
  db 9,$76
  !gs5
  !gs5
  !gs5
  !gs5
  db 18,$16
  !gs5
  db 36
  !rest

.pattern4_3
  !loop : dw .sub5D77 : db 1
  !pan,8
  !volume,180
  !instr,!instr01
  db 9,$76
  !d6
  !d6
  !d6
  !d6
  db 18,$16
  !d6
  db 9,$76
  !d6
  !d6
  !d6
  !d6
  db 18,$16
  !d6
  db 36
  !rest

.pattern4_4
  !loop : dw .sub5DD3 : db 1
  !pan,10
  !volume,180
  !instr,!instr01
  db 9,$76
  !f6
  !f6
  !f6
  !f6
  db 18,$16
  !f6
  db 9,$76
  !f6
  !f6
  !f6
  !f6
  db 18,$16
  !f6
  !rest
  !instr,!instr32
  !volume,220
  db 18,$76
  !g4

.pattern5_0
  !echoParameters,5,50,0
  !echo,%00011100,30,30
  !loop : dw .sub5A2F : db 4
  !end

.pattern5_1
  !instr,!instr06
  !volume,255
  !loop : dw .sub5A6C : db 4

.pattern5_2
  !loop : dw .sub5E23 : db 1
  !rest
  !rest
  !rest
  !rest

.pattern5_3
  db 18
  !rest
  !instr,!instr01
  !pan,8
  !volume,180
  db 18,$06
  !e5
  db 9,$46
  !d5
  db 18,$06
  !e5
  !e5
  !e5
  db 9,$46
  !d5
  !e5
  !d5
  !a5
  !as5
  !loop : dw .sub5AB7 : db 1
  db 9,$48
  !e5
  db 18,$06
  !fs5
  !e5
  db 9,$46
  !d5
  !ds5
  !e5
  db 9,$69
  !g4
  db 9,$65
  !a4
  db 9,$67
  !c5
  db 18
  !d5
  db 9
  !e5
  !g5
  !a5

.pattern5_4
  db 18
  !rest
  !instr,!instr01
  !pan,12
  !volume,180
  db 18,$06
  !a5
  db 9,$46
  !g5
  db 18,$06
  !a5
  !a5
  !a5
  db 9,$46
  !g5
  !a5
  !g5
  db 9,$45
  !d6
  db 9,$44
  !ds6
  !loop : dw .sub5AEC : db 1
  db 9,$48
  !a5
  db 18,$06
  !a5
  !a5
  db 9,$46
  !g5
  db 9,$44
  !g5
  db 9,$46
  !a5
  db 9,$69
  !g5
  db 9,$65
  !a5
  db 9,$67
  !c6
  db 18
  !d6
  db 9
  !e6
  !g6
  !a6

.pattern6_0
  !loop : dw .sub5A2F : db 3
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 18,$79
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,10
  !instr,!instr33
  db 9
  !a4
  !a4
  db 18
  !a4
  db 9
  !a4
  !end

.pattern6_1
  !transpose,1
  !instr,!instr06
  !volume,255
  !loop : dw .sub5A6C : db 4

.pattern6_2
  !transpose,1
  !loop : dw .sub5E23 : db 1
  !rest
  !rest
  !rest
  !rest

.pattern6_3
  !transpose,1
  db 18
  !rest
  !instr,!instr01
  !pan,8
  !volume,180
  db 18,$06
  !e5
  db 9,$46
  !d5
  db 18,$06
  !e5
  !e5
  !e5
  db 9,$46
  !d5
  !e5
  !d5
  !a5
  !as5
  !loop : dw .sub5AB7 : db 1
  db 9,$48
  !e5
  db 18,$06
  !fs5
  !e5
  db 9,$46
  !d5
  !ds5
  !e5
  db 9,$69
  !g4
  db 9,$65
  !a4
  db 9,$67
  !c5
  db 18
  !d5
  db 9
  !e5
  !g5
  !a5

.pattern6_4
  !transpose,1
  db 18
  !rest
  !instr,!instr01
  !pan,12
  !volume,180
  db 18,$06
  !a5
  db 9,$46
  !g5
  db 18,$06
  !a5
  !a5
  !a5
  db 9,$46
  !g5
  !a5
  !g5
  db 9,$45
  !d6
  db 9,$44
  !ds6
  !loop : dw .sub5AEC : db 1
  db 9,$48
  !a5
  db 18,$06
  !a5
  !a5
  db 9,$46
  !g5
  db 9,$44
  !g5
  db 9,$46
  !a5
  db 9,$69
  !g5
  db 9,$65
  !a5
  db 9,$67
  !c6
  db 18
  !d6
  db 9
  !e6
  !g6
  !a6

.pattern7_0
  !echoParameters,5,50,0
  !echo,%00011100,30,30
  !loop : dw .sub5A2F : db 4
  !end

.pattern7_1
  !transpose,0
  !instr,!instr06
  !volume,255
  !loop : dw .sub5A6C : db 4

.pattern7_2
  !transpose,0
  !pan,10
  !instr,!instr32
  !volume,220
  db 36,$46
  !a4
  !instr,!instr2D
  !volume,205
  !instr,!instr2D
  !pan,12
  db 18,$79
  !a3
  !pan,8
  db 9,$75
  !f4
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !f4
  !loop : dw .sub5A8B : db 3

.pattern7_3
  !transpose,0
  db 17
  !rest
  !instr,!instr04
  !pan,8
  !volume,175
  db 18,$06
  !e5
  db 9,$46
  !d5
  db 18,$06
  !e5
  !e5
  !e5
  db 9,$46
  !d5
  !e5
  !d5
  !a5
  !as5
  !loop : dw .sub5AB7 : db 1
  db 9,$48
  !e5
  db 18,$06
  !fs5
  !e5
  db 9,$46
  !d5
  !ds5
  !e5
  db 9,$69
  !g4
  db 9,$65
  !a4
  db 9,$67
  !c5
  db 18
  !d5
  db 9
  !e5
  !g5
  db 10
  !a5

.pattern7_4
  !transpose,0
  db 17
  !rest
  !instr,!instr04
  !pan,12
  !volume,175
  db 18,$06
  !a5
  db 9,$46
  !g5
  db 18,$06
  !a5
  !a5
  !a5
  db 9,$46
  !g5
  !a5
  !g5
  db 9,$45
  !d6
  db 9,$44
  !ds6
  !loop : dw .sub5AEC : db 1
  db 9,$48
  !a5
  db 18,$06
  !a5
  !a5
  db 9,$46
  !g5
  db 9,$44
  !g5
  db 9,$46
  !a5
  db 9,$69
  !g5
  db 9,$65
  !a5
  db 9,$67
  !c6
  db 18
  !d6
  db 9
  !e6
  !g6
  db 10
  !a6

.pattern8_0
  !loop : dw .sub5A2F : db 3
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 18,$79
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,10
  !instr,!instr33
  db 9
  !a4
  db 9,$78
  !a4
  db 9,$76
  !a4
  db 9,$77
  !a4
  db 9,$79
  !a4
  !end

.pattern8_1
  !transpose,1
  !instr,!instr06
  !volume,255
  !loop : dw .sub5A6C : db 3
  db 9,$76
  !a3
  db 9,$77
  !a2
  db 9,$76
  !g3
  db 18,$36
  !a3
  db 9,$76
  !d3
  !e3
  db 9,$46
  !g3
  db 9,$76
  !g3
  !a3
  !c4
  db 18
  !d4
  db 9
  !e4
  !g4
  !a4

.pattern8_2
  !transpose,1
  !pan,10
  !instr,!instr32
  !volume,220
  db 36,$46
  !a4
  !transpose,0
  !instr,!instr2D
  !volume,205
  !pan,12
  db 18,$79
  !a3
  !pan,8
  db 9,$75
  !f4
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !f4
  !loop : dw .sub5A8B : db 2
  !pan,12
  db 9,$79
  !a3
  db 9,$76
  !a3
  !pan,8
  db 18
  !f4
  !pan,12
  db 18,$79
  !a3
  !pan,8
  db 9,$75
  !f4
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !f4
  !pan,12
  !d4
  !instr,!instr2E
  db 9,$76
  !g4
  !g4
  !pan,8
  !d4
  !d4

.pattern8_3
  !transpose,1
  db 17
  !rest
  !instr,!instr04
  !pan,8
  !volume,175
  db 18,$06
  !e5
  db 9,$46
  !d5
  db 18,$06
  !e5
  !e5
  !e5
  db 9,$46
  !d5
  !e5
  !d5
  !a5
  !as5
  !loop : dw .sub5AB7 : db 1
  db 9,$48
  !e5
  db 18,$06
  !fs5
  !e5
  db 9,$46
  !d5
  !ds5
  !e5
  db 9,$69
  !g4
  db 9,$65
  !a4
  db 9,$67
  !c5
  db 18
  !d5
  db 9
  !e5
  !g5
  db 10
  !a5

.pattern8_4
  !transpose,1
  db 17
  !rest
  !instr,!instr04
  !pan,12
  !volume,175
  db 18,$06
  !a5
  db 9,$46
  !g5
  db 18,$06
  !a5
  !a5
  !a5
  db 9,$46
  !g5
  !a5
  !g5
  db 9,$45
  !d6
  db 9,$44
  !ds6
  !loop : dw .sub5AEC : db 1
  db 9,$48
  !a5
  db 18,$06
  !a5
  !a5
  db 9,$46
  !g5
  db 9,$44
  !g5
  db 9,$46
  !a5
  db 9,$69
  !g5
  db 9,$65
  !a5
  db 9,$67
  !c6
  db 18
  !d6
  db 9
  !e6
  !g6
  db 10
  !a6

.pattern9_0
  !echo,%00011000,49,49
  !echoParameters,5,70,0
  !loop : dw .sub5BFB : db 1
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 9
  %percNote(!instr2C-!instr2C)
  db 18,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  db 18,$76
  !a4
  !instr,!instr2E
  !pan,11
  db 9
  !as3
  !pan,10
  db 9,$18
  !f3
  !end

.pattern9_1
  !transpose,1
  !loop : dw .sub5CAF : db 2

.pattern9_2
  !instr,!instr2D
  !volume,200
  !loop : dw .sub5CEE : db 4

.pattern9_3
  !transpose,0
  !pan,9
  !instr,!instr31
  !volume,115
  !vibrato,0,24,30
  db 36,$76
  !ds5
  !pitchSlide,24,12 : !gs6
  !tie
  !pitchSlide,34,3 : !ds6
  db 24
  !tie
  !pitchSlide,21,3 : !f6
  !tie
  !pitchSlide,21,3 : !g6
  !tie
  !pitchSlide,21,3 : !cs6
  db 36
  !tie
  !pitchSlide,24,12 : !f6
  !tie
  !pitchSlide,24,12 : !as5
  !tie
  !pitchSlide,24,11 : !f5
  !tie
  !pitchSlide,35,1 : !ds5
  !tie
  !pitchSlide,24,12 : !gs6
  !tie
  !pitchSlide,32,4 : !cs6
  db 24
  !tie
  !pitchSlide,23,1 : !ds6
  !tie
  !pitchSlide,23,2 : !g6
  !dynamicVolume,24,100
  !tie
  !pitchSlide,16,18 : !cs7
  db 72
  !tie
  !pitchSlide,36,36 : !f6
  !tie

.pattern9_4
  !transpose,0
  !pan,10
  !instr,!instr31
  !volume,120
  !vibrato,0,24,30
  db 36,$76
  !gs5
  !pitchSlide,24,12 : !c7
  !tie
  !pitchSlide,34,3 : !g6
  db 24
  !tie
  !pitchSlide,21,3 : !gs6
  !tie
  !pitchSlide,21,3 : !as6
  !tie
  !pitchSlide,21,3 : !f6
  db 36
  !tie
  !pitchSlide,24,12 : !gs6
  !tie
  !pitchSlide,24,12 : !ds6
  !tie
  !pitchSlide,24,11 : !as5
  !tie
  !pitchSlide,35,1 : !gs5
  !tie
  !pitchSlide,24,12 : !c7
  !tie
  !pitchSlide,32,4 : !g6
  db 24
  !tie
  !pitchSlide,23,1 : !gs6
  !tie
  !pitchSlide,23,2 : !as6
  !dynamicVolume,24,110
  !tie
  !pitchSlide,16,18 : !f7
  db 72
  !tie
  !pitchSlide,36,36 : !as6
  !tie

.pattern10_0
  !echo,%00011000,38,38
  !echoParameters,4,50,0
  !loop : dw .sub5BFB : db 1
  !pan,10
  db 9,$76
  %percNote(!instr33-!instr2C)
  db 18
  %percNote(!instr33-!instr2C)
  %percNote(!instr33-!instr2C)
  db 9
  %percNote(!instr33-!instr2C)
  db 18
  %percNote(!instr33-!instr2C)
  db 9,$78
  %percNote(!instr33-!instr2C)
  db 9,$76
  %percNote(!instr33-!instr2C)
  db 9,$73
  %percNote(!instr33-!instr2C)
  db 9,$76
  %percNote(!instr33-!instr2C)
  !instr,!instr2E
  !pan,8
  !d5
  !d5
  !pan,10
  db 9,$78
  !g4
  !pan,12
  !d4
  !end

.pattern10_1
  !loop : dw .sub5D22 : db 1
  db 9,$78
  !as2
  db 18,$28
  !as2
  !as2
  db 9,$78
  !as2
  db 18,$28
  !as2
  !transpose,0
  db 36,$7C
  !e2
  db 36,$79
  !g2

.pattern10_2
  !instr,!instr2D
  !volume,200
  !loop : dw .sub5CEE : db 3
  !transpose,1
  !pan,8
  !volume,180
  !instr,!instr01
  db 9,$76
  !gs5
  db 18,$06
  !gs5
  !gs5
  db 9,$76
  !gs5
  db 18,$06
  !gs5
  !transpose,0
  !volume,190
  !instr,!instr32
  db 36,$76
  !e4
  !g4

.pattern10_3
  !transpose,1
  !loop : dw .sub5D77 : db 1
  !pan,12
  !volume,180
  !instr,!instr01
  db 9,$76
  !d6
  db 18,$06
  !d6
  !d6
  db 9,$76
  !d6
  db 18,$06
  !d6
  !transpose,0
  !volume,190
  !instr,!instr32
  db 36,$76
  !e5
  !g5

.pattern10_4
  !transpose,1
  !loop : dw .sub5DD3 : db 1
  !pan,10
  !volume,180
  !instr,!instr01
  db 9,$76
  !f6
  db 18,$06
  !f6
  !f6
  db 9,$76
  !f6
  db 18,$06
  !f6
  !transpose,0
  !volume,180
  !instr,!instr32
  db 36,$73
  !b4
  !d5

.sub5B25
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 9
  %percNote(!instr2C-!instr2C)
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,11
  !instr,!instr2E
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 18,$76
  !a4
  !instr,!instr2E
  !pan,11
  db 9
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 9
  %percNote(!instr2C-!instr2C)
  db 18,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  db 18,$76
  !a4
  !pan,12
  db 9,$71
  %percNote(!instr30-!instr2C)
  !pan,10
  db 9,$16
  %percNote(!instr2C-!instr2C)
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 9
  %percNote(!instr2C-!instr2C)
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,11
  !instr,!instr2E
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 18,$76
  !a4
  !instr,!instr2E
  !pan,11
  db 9
  !as3
  !pan,9
  db 9,$78
  !f3
  !end

.sub5A6C
  db 9,$76
  !a3
  db 9,$77
  !a2
  db 9,$76
  !g3
  db 18,$36
  !a3
  db 9,$76
  !d3
  !e3
  db 18,$46
  !g3
  db 9,$76
  !ds3
  !e3
  !g3
  !ds3
  !d3
  !c3
  db 9,$78
  !g2
  !end

.sub5BD8
  !pan,12
  db 18,$79
  !a3
  !pan,8
  db 18,$75
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !pan,12
  db 9
  !d4
  db 9,$73
  !d4
  !pan,8
  db 18,$75
  !f4
  !end

.sub5BFB
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 9
  %percNote(!instr2C-!instr2C)
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,11
  !instr,!instr2E
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 18,$76
  !a4
  !instr,!instr2E
  !pan,11
  db 9
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 9
  %percNote(!instr2C-!instr2C)
  db 18,$79
  %percNote(!instr2C-!instr2C)
  %percNote(!instr2C-!instr2C)
  !instr,!instr33
  db 18,$76
  !a4
  !instr,!instr2E
  !pan,11
  db 9
  !as3
  !pan,10
  db 9,$18
  !f3
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 9
  %percNote(!instr2C-!instr2C)
  db 18,$79
  %percNote(!instr2C-!instr2C)
  !pan,11
  !instr,!instr2E
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 18,$76
  !a4
  !instr,!instr2E
  !pan,11
  db 9
  !as3
  !pan,9
  db 9,$78
  !f3
  !end

.sub5CAF
  db 18,$46
  !e3
  db 9,$7B
  !e2
  db 18,$26
  !d3
  db 9,$7B
  !e2
  db 9,$76
  !d3
  !e3
  db 18,$4B
  !e2
  db 18,$26
  !e3
  db 9,$76
  !b2
  db 18,$26
  !d3
  db 9,$76
  !e3
  db 18,$46
  !f3
  db 9,$79
  !f2
  db 18,$26
  !e3
  db 9,$79
  !f2
  db 9,$76
  !e3
  !f3
  db 18,$46
  !f2
  db 18,$26
  !f3
  db 9,$76
  !c3
  db 18,$26
  !e3
  db 9,$76
  !f3
  !end

.sub5CEE
  !pan,12
  db 9,$73
  !c5
  db 9,$72
  !b4
  db 9,$73
  !c5
  db 9,$72
  !b4
  db 9,$73
  !c5
  db 9,$72
  !b4
  db 9,$73
  !c5
  db 9,$72
  !b4
  db 9,$73
  !c5
  db 9,$72
  !b4
  db 9,$73
  !c5
  db 9,$72
  !b4
  !pan,10
  db 18,$7E
  !g2
  !pan,12
  db 9,$73
  !c5
  db 9,$72
  !b4
  !end

.sub5D22
  db 9,$76
  !e3
  !e3
  !e3
  !e3
  db 9,$7B
  !e2
  !e2
  db 9,$76
  !e3
  !e3
  !ds3
  !ds3
  !ds3
  !ds3
  db 9,$7C
  !ds2
  !ds2
  db 9,$76
  !as3
  !ds3
  !cs3
  !cs3
  !cs3
  !cs3
  db 9,$74
  !cs4
  !cs4
  db 9,$76
  !cs3
  !cs3
  !c3
  !c3
  !c3
  !c3
  db 9,$74
  !c4
  !c4
  db 9,$75
  !as3
  !as3
  db 9,$76
  !gs3
  !ds3
  db 9,$77
  !gs2
  db 9,$76
  !ds3
  !gs3
  !ds3
  db 9,$77
  !gs2
  db 9,$76
  !ds3
  !gs3
  !ds3
  db 9,$77
  !gs2
  db 9,$76
  !ds3
  !gs3
  !ds3
  db 9,$77
  !gs2
  db 9,$76
  !ds3
  !end

.sub5D77
  !instr,!instr23
  !volume,160
  !pan,9
  !endVibrato
  db 12,$46
  !e5
  !gs5
  !b5
  !ds6
  !b5
  !gs5
  !ds5
  !g5
  !as5
  !d6
  !as5
  !g5
  !cs5
  !f5
  !gs5
  !c6
  !gs5
  !f5
  !d5
  !ds5
  !g5
  !c6
  !ds6
  !c6
  !pan,14
  !dynamicPan,72,6
  !instr,!instr0B
  !volume,140
  db 6,$79
  !gs5
  db 6,$78
  !c6
  !ds6
  !c6
  !ds6
  db 6,$77
  !g6
  !ds6
  !g6
  db 6,$76
  !gs6
  !g6
  !gs6
  db 6,$75
  !c7
  !dynamicPan,72,14
  db 6,$74
  !ds7
  db 6,$75
  !c7
  db 6,$76
  !gs6
  !c7
  !gs6
  db 6,$77
  !g6
  !gs6
  !g6
  db 6,$78
  !ds6
  !c6
  !gs5
  db 6,$79
  !ds5
  !end

.sub5DD3
  !instr,!instr23
  !volume,155
  !pan,11
  db 12,$76
  !ds7
  db 12,$46
  !e5
  db 12,$76
  !gs6
  db 12,$46
  !gs5
  db 12,$76
  !ds7
  db 12,$46
  !b5
  db 12,$76
  !d7
  db 12,$46
  !ds5
  db 12,$76
  !g6
  db 12,$46
  !as5
  db 12,$76
  !d7
  db 12,$46
  !as5
  db 12,$76
  !g6
  db 12,$46
  !cs5
  db 12,$76
  !f6
  db 12,$46
  !gs5
  db 12,$76
  !c7
  db 12,$46
  !gs5
  db 24
  !ds6
  db 24,$56
  !g6
  db 24,$66
  !c7
  !pan,10
  db 9,$55
  !ds7
  db 9,$54
  !f7
  db 126,$73
  !g7
  !end

.sub5A2F
  !pan,10
  db 9,$79
  %percNote(!instr2C-!instr2C)
  !instr,!instr2E
  !pan,9
  db 9,$78
  !f3
  !pan,11
  db 9,$76
  !as3
  !pan,9
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 27,$76
  !a4
  db 18,$79
  %percNote(!instr2C-!instr2C)
  db 18,$76
  %percNote(!instr2C-!instr2C)
  !pan,9
  !instr,!instr2E
  db 9,$78
  !f3
  !pan,10
  !instr,!instr33
  db 18,$76
  !a4
  !instr,!instr2E
  !pan,11
  db 9
  !as3
  !pan,9
  db 9,$78
  !f3
  !end

.sub5E23
  !pan,10
  !instr,!instr32
  !volume,220
  db 72,$46
  !a4
  !rest
  !rest
  !rest
  !end

.sub5AB7
  db 18
  !rest
  db 18,$06
  !g5
  db 9,$46
  !e5
  db 18,$06
  !d5
  !as5
  !a5
  !gs5
  db 9,$46
  !g5
  !d5
  !cs5
  db 18
  !rest
  db 18,$05
  !e6
  db 9,$45
  !d6
  !e6
  db 9,$46
  !a5
  db 9,$42
  !gs5
  db 9,$49
  !g5
  db 18,$04
  !a5
  db 18,$75
  !b5
  db 9,$45
  !e5
  db 9,$47
  !d5
  db 9,$46
  !cs5
  !end

.sub5AEC
  db 18
  !rest
  db 18,$05
  !cs6
  db 9,$46
  !a5
  db 18,$06
  !g5
  db 18,$04
  !ds6
  !d6
  db 18,$05
  !cs6
  db 9,$46
  !c6
  !g5
  !fs5
  db 18
  !rest
  db 18,$03
  !a6
  db 9,$43
  !g6
  !a6
  db 9,$46
  !d6
  db 9,$42
  !cs6
  db 9,$49
  !c6
  db 18,$04
  !d6
  db 18,$75
  !e6
  db 9,$45
  !a5
  db 9,$47
  !g5
  db 9,$46
  !fs5
  !end

.sub5A8B
  !pan,12
  db 9,$79
  !a3
  db 9,$76
  !a3
  !pan,8
  db 18
  !f4
  !pan,12
  db 18,$79
  !a3
  !pan,8
  db 9,$75
  !f4
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !pan,12
  !d4
  !pan,8
  !f4
  !f4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
