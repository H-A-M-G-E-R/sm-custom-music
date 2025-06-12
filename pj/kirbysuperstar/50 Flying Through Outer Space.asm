asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr19 = $16
!instr1B = $17
!instr1D = $18
!instr23 = $19
!instr2D = $1A
!instr2E = $1B
!instr30 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample23,Sample23+396
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
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
  !percBase,!instr2D
  !musicVolume,255
  !tempo,51
  !echo,%00011110,38,38
  !echoParameters,4,60,0
  !volume,200
  !loop : dw .sub5349 : db 3
  !loop : dw .sub53B7 : db 1
  !end

.pattern0_1
  !subtranspose,0
  !volume,180
  !instr,!instr23
  db 30,$76
  !g3
  db 10,$77
  !d4
  db 20,$28
  !as4
  !dynamicVolume,40,144
  db 40,$76
  !a4
  !volume,180
  db 20
  !g4
  db 10
  !f4
  db 10,$75
  !a4
  db 30,$76
  !g4
  db 10,$77
  !as3
  db 20,$28
  !d4
  !dynamicVolume,40,144
  db 40,$76
  !f3
  !volume,180
  db 20
  !c4
  db 10
  !a4
  db 10,$75
  !f4
  db 30,$76
  !g4
  db 10,$77
  !fs4
  db 20,$28
  !e4
  !dynamicVolume,40,126
  db 40,$76
  !as4
  !volume,180
  db 20
  !ds4
  db 10
  !g4
  db 10,$75
  !as4
  db 20,$76
  !g4
  db 10,$77
  !e4
  db 10,$78
  !g4
  db 20,$28
  !e4
  !dynamicVolume,40,126
  db 40,$76
  !as4
  !volume,180
  db 10
  !ds4
  !g4
  db 20,$75
  !ds4
  db 30,$76
  !cs4
  db 10,$77
  !f4
  db 10,$78
  !gs4
  db 10,$79
  !f4
  !dynamicVolume,40,126
  db 40,$76
  !c4
  !volume,180
  db 10
  !g4
  !f4
  db 10,$74
  !c5
  db 10,$75
  !g4
  db 30,$76
  !gs4
  db 10,$77
  !cs4
  db 20,$28
  !f4
  !dynamicVolume,40,126
  db 40,$76
  !e4
  !volume,180
  db 10,$75
  !g4
  db 10,$76
  !c4
  !g3
  db 10,$74
  !c4
  !volume,144
  !dynamicVolume,255,198
  db 20,$76
  !cs4
  db 10,$77
  !f4
  !g4
  db 20,$76
  !gs4
  db 10,$77
  !g4
  !as4
  !gs4
  !g4
  db 20,$76
  !gs4
  db 10,$77
  !f4
  !gs4
  db 20,$76
  !as4
  db 10,$77
  !c5
  !cs5
  db 20,$76
  !gs4
  db 10,$77
  !f4
  !g4
  db 20,$76
  !gs4
  db 10,$77
  !g4
  !gs4
  db 20,$76
  !cs4
  db 20,$77
  !gs4
  db 10,$76
  !fs4
  db 10,$77
  !gs4
  !end

.pattern0_2
  !loop : dw .sub5433 : db 1
  !end

.pattern0_3
  !loop : dw .sub558A : db 1
  !end

.pattern0_4
  !loop : dw .sub56E1 : db 1
  !end

.pattern1_0
  !loop : dw .sub5838 : db 2
  !loop : dw .sub5349 : db 2
  !pan,10
  db 10,$79
  %percNote(!instr30-!instr2D)
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$78
  %percNote(!instr30-!instr2D)
  db 10,$79
  %percNote(!instr30-!instr2D)
  !end

.pattern1_1
  db 30,$76
  !as4
  db 10
  !f4
  db 20,$26
  !cs5
  db 40,$76
  !c5
  db 20
  !f4
  db 10
  !gs4
  !f4
  db 30
  !cs5
  db 10
  !as4
  db 20,$26
  !f5
  db 40,$76
  !c5
  db 20
  !f4
  db 10
  !c4
  !f4
  db 30
  !d4
  db 10
  !fs4
  db 20,$26
  !a4
  db 40,$76
  !cs4
  db 20
  !e4
  db 10
  !gs4
  !cs4
  db 20
  !d4
  db 10
  !fs4
  !d4
  db 20,$26
  !a4
  db 40,$76
  !cs4
  db 10,$58
  !gs4
  !e4
  !gs4
  !cs4
  !subtranspose,58
  !instr,!instr1B
  !volume,230
  db 100,$77
  !ds3
  db 90
  !tie
  !tie
  db 100,$78
  !cs3
  db 90
  !tie
  !tie
  db 100,$77
  !ds3
  db 90
  !tie
  !tie
  db 100,$78
  !cs3
  db 90
  !tie
  !tie
  db 40,$77
  !gs3
  !end

.pattern1_2
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 20,$08
  !f5
  db 10,$37
  !ds5
  db 10,$33
  !gs4
  db 10,$35
  !ds5
  db 10,$32
  !gs4
  db 10,$36
  !ds5
  db 10,$33
  !gs4
  db 10,$37
  !ds5
  db 10,$34
  !gs4
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 20,$08
  !f5
  db 10,$37
  !ds5
  db 10,$33
  !gs4
  db 10,$35
  !ds5
  db 10,$32
  !gs4
  db 10,$36
  !ds5
  db 10,$33
  !gs4
  db 10,$37
  !ds5
  db 10,$34
  !gs4
  db 10,$35
  !fs5
  db 10,$33
  !a4
  db 10,$36
  !fs5
  db 10,$35
  !a4
  db 10,$37
  !fs5
  db 10,$32
  !a4
  db 10,$38
  !ds5
  db 10,$36
  !gs4
  db 10,$37
  !e5
  db 10,$35
  !gs4
  db 10,$36
  !fs5
  db 10,$34
  !gs4
  db 10,$35
  !e5
  !gs4
  db 10,$34
  !fs5
  db 10,$35
  !a4
  db 10,$36
  !fs5
  db 10,$35
  !a4
  db 10,$37
  !fs5
  db 10,$33
  !a4
  db 10,$38
  !ds5
  db 10,$36
  !gs4
  db 10,$37
  !e5
  db 10,$35
  !gs4
  db 10,$36
  !fs5
  db 10,$34
  !gs4
  db 10,$35
  !ds5
  db 10,$33
  !gs4
  !subtranspose,60
  !instr,!instr19
  !volume,158
  !loop : dw .sub5913 : db 2
  db 10,$48
  !ds5
  db 10,$46
  !gs4
  db 10,$48
  !ds5
  !c5
  !end

.pattern1_3
  db 10,$38
  !gs5
  db 10,$35
  !cs5
  db 10,$38
  !gs5
  db 10,$35
  !cs5
  db 20,$08
  !gs5
  db 10,$37
  !gs5
  db 10,$33
  !c5
  db 10,$35
  !gs5
  db 10,$32
  !c5
  db 10,$36
  !gs5
  db 10,$33
  !c5
  db 10,$37
  !gs5
  db 10,$34
  !c5
  db 10,$38
  !gs5
  db 10,$35
  !cs5
  db 10,$38
  !gs5
  db 10,$35
  !cs5
  db 20,$08
  !gs5
  db 10,$37
  !gs5
  db 10,$33
  !c5
  db 10,$35
  !gs5
  db 10,$32
  !c5
  db 10,$36
  !gs5
  db 10,$33
  !c5
  db 10,$37
  !gs5
  db 10,$34
  !c5
  db 10,$35
  !gs5
  db 10,$33
  !d5
  db 10,$36
  !a5
  db 10,$35
  !d5
  db 10,$37
  !gs5
  db 10,$32
  !d5
  db 10,$38
  !fs5
  db 10,$36
  !cs5
  db 10,$37
  !gs5
  db 10,$35
  !cs5
  db 10,$36
  !gs5
  db 10,$34
  !cs5
  db 10,$35
  !gs5
  !cs5
  db 10,$34
  !gs5
  db 10,$35
  !d5
  db 10,$36
  !a5
  db 10,$35
  !d5
  db 10,$37
  !b5
  db 10,$33
  !d5
  db 10,$38
  !fs5
  db 10,$36
  !cs5
  db 10,$37
  !gs5
  db 10,$35
  !cs5
  db 10,$36
  !gs5
  db 10,$34
  !cs5
  db 10,$35
  !fs5
  db 10,$33
  !cs5
  !subtranspose,60
  !instr,!instr19
  !volume,158
  !loop : dw .sub59B8 : db 2
  db 10,$48
  !fs5
  db 10,$46
  !c5
  db 10,$48
  !fs5
  !ds5
  !end

.pattern1_4
  db 10,$38
  !cs6
  db 10,$35
  !f5
  db 10,$38
  !cs6
  db 10,$35
  !f5
  db 20,$08
  !cs6
  db 10,$37
  !c6
  db 10,$33
  !f5
  db 10,$35
  !c6
  db 10,$32
  !f5
  db 10,$36
  !c6
  db 10,$33
  !f5
  db 10,$37
  !c6
  db 10,$35
  !f5
  db 10,$38
  !cs6
  db 10,$35
  !f5
  db 10,$38
  !cs6
  db 10,$35
  !f5
  db 20,$08
  !cs6
  db 10,$37
  !c6
  db 10,$33
  !f5
  db 10,$35
  !c6
  db 10,$32
  !f5
  db 10,$36
  !c6
  db 10,$33
  !f5
  db 10,$37
  !c6
  db 10,$34
  !f5
  db 10,$35
  !cs6
  db 10,$33
  !fs5
  db 10,$36
  !cs6
  db 10,$35
  !fs5
  db 10,$37
  !cs6
  db 10,$32
  !fs5
  db 10,$38
  !b5
  db 10,$36
  !ds5
  db 10,$37
  !b5
  db 10,$35
  !e5
  !b5
  db 10,$34
  !fs5
  db 10,$35
  !b5
  !e5
  db 10,$34
  !cs6
  db 10,$35
  !fs5
  db 10,$36
  !cs6
  db 10,$35
  !fs5
  db 10,$37
  !cs6
  db 10,$33
  !fs5
  db 10,$38
  !b5
  db 10,$36
  !ds5
  db 10,$37
  !b5
  db 10,$35
  !e5
  db 10,$36
  !b5
  db 10,$34
  !fs5
  db 10,$35
  !b5
  db 10,$33
  !ds5
  !subtranspose,60
  !instr,!instr19
  !volume,158
  !loop : dw .sub5A61 : db 2
  db 10,$48
  !c6
  db 10,$46
  !ds5
  db 10,$48
  !c6
  !fs5
  !end

.pattern2_0
  !loop : dw .sub5349 : db 3
  !loop : dw .sub53B7 : db 1
  !end

.pattern2_1
  !subtranspose,60
  !volume,207
  !instr,!instr19
  db 30,$76
  !g3
  db 10,$77
  !d4
  db 20,$28
  !as4
  !dynamicVolume,40,153
  db 40,$76
  !a4
  !volume,198
  db 20
  !g4
  db 10
  !f4
  db 10,$75
  !a4
  db 30,$76
  !g4
  db 10,$77
  !as3
  db 20,$28
  !d4
  !dynamicVolume,40,153
  db 40,$76
  !f3
  !volume,198
  db 20
  !c4
  db 10
  !a4
  db 10,$75
  !f4
  db 30,$76
  !g4
  db 10,$77
  !fs4
  db 20,$28
  !e4
  !dynamicVolume,40,140
  db 40,$76
  !as4
  !volume,198
  db 20
  !ds4
  db 10
  !g4
  db 10,$75
  !as4
  db 20,$76
  !g4
  db 10,$77
  !e4
  db 10,$78
  !g4
  db 20,$28
  !e4
  !dynamicVolume,40,140
  db 40,$76
  !as4
  !volume,198
  db 10
  !ds4
  !g4
  db 20,$75
  !ds4
  db 30,$76
  !cs4
  db 10,$77
  !f4
  db 10,$78
  !gs4
  db 10,$79
  !f4
  !dynamicVolume,40,140
  db 40,$76
  !c4
  !volume,198
  db 10
  !g4
  !f4
  db 10,$74
  !c5
  db 10,$75
  !g4
  db 30,$76
  !gs4
  db 10,$77
  !cs4
  db 20,$28
  !f4
  !dynamicVolume,40,140
  db 40,$76
  !e4
  !volume,198
  db 10,$75
  !g4
  db 10,$76
  !c4
  !g3
  db 10,$74
  !c4
  !volume,153
  !dynamicVolume,255,212
  db 20,$76
  !cs4
  db 10,$77
  !f4
  !g4
  db 20,$76
  !gs4
  db 10,$77
  !g4
  !as4
  !gs4
  !g4
  db 20,$76
  !gs4
  db 10,$77
  !f4
  !gs4
  db 20,$76
  !as4
  db 10,$77
  !c5
  !cs5
  db 20,$76
  !gs4
  db 10,$77
  !f4
  !g4
  db 20,$76
  !gs4
  db 10,$77
  !g4
  !gs4
  db 20,$76
  !cs4
  db 20,$77
  !gs4
  db 10,$76
  !fs4
  db 10,$77
  !gs4
  !end

.pattern2_2
  !loop : dw .sub5433 : db 1
  !end

.pattern2_3
  !loop : dw .sub558A : db 1
  !end

.pattern2_4
  !loop : dw .sub56E1 : db 1
  !end

.pattern3_0
  !loop : dw .sub5838 : db 2
  !loop : dw .sub5349 : db 2
  !pan,10
  db 10,$79
  %percNote(!instr30-!instr2D)
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$78
  %percNote(!instr30-!instr2D)
  db 10,$79
  %percNote(!instr30-!instr2D)
  !end

.pattern3_1
  db 30,$76
  !as4
  db 10
  !f4
  db 20,$26
  !cs5
  db 40,$76
  !c5
  db 20
  !f4
  db 10
  !gs4
  !f4
  db 30
  !cs5
  db 10
  !as4
  db 20,$26
  !f5
  db 40,$76
  !c5
  db 20
  !f4
  db 10
  !c4
  !f4
  db 30
  !d4
  db 10
  !fs4
  db 20,$26
  !a4
  db 40,$76
  !cs4
  db 20
  !e4
  db 10
  !gs4
  !cs4
  db 20
  !d4
  db 10
  !fs4
  !d4
  db 20,$26
  !a4
  db 40,$76
  !cs4
  db 10,$58
  !gs4
  !e4
  !gs4
  !cs4
  !subtranspose,58
  !instr,!instr1B
  !volume,230
  db 100,$77
  !ds3
  db 90
  !tie
  !tie
  db 100,$78
  !cs3
  db 90
  !tie
  !tie
  db 100,$77
  !ds3
  db 90
  !tie
  !tie
  db 100,$78
  !cs3
  db 90
  !tie
  !tie
  db 40,$77
  !gs3
  !end

.pattern3_2
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 20,$08
  !f5
  db 10,$37
  !ds5
  db 10,$33
  !gs4
  db 10,$35
  !ds5
  db 10,$32
  !gs4
  db 10,$36
  !ds5
  db 10,$33
  !gs4
  db 10,$37
  !ds5
  db 10,$34
  !gs4
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 20,$08
  !f5
  db 10,$37
  !ds5
  db 10,$33
  !gs4
  db 10,$35
  !ds5
  db 10,$32
  !gs4
  db 10,$36
  !ds5
  db 10,$33
  !gs4
  db 10,$37
  !ds5
  db 10,$34
  !gs4
  db 10,$35
  !fs5
  db 10,$33
  !a4
  db 10,$36
  !fs5
  db 10,$35
  !a4
  db 10,$37
  !fs5
  db 10,$32
  !a4
  db 10,$38
  !ds5
  db 10,$36
  !gs4
  db 10,$37
  !e5
  db 10,$35
  !gs4
  db 10,$36
  !fs5
  db 10,$34
  !gs4
  db 10,$35
  !e5
  !gs4
  db 10,$34
  !fs5
  db 10,$35
  !a4
  db 10,$36
  !fs5
  db 10,$35
  !a4
  db 10,$37
  !fs5
  db 10,$33
  !a4
  db 10,$38
  !ds5
  db 10,$36
  !gs4
  db 10,$37
  !e5
  db 10,$35
  !gs4
  db 10,$36
  !fs5
  db 10,$34
  !gs4
  db 10,$35
  !ds5
  db 10,$33
  !gs4
  !subtranspose,60
  !instr,!instr19
  !volume,158
  !loop : dw .sub5913 : db 2
  db 10,$48
  !ds5
  db 10,$46
  !gs4
  db 10,$48
  !ds5
  !c5
  !end

.pattern3_3
  db 10,$38
  !gs5
  db 10,$35
  !cs5
  db 10,$38
  !gs5
  db 10,$35
  !cs5
  db 20,$08
  !gs5
  db 10,$37
  !gs5
  db 10,$33
  !c5
  db 10,$35
  !gs5
  db 10,$32
  !c5
  db 10,$36
  !gs5
  db 10,$33
  !c5
  db 10,$37
  !gs5
  db 10,$34
  !c5
  db 10,$38
  !gs5
  db 10,$35
  !cs5
  db 10,$38
  !gs5
  db 10,$35
  !cs5
  db 20,$08
  !gs5
  db 10,$37
  !gs5
  db 10,$33
  !c5
  db 10,$35
  !gs5
  db 10,$32
  !c5
  db 10,$36
  !gs5
  db 10,$33
  !c5
  db 10,$37
  !gs5
  db 10,$34
  !c5
  db 10,$35
  !gs5
  db 10,$33
  !d5
  db 10,$36
  !a5
  db 10,$35
  !d5
  db 10,$37
  !gs5
  db 10,$32
  !d5
  db 10,$38
  !fs5
  db 10,$36
  !cs5
  db 10,$37
  !gs5
  db 10,$35
  !cs5
  db 10,$36
  !gs5
  db 10,$34
  !cs5
  db 10,$35
  !gs5
  !cs5
  db 10,$34
  !gs5
  db 10,$35
  !d5
  db 10,$36
  !a5
  db 10,$35
  !d5
  db 10,$37
  !b5
  db 10,$33
  !d5
  db 10,$38
  !fs5
  db 10,$36
  !cs5
  db 10,$37
  !gs5
  db 10,$35
  !cs5
  db 10,$36
  !gs5
  db 10,$34
  !cs5
  db 10,$35
  !fs5
  db 10,$33
  !cs5
  !subtranspose,60
  !instr,!instr19
  !volume,158
  !loop : dw .sub59B8 : db 2
  db 10,$48
  !fs5
  db 10,$46
  !c5
  db 10,$48
  !fs5
  !ds5
  !end

.pattern3_4
  db 10,$38
  !cs6
  db 10,$35
  !f5
  db 10,$38
  !cs6
  db 10,$35
  !f5
  db 20,$08
  !cs6
  db 10,$37
  !c6
  db 10,$33
  !f5
  db 10,$35
  !c6
  db 10,$32
  !f5
  db 10,$36
  !c6
  db 10,$33
  !f5
  db 10,$37
  !c6
  db 10,$35
  !f5
  db 10,$38
  !cs6
  db 10,$35
  !f5
  db 10,$38
  !cs6
  db 10,$35
  !f5
  db 20,$08
  !cs6
  db 10,$37
  !c6
  db 10,$33
  !f5
  db 10,$35
  !c6
  db 10,$32
  !f5
  db 10,$36
  !c6
  db 10,$33
  !f5
  db 10,$37
  !c6
  db 10,$34
  !f5
  db 10,$35
  !cs6
  db 10,$33
  !fs5
  db 10,$36
  !cs6
  db 10,$35
  !fs5
  db 10,$37
  !cs6
  db 10,$32
  !fs5
  db 10,$38
  !b5
  db 10,$36
  !ds5
  db 10,$37
  !b5
  db 10,$35
  !e5
  !b5
  db 10,$34
  !fs5
  db 10,$35
  !b5
  !e5
  db 10,$34
  !cs6
  db 10,$35
  !fs5
  db 10,$36
  !cs6
  db 10,$35
  !fs5
  db 10,$37
  !cs6
  db 10,$33
  !fs5
  db 10,$38
  !b5
  db 10,$36
  !ds5
  db 10,$37
  !b5
  db 10,$35
  !e5
  db 10,$36
  !b5
  db 10,$34
  !fs5
  db 10,$35
  !b5
  db 10,$33
  !ds5
  !subtranspose,60
  !instr,!instr19
  !volume,158
  !loop : dw .sub5A61 : db 2
  db 10,$48
  !c6
  db 10,$46
  !ds5
  db 10,$48
  !c6
  !fs5
  !end

.sub5349
  !pan,10
  !instr,!instr2E
  db 20,$7B
  !ds3
  !pan,8
  db 10,$72
  %percNote(!instr2D-!instr2D)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  !pan,12
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$73
  %percNote(!instr30-!instr2D)
  !pan,8
  db 10,$72
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$7A
  %percNote(!instr30-!instr2D)
  !pan,8
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,12
  db 10,$72
  %percNote(!instr2D-!instr2D)
  !pan,8
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  !pan,8
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$73
  %percNote(!instr30-!instr2D)
  !pan,12
  db 10,$72
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !end

.sub53B7
  !pan,10
  !instr,!instr2E
  db 20,$7B
  !ds3
  !pan,8
  db 10,$72
  %percNote(!instr2D-!instr2D)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  !pan,12
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$73
  %percNote(!instr30-!instr2D)
  !pan,8
  db 10,$72
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$7A
  %percNote(!instr30-!instr2D)
  !pan,8
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,12
  db 10,$72
  %percNote(!instr2D-!instr2D)
  !pan,8
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  !pan,8
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$78
  %percNote(!instr30-!instr2D)
  db 10,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 10,$72
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$79
  %percNote(!instr30-!instr2D)
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$78
  %percNote(!instr30-!instr2D)
  db 10,$79
  %percNote(!instr30-!instr2D)
  !end

.sub5433
  !subtranspose,58
  !instr,!instr1D
  !volume,158
  !pan,8
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 20,$08
  !f5
  db 10,$37
  !e5
  db 10,$33
  !a4
  db 10,$35
  !e5
  db 10,$32
  !a4
  db 10,$36
  !e5
  db 10,$33
  !a4
  db 10,$37
  !e5
  db 10,$34
  !a4
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 10,$38
  !f5
  db 10,$35
  !as4
  db 20,$08
  !f5
  db 10,$37
  !e5
  db 10,$33
  !a4
  db 10,$35
  !e5
  db 10,$32
  !a4
  db 10,$36
  !e5
  db 10,$33
  !a4
  db 10,$37
  !e5
  db 10,$34
  !a4
  db 10,$35
  !d5
  db 10,$33
  !g4
  db 10,$36
  !d5
  db 10,$35
  !g4
  db 10,$37
  !d5
  db 10,$32
  !g4
  db 10,$38
  !d5
  db 10,$36
  !g4
  db 10,$37
  !d5
  db 10,$35
  !g4
  db 10,$36
  !d5
  db 10,$34
  !g4
  db 10,$35
  !d5
  !g4
  db 10,$34
  !d5
  db 10,$35
  !g4
  db 10,$36
  !d5
  db 10,$35
  !g4
  db 10,$37
  !d5
  db 10,$33
  !g4
  db 10,$38
  !d5
  db 10,$36
  !g4
  db 10,$37
  !d5
  db 10,$35
  !g4
  db 10,$36
  !d5
  db 10,$34
  !g4
  db 10,$35
  !d5
  db 10,$33
  !g4
  db 10,$35
  !c5
  db 10,$33
  !f4
  db 10,$36
  !c5
  db 10,$35
  !f4
  db 10,$37
  !c5
  db 10,$35
  !f4
  db 10,$38
  !b4
  db 10,$36
  !e4
  db 10,$37
  !b4
  db 10,$35
  !e4
  db 10,$36
  !b4
  db 10,$34
  !e4
  db 10,$35
  !b4
  !e4
  db 10,$34
  !c5
  db 10,$35
  !f4
  db 10,$36
  !c5
  db 10,$35
  !f4
  db 10,$37
  !c5
  db 10,$35
  !f4
  db 10,$38
  !b4
  db 10,$36
  !e4
  db 10,$37
  !b4
  db 10,$35
  !e4
  db 10,$36
  !b4
  db 10,$34
  !e4
  db 10,$35
  !b4
  db 10,$33
  !e4
  !c5
  db 10,$32
  !f4
  db 10,$34
  !c5
  db 10,$33
  !f4
  db 10,$35
  !c5
  db 10,$33
  !f4
  db 10,$35
  !c5
  db 10,$33
  !f4
  db 10,$36
  !c5
  db 10,$33
  !f4
  db 10,$36
  !c5
  db 10,$33
  !f4
  db 10,$36
  !c5
  db 10,$33
  !f4
  db 10,$36
  !c5
  db 10,$34
  !f4
  db 10,$36
  !c5
  db 10,$34
  !f4
  db 10,$36
  !c5
  db 10,$34
  !f4
  db 10,$37
  !c5
  db 10,$34
  !f4
  db 10,$37
  !c5
  db 10,$34
  !f4
  db 10,$37
  !c5
  db 10,$34
  !f4
  db 10,$38
  !c5
  db 10,$35
  !f4
  db 10,$38
  !ds5
  db 10,$36
  !gs4
  db 10,$38
  !ds5
  !c5
  !end

.sub558A
  !subtranspose,58
  !instr,!instr1D
  !volume,158
  !pan,12
  db 10,$38
  !as5
  db 10,$35
  !d5
  db 10,$38
  !as5
  db 10,$35
  !d5
  db 20,$08
  !as5
  db 10,$37
  !a5
  db 10,$33
  !c5
  db 10,$35
  !a5
  db 10,$32
  !c5
  db 10,$36
  !a5
  db 10,$33
  !c5
  db 10,$37
  !a5
  db 10,$34
  !c5
  db 10,$38
  !as5
  db 10,$35
  !d5
  db 10,$38
  !as5
  db 10,$35
  !d5
  db 20,$08
  !as5
  db 10,$37
  !a5
  db 10,$33
  !c5
  db 10,$35
  !a5
  db 10,$32
  !c5
  db 10,$36
  !a5
  db 10,$33
  !c5
  db 10,$37
  !a5
  db 10,$34
  !c5
  db 10,$35
  !g5
  db 10,$33
  !b4
  db 10,$36
  !g5
  db 10,$35
  !b4
  db 10,$37
  !g5
  db 10,$32
  !b4
  db 10,$38
  !g5
  db 10,$36
  !as4
  db 10,$37
  !g5
  db 10,$35
  !as4
  db 10,$36
  !g5
  db 10,$34
  !as4
  db 10,$35
  !g5
  !as4
  db 10,$34
  !g5
  db 10,$35
  !b4
  db 10,$36
  !g5
  db 10,$35
  !b4
  db 10,$37
  !g5
  db 10,$33
  !b4
  db 10,$38
  !g5
  db 10,$36
  !as4
  db 10,$37
  !g5
  db 10,$35
  !as4
  db 10,$36
  !g5
  db 10,$34
  !as4
  db 10,$35
  !g5
  db 10,$33
  !as4
  db 10,$35
  !f5
  db 10,$33
  !gs4
  db 10,$36
  !f5
  db 10,$35
  !gs4
  db 10,$37
  !f5
  db 10,$35
  !gs4
  db 10,$38
  !e5
  db 10,$36
  !g4
  db 10,$37
  !e5
  db 10,$35
  !g4
  db 10,$36
  !e5
  db 10,$34
  !g4
  db 10,$35
  !e5
  !g4
  db 10,$34
  !f5
  db 10,$35
  !gs4
  db 10,$36
  !f5
  db 10,$35
  !gs4
  db 10,$37
  !f5
  db 10,$35
  !gs4
  db 10,$38
  !e5
  db 10,$36
  !g4
  db 10,$37
  !e5
  db 10,$35
  !g4
  db 10,$36
  !e5
  db 10,$34
  !g4
  db 10,$35
  !e5
  db 10,$33
  !g4
  !f5
  db 10,$32
  !gs4
  db 10,$34
  !f5
  db 10,$33
  !gs4
  db 10,$35
  !f5
  db 10,$33
  !gs4
  db 10,$35
  !f5
  db 10,$33
  !gs4
  db 10,$36
  !f5
  db 10,$33
  !gs4
  db 10,$36
  !f5
  db 10,$33
  !gs4
  db 10,$36
  !f5
  db 10,$33
  !gs4
  db 10,$36
  !f5
  db 10,$34
  !gs4
  db 10,$36
  !f5
  db 10,$34
  !gs4
  db 10,$36
  !f5
  db 10,$34
  !gs4
  db 10,$37
  !f5
  db 10,$34
  !gs4
  db 10,$37
  !f5
  db 10,$34
  !gs4
  db 10,$37
  !f5
  db 10,$34
  !gs4
  db 10,$38
  !f5
  db 10,$35
  !gs4
  db 10,$38
  !fs5
  db 10,$36
  !c5
  db 10,$38
  !fs5
  !ds5
  !end

.sub56E1
  !subtranspose,58
  !instr,!instr1D
  !volume,158
  !pan,10
  db 10,$38
  !d6
  db 10,$35
  !g5
  db 10,$38
  !d6
  db 10,$35
  !g5
  db 20,$08
  !d6
  db 10,$37
  !c6
  db 10,$33
  !f5
  db 10,$35
  !c6
  db 10,$32
  !f5
  db 10,$36
  !c6
  db 10,$33
  !f5
  db 10,$37
  !c6
  db 10,$35
  !f5
  db 10,$38
  !d6
  db 10,$35
  !g5
  db 10,$38
  !d6
  db 10,$35
  !g5
  db 20,$08
  !d6
  db 10,$37
  !c6
  db 10,$33
  !f5
  db 10,$35
  !c6
  db 10,$32
  !f5
  db 10,$36
  !c6
  db 10,$33
  !f5
  db 10,$37
  !c6
  db 10,$34
  !f5
  db 10,$35
  !b5
  db 10,$33
  !e5
  db 10,$36
  !b5
  db 10,$35
  !e5
  db 10,$37
  !b5
  db 10,$32
  !e5
  db 10,$38
  !as5
  db 10,$36
  !ds5
  db 10,$37
  !as5
  db 10,$35
  !ds5
  db 10,$36
  !as5
  db 10,$34
  !ds5
  db 10,$35
  !as5
  !ds5
  db 10,$34
  !b5
  db 10,$35
  !e5
  db 10,$36
  !b5
  db 10,$35
  !e5
  db 10,$37
  !b5
  db 10,$33
  !e5
  db 10,$38
  !as5
  db 10,$36
  !ds5
  db 10,$37
  !as5
  db 10,$35
  !ds5
  db 10,$36
  !as5
  db 10,$34
  !ds5
  db 10,$35
  !as5
  db 10,$33
  !ds5
  db 10,$35
  !gs5
  db 10,$33
  !cs5
  db 10,$36
  !gs5
  db 10,$35
  !cs5
  db 10,$37
  !gs5
  db 10,$35
  !cs5
  db 10,$38
  !g5
  db 10,$36
  !c5
  db 10,$37
  !g5
  db 10,$35
  !c5
  db 10,$36
  !g5
  db 10,$34
  !c5
  db 10,$35
  !g5
  !c5
  db 10,$34
  !gs5
  db 10,$35
  !cs5
  db 10,$36
  !as5
  db 10,$35
  !cs5
  db 10,$37
  !gs5
  db 10,$35
  !cs5
  db 10,$38
  !g5
  db 10,$36
  !c5
  db 10,$37
  !g5
  db 10,$35
  !c5
  db 10,$36
  !g5
  db 10,$34
  !c5
  db 10,$35
  !g5
  db 10,$33
  !c5
  !gs5
  db 10,$32
  !cs5
  db 10,$34
  !gs5
  db 10,$33
  !cs5
  db 10,$35
  !gs5
  db 10,$33
  !cs5
  db 10,$35
  !gs5
  db 10,$33
  !cs5
  db 10,$36
  !as5
  db 10,$33
  !cs5
  db 10,$36
  !gs5
  db 10,$33
  !cs5
  db 10,$36
  !gs5
  db 10,$33
  !cs5
  db 10,$36
  !as5
  db 10,$34
  !cs5
  db 10,$36
  !gs5
  db 10,$34
  !cs5
  db 10,$36
  !gs5
  db 10,$34
  !cs5
  db 10,$37
  !as5
  db 10,$34
  !cs5
  db 10,$37
  !gs5
  db 10,$34
  !cs5
  db 10,$37
  !as5
  db 10,$34
  !cs5
  db 10,$38
  !gs5
  db 10,$35
  !cs5
  db 10,$38
  !c6
  db 10,$36
  !ds5
  db 10,$38
  !c6
  !fs5
  !end

.sub5838
  !pan,10
  !instr,!instr2E
  db 20,$7B
  !ds3
  !pan,8
  db 10,$72
  %percNote(!instr2D-!instr2D)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  !pan,12
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$73
  %percNote(!instr30-!instr2D)
  !pan,8
  db 10,$72
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$7A
  %percNote(!instr30-!instr2D)
  !pan,8
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,12
  db 10,$72
  %percNote(!instr2D-!instr2D)
  !pan,8
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  !pan,8
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$73
  %percNote(!instr30-!instr2D)
  !pan,12
  db 10,$72
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  !instr,!instr2E
  db 20,$7B
  !ds3
  !pan,8
  db 10,$72
  %percNote(!instr2D-!instr2D)
  !pan,12
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  !pan,12
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$73
  %percNote(!instr30-!instr2D)
  !pan,8
  db 10,$72
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$7A
  %percNote(!instr30-!instr2D)
  !pan,8
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,12
  db 10,$72
  %percNote(!instr2D-!instr2D)
  !pan,8
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$76
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  db 10,$75
  %percNote(!instr30-!instr2D)
  db 10,$72
  %percNote(!instr30-!instr2D)
  !pan,8
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !pan,10
  db 10,$78
  %percNote(!instr30-!instr2D)
  db 10,$76
  %percNote(!instr30-!instr2D)
  !pan,12
  db 10,$72
  %percNote(!instr2D-!instr2D)
  db 10,$71
  %percNote(!instr2D-!instr2D)
  !end

.sub5913
  db 10,$45
  !gs5
  db 10,$43
  !fs4
  db 10,$46
  !gs5
  db 10,$45
  !fs4
  db 10,$47
  !gs5
  db 10,$45
  !fs4
  db 10,$48
  !fs5
  db 10,$46
  !fs4
  db 10,$47
  !fs5
  db 10,$45
  !fs4
  db 10,$46
  !fs5
  db 10,$44
  !fs4
  db 10,$45
  !fs5
  !fs4
  db 10,$44
  !f5
  db 10,$45
  !fs4
  db 10,$46
  !f5
  db 10,$45
  !fs4
  db 10,$47
  !f5
  db 10,$45
  !fs4
  db 10,$48
  !fs5
  db 10,$46
  !fs4
  db 10,$47
  !fs5
  db 10,$45
  !fs4
  db 10,$46
  !fs5
  db 10,$44
  !fs4
  db 10,$45
  !fs5
  db 10,$43
  !fs4
  db 10,$45
  !fs5
  db 10,$43
  !e4
  db 10,$46
  !fs5
  db 10,$45
  !e4
  db 10,$47
  !fs5
  db 10,$45
  !e4
  db 10,$48
  !e5
  db 10,$46
  !e4
  db 10,$47
  !e5
  db 10,$45
  !e4
  db 10,$46
  !e5
  db 10,$44
  !e4
  db 10,$45
  !e5
  !e4
  db 10,$44
  !ds5
  db 10,$45
  !e4
  db 10,$46
  !ds5
  db 10,$45
  !e4
  db 10,$47
  !ds5
  db 10,$45
  !e4
  db 10,$48
  !e5
  db 10,$46
  !e4
  db 10,$47
  !e5
  db 10,$45
  !e4
  db 10,$46
  !e5
  db 10,$44
  !e4
  db 10,$45
  !e5
  db 10,$43
  !e4
  !end

.sub59B8
  db 10,$43
  !as5
  db 10,$42
  !as4
  db 10,$44
  !as5
  db 10,$43
  !as4
  db 10,$45
  !as5
  db 10,$43
  !as4
  db 10,$45
  !as5
  db 10,$43
  !as4
  db 10,$46
  !as5
  db 10,$43
  !as4
  db 10,$46
  !as5
  db 10,$43
  !as4
  db 10,$46
  !as5
  db 10,$43
  !as4
  db 10,$46
  !as5
  db 10,$44
  !as4
  db 10,$46
  !as5
  db 10,$44
  !as4
  db 10,$46
  !as5
  db 10,$44
  !as4
  db 10,$47
  !as5
  db 10,$44
  !as4
  db 10,$47
  !as5
  db 10,$44
  !as4
  db 10,$47
  !as5
  db 10,$44
  !as4
  db 10,$48
  !as5
  db 10,$45
  !as4
  db 10,$43
  !gs5
  db 10,$42
  !gs4
  db 10,$44
  !gs5
  db 10,$43
  !gs4
  db 10,$45
  !gs5
  db 10,$43
  !gs4
  db 10,$45
  !gs5
  db 10,$43
  !gs4
  db 10,$46
  !gs5
  db 10,$43
  !gs4
  db 10,$46
  !gs5
  db 10,$43
  !gs4
  db 10,$46
  !gs5
  db 10,$43
  !gs4
  db 10,$46
  !gs5
  db 10,$44
  !gs4
  db 10,$46
  !gs5
  db 10,$44
  !gs4
  db 10,$46
  !gs5
  db 10,$44
  !gs4
  db 10,$47
  !gs5
  db 10,$44
  !gs4
  db 10,$47
  !gs5
  db 10,$44
  !gs4
  db 10,$47
  !gs5
  db 10,$44
  !gs4
  db 10,$48
  !gs5
  db 10,$45
  !gs4
  !end

.sub5A61
  db 10,$43
  !cs6
  db 10,$42
  !ds5
  db 10,$44
  !cs6
  db 10,$43
  !ds5
  db 10,$45
  !cs6
  db 10,$43
  !ds5
  db 10,$45
  !cs6
  db 10,$43
  !ds5
  db 10,$46
  !cs6
  db 10,$43
  !ds5
  db 10,$46
  !cs6
  db 10,$43
  !ds5
  db 10,$46
  !cs6
  db 10,$43
  !ds5
  db 10,$46
  !cs6
  db 10,$44
  !ds5
  db 10,$46
  !cs6
  db 10,$44
  !ds5
  db 10,$46
  !cs6
  db 10,$44
  !ds5
  db 10,$47
  !cs6
  db 10,$44
  !ds5
  db 10,$47
  !cs6
  db 10,$44
  !ds5
  db 10,$47
  !cs6
  db 10,$44
  !ds5
  db 10,$48
  !cs6
  db 10,$45
  !ds5
  db 10,$43
  !b5
  db 10,$42
  !cs5
  db 10,$44
  !b5
  db 10,$43
  !cs5
  db 10,$45
  !b5
  db 10,$43
  !cs5
  db 10,$45
  !b5
  db 10,$43
  !cs5
  db 10,$46
  !b5
  db 10,$43
  !cs5
  db 10,$46
  !b5
  db 10,$43
  !cs5
  db 10,$46
  !b5
  db 10,$43
  !cs5
  db 10,$46
  !b5
  db 10,$44
  !cs5
  db 10,$46
  !b5
  db 10,$44
  !cs5
  db 10,$46
  !b5
  db 10,$44
  !cs5
  db 10,$47
  !b5
  db 10,$44
  !cs5
  db 10,$47
  !b5
  db 10,$44
  !cs5
  db 10,$47
  !b5
  db 10,$44
  !cs5
  db 10,$48
  !b5
  db 10,$45
  !cs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
