asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr04 = $17
!instr05 = $18
!instr0A = $19
!instr0B = $1A
!instr14 = $1B
!instr15 = $1C
!instr16 = $1D
!instr18 = $1E
!instr19 = $1F
!instr1B = $20
!instr20 = $21
!instr26 = $22
!instr2B = $23
!instr2E = $24
!instr30 = $25
!instr31 = $26
!instr32 = $27

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$04,$80
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr0A,$8F,$E0,$B8,$03,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr14,$DF,$14,$B8,$05,$00
  db !instr15,$8F,$E0,$B8,$05,$00
  db !instr16,$85,$EB,$B8,$03,$C0
  db !instr18,$82,$EE,$B8,$03,$C0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr20,$FF,$E0,$B8,$03,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FF,$E0,$B8,$03,$C0
  db !instr32,$FF,$F1,$B8,$01,$60
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+765
  dw Sample04,Sample04+1098
  dw Sample05,Sample05+27
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample14_15,Sample14_15+576
  dw Sample14_15,Sample14_15+576
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1F_20,Sample1F_20+27
  dw Sample26,Sample26+27
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample2E,Sample2E+2151
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+2610
  dw Sample32,Sample32+2115
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_759514f69dc1ba8eed65c41c2bb81670.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample14_15: incbin "Sample_5e8a5455ea4dde12c0b474f264a17f2e.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample1F_20: incbin "Sample_dba4d6f4dab80fdde9fe7792a812ef02.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_712e6e33606405ae3302082815088856.brr"
  Sample32: incbin "Sample_ea492d9804a1180fdb711c47f02bc1ef.brr"

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
  dw .pattern7
  dw .pattern8
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

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr30
  !transpose,253
  !echo,%00011111,48,48
  !echoParameters,5,181,0
  !musicVolume,255
  !tempo,51
  !volume,201
  !pan,7
  !instr,!instr2E
  db 27,$7B
  !c4
  !echo,%00011110,48,48
  !pan,12
  db 9,$75
  %percNote(!instr30-!instr30)
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 18,$7B
  !c4
  !c4
  !pan,12
  !echo,%00011110,48,48
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  !end

.pattern0_1
  !endVibrato
  !subtranspose,0
  !endSlide
  !volume,201
  !pan,13
  !instr,!instr32
  db 18,$19
  !gs5
  db 54
  !rest
  db 18
  !gs5
  !gs5
  !rest
  !volume,174
  !subtranspose,0
  !pan,10
  !instr,!instr2B
  db 9,$06
  !f5
  !c6
  db 18,$76
  !f5
  !pitchSlide,6,4 : !f6
  db 9,$06
  !f5
  db 27,$53
  !b5
  db 9,$56
  !f5
  !cs6
  !slideIn,0,3,9
  !c6
  !cs5
  !fs5
  !as5
  !cs6
  db 9,$55
  !fs6
  !as6
  !cs7

.pattern0_2
  !endSlide
  !endVibrato
  !subtranspose,0
  !pan,11
  !instr,!instr31
  !volume,193
  db 72,$5A
  !f4
  db 18
  !f4
  db 36
  !f4
  !volume,121
  !pan,0
  !subtranspose,55
  !instr,!instr19
  !vibrato,0,20,60
  db 9,$28
  !f5
  !c6
  !f5
  !f6
  !f5
  db 27,$58
  !b5
  db 9,$28
  !f5
  !cs6
  !c6
  !cs5
  !fs5
  !as5
  !cs6
  !fs6
  !as6
  !cs7

.pattern0_3
  !endSlide
  !endVibrato
  !subtranspose,0
  !pan,9
  !instr,!instr05
  !volume,201
  db 18,$47
  !f2
  db 54
  !rest
  db 18
  !f2
  !f2
  !rest
  !volume,121
  !pan,20
  !subtranspose,65
  !instr,!instr19
  !vibrato,0,20,60
  db 9,$28
  !f5
  !c6
  !f5
  !f6
  !f5
  db 27,$58
  !b5
  db 9,$28
  !f5
  !cs6
  !c6
  !cs5
  !fs5
  !as5
  !cs6
  !fs6
  !as6
  !cs7

.pattern0_4
  !transpose,0
  !instr,!instr14
  !volume,149
  !vibrato,0,20,243
  !pan,13
  !dynamicPan,144,7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  !dynamicPan,144,13
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7

.pattern1_0
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 27,$7B
  !c4
  !echo,%00011110,48,48
  !pan,12
  db 9,$75
  %percNote(!instr30-!instr30)
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 18,$7B
  !c4
  !c4
  !pan,12
  !echo,%00011110,48,48
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  !end

.pattern1_1
  !subtranspose,0
  !endSlide
  !volume,201
  !pan,13
  !instr,!instr32
  db 18,$19
  !gs5
  db 54
  !rest
  db 18
  !gs5
  !gs5
  !rest
  !volume,174
  !subtranspose,0
  !pan,10
  !instr,!instr2B
  db 9,$06
  !f5
  !c6
  db 18,$76
  !f5
  !pitchSlide,6,4 : !f6
  db 9,$06
  !f5
  db 27,$53
  !b5
  db 9,$56
  !f5
  !cs6
  !slideIn,0,2,9
  !c6
  !d6
  !ds6
  !gs5
  !as5
  db 9,$55
  !f5
  !d6
  !as5

.pattern1_2
  !endVibrato
  !subtranspose,0
  !pan,11
  !instr,!instr31
  !volume,193
  db 72,$5A
  !f4
  db 18
  !f4
  db 36
  !f4
  !volume,125
  !pan,0
  !subtranspose,52
  !instr,!instr1B
  !vibrato,0,20,60
  db 9,$28
  !f5
  !c6
  !f5
  !f6
  !f5
  db 27,$58
  !b5
  db 9,$28
  !f5
  !cs6
  !c6
  !d6
  !ds6
  !gs5
  !as5
  !f5
  !d6
  !as5

.pattern1_3
  !endVibrato
  !subtranspose,0
  !pan,9
  !instr,!instr05
  !volume,201
  db 18,$47
  !f2
  db 54
  !rest
  db 18
  !f2
  !f2
  !rest
  !volume,125
  !pan,20
  !subtranspose,63
  !instr,!instr1B
  !vibrato,0,20,60
  db 9,$28
  !f5
  !c6
  !f5
  !f6
  !f5
  db 27,$58
  !b5
  db 9,$28
  !f5
  !cs6
  !c6
  !d6
  !ds6
  !gs5
  !as5
  !f5
  !d6
  !as5

.pattern1_4
  !loop : dw .sub59BF : db 1

.pattern2_0
  !percBase,!instr30
  !transpose,253
  !echo,%00011111,48,48
  !echoParameters,5,181,0
  !musicVolume,255
  !tempo,51
  !volume,201
  !pan,7
  !instr,!instr2E
  db 27,$7B
  !c4
  !echo,%00011110,48,48
  !pan,12
  db 9,$75
  %percNote(!instr30-!instr30)
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 18,$7B
  !c4
  !c4
  !pan,12
  !echo,%00011110,48,48
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  !end

.pattern2_1
  !endVibrato
  !subtranspose,0
  !endSlide
  !volume,201
  !pan,13
  !instr,!instr32
  db 18,$19
  !gs5
  db 54
  !rest
  db 18
  !gs5
  !gs5
  !rest
  !volume,174
  !subtranspose,0
  !pan,10
  !instr,!instr2B
  db 9,$06
  !f5
  !c6
  db 18,$76
  !f5
  !pitchSlide,6,4 : !f6
  db 9,$06
  !f5
  db 27,$53
  !b5
  db 9,$56
  !f5
  !cs6
  !slideIn,0,3,9
  !c6
  !cs5
  !fs5
  !as5
  !cs6
  db 9,$55
  !fs6
  !as6
  !cs7

.pattern2_2
  !endSlide
  !endVibrato
  !subtranspose,0
  !pan,11
  !instr,!instr31
  !volume,193
  db 72,$5A
  !f4
  db 18
  !f4
  db 36
  !f4
  !volume,121
  !pan,0
  !subtranspose,55
  !instr,!instr19
  !vibrato,0,20,60
  db 9,$28
  !f5
  !c6
  !f5
  !f6
  !f5
  db 27,$58
  !b5
  db 9,$28
  !f5
  !cs6
  !c6
  !cs5
  !fs5
  !as5
  !cs6
  !fs6
  !as6
  !cs7

.pattern2_3
  !endSlide
  !endVibrato
  !subtranspose,0
  !pan,9
  !instr,!instr05
  !volume,201
  db 18,$47
  !f2
  db 54
  !rest
  db 18
  !f2
  !f2
  !rest
  !volume,121
  !pan,20
  !subtranspose,65
  !instr,!instr19
  !vibrato,0,20,60
  db 9,$28
  !f5
  !c6
  !f5
  !f6
  !f5
  db 27,$58
  !b5
  db 9,$28
  !f5
  !cs6
  !c6
  !cs5
  !fs5
  !as5
  !cs6
  !fs6
  !as6
  !cs7

.pattern2_4
  !transpose,0
  !instr,!instr14
  !volume,149
  !vibrato,0,20,243
  !pan,13
  !dynamicPan,144,7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  !dynamicPan,144,13
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7

.pattern3_0
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 27,$7B
  !c4
  !echo,%00011110,48,48
  !pan,12
  db 9,$75
  %percNote(!instr30-!instr30)
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 18,$7B
  !c4
  !c4
  !pan,12
  !echo,%00011110,48,48
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  !end

.pattern3_1
  !subtranspose,0
  !endSlide
  !volume,201
  !pan,13
  !instr,!instr32
  db 18,$19
  !gs5
  db 54
  !rest
  db 18
  !gs5
  !gs5
  !rest
  !volume,174
  !subtranspose,0
  !pan,10
  !instr,!instr2B
  db 9,$06
  !f5
  !c6
  db 18,$76
  !f5
  !pitchSlide,6,4 : !f6
  db 9,$06
  !f5
  db 27,$53
  !b5
  db 9,$56
  !f5
  !cs6
  !slideIn,0,1,7
  !volume,127
  !instr,!instr0A
  db 9,$28
  !c6
  !c6
  !c6
  !f5
  !c5
  !d5
  !g5
  !c6

.pattern3_2
  !endVibrato
  !subtranspose,0
  !pan,11
  !instr,!instr31
  !volume,193
  db 72,$5A
  !f4
  db 18
  !f4
  db 36
  !f4
  !volume,125
  !pan,0
  !subtranspose,52
  !instr,!instr1B
  !vibrato,0,20,60
  db 9,$28
  !f5
  !c6
  !f5
  !f6
  !f5
  db 27,$58
  !b5
  db 9,$28
  !f5
  !cs6
  !slideIn,0,1,7
  !subtranspose,0
  !volume,121
  !endVibrato
  !instr,!instr0A
  !c6
  !gs6
  !ds6
  !as5
  !f5
  !g5
  !c6
  !f6

.pattern3_3
  !endVibrato
  !subtranspose,0
  !pan,9
  !instr,!instr05
  !volume,201
  db 18,$47
  !f2
  db 54
  !rest
  db 18
  !f2
  !f2
  !rest
  !volume,125
  !pan,20
  !subtranspose,63
  !instr,!instr1B
  !vibrato,0,20,60
  db 9,$28
  !f5
  !c6
  !f5
  !f6
  !f5
  db 27,$58
  !b5
  db 9,$28
  !f5
  !cs6
  !slideIn,0,1,7
  !subtranspose,10
  !volume,121
  !instr,!instr0A
  !endVibrato
  !c6
  !gs6
  !ds6
  !as5
  !f5
  !g5
  !c6
  !f6

.pattern3_4
  !pan,13
  !dynamicPan,144,7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  !dynamicPan,107,13
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !pan,12
  db 9,$4B
  !e7
  !pan,8
  db 9,$49
  !c7
  !pan,20
  db 9,$4A
  !e7
  !pan,0
  db 9,$4B
  !c7

.pattern4_0
  !volume,208
  !echo,%00011110,48,48
  !pan,12
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  db 18
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  !end

.pattern4_1
  !instr,!instr20
  !endSlide
  !vibrato,0,40,100
  !volume,131
  !pan,0
  db 5,$73
  !as6
  !pan,20
  db 4
  !as6
  !pan,0
  db 5
  !a6
  !pan,20
  db 4
  !a6
  !pan,0
  db 5,$74
  !gs6
  !pan,20
  db 4
  !gs6
  !pan,0
  db 5,$75
  !g6
  !pan,20
  db 4
  !g6
  !pan,0
  db 5,$76
  !fs6
  !pan,20
  db 4
  !fs6
  !pan,0
  db 5,$78
  !f6
  !pan,20
  db 4
  !f6
  !pan,0
  db 5,$79
  !e6
  !pan,20
  db 4
  !e6
  !pan,0
  db 5,$7A
  !ds6
  !pan,20
  db 4
  !ds6

.pattern4_2
  !volume,142
  !instr,!instr15
  !endVibrato
  !subtranspose,0
  !pan,20
  !slideOut,0,72,232
  db 72,$76
  !f4

.pattern4_3
  !volume,142
  !instr,!instr15
  !endVibrato
  !subtranspose,0
  !pan,0
  !slideOut,0,72,232
  db 72,$76
  !g4

.pattern4_4
  !volume,156
  !pan,7
  !dynamicPan,72,13
  db 18,$2B
  !e7
  db 9,$4B
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7

.pattern5_0
  !transpose,0
  !echo,%00011111,48,48
  !instr,!instr0B
  !subtranspose,0
  !pan,12
  !endTremolo
  !endSlide
  !endVibrato
  !volume,130
  db 12,$26
  !fs7
  !d7
  !as6
  !fs6
  !as6
  !d7
  !fs7
  !d7
  !as6
  !fs6
  !as6
  !d7
  !loop : dw .sub59EF : db 8
  !fs7
  !d7
  !as6
  !fs6
  !as6
  !d7
  !fs7
  !d7
  !as6
  !echo,%00011110,48,48
  !volume,201
  !pan,10
  db 9,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  !end

.pattern5_1
  !instr,!instr0B
  !subtranspose,0
  !pan,8
  !endTremolo
  !endSlide
  !endVibrato
  !volume,130
  db 12,$26
  !as7
  !fs7
  !d7
  !as6
  !d7
  !fs7
  !as7
  !fs7
  !d7
  !as6
  !d7
  !fs7
  !loop : dw .sub59FC : db 8
  !as7
  !fs7
  !d7
  !as6
  !d7
  !fs7
  !as7
  !fs7
  !d7
  !as6
  db 6,$76
  !d7
  !instr,!instr2E
  !volume,201
  !pan,8
  db 18,$7B
  !a3

.pattern5_2
  !instr,!instr19
  !subtranspose,60
  !vibrato,0,15,50
  !endSlide
  !volume,70
  !dynamicVolume,90,150
  !pan,8
  db 72,$76
  !as5
  !pitchSlide,55,25 : !fs5
  !tie
  db 60
  !tie
  db 36
  !as5
  !fs5
  db 12
  !d5
  db 24
  !tie
  !fs5
  db 72
  !tie
  !dynamicVolume,89,75
  db 24
  !tie
  db 66
  !tie
  !volume,150
  db 12,$77
  !d5
  !as5
  !d6
  !instr,!instr16
  db 42,$76
  !fs6
  db 66
  !tie
  db 48,$46
  !g6
  db 30,$76
  !fs6
  db 72
  !tie
  !tie
  !tie
  !instr,!instr19
  db 9,$73
  !d6
  db 9,$74
  !ds6
  db 54,$76
  !d6
  !tie
  db 36
  !as5
  db 54
  !d6
  db 18
  !tie
  db 36
  !ds6
  !endVibrato
  !tremolo,0,16,130
  !instr,!instr18
  db 36,$7B
  !d6
  db 54
  !tie
  db 72
  !tie
  !tie

.pattern5_3
  !instr,!instr19
  !subtranspose,60
  !endSlide
  !vibrato,0,15,50
  !volume,70
  !dynamicVolume,90,150
  !pan,12
  db 72,$76
  !d6
  !pitchSlide,55,25 : !as5
  !tie
  db 60
  !tie
  db 36
  !d6
  !as5
  db 12
  !fs5
  db 24
  !tie
  !as5
  db 72
  !tie
  !dynamicVolume,89,75
  db 24
  !tie
  db 66
  !tie
  !volume,150
  db 12,$77
  !fs5
  !d6
  !fs6
  !instr,!instr16
  db 42,$76
  !as6
  db 66
  !tie
  db 48,$46
  !b6
  db 30,$76
  !as6
  db 72
  !tie
  !tie
  !tie
  !instr,!instr19
  db 9,$73
  !fs6
  db 9,$74
  !g6
  db 54,$76
  !fs6
  !tie
  db 36
  !d6
  db 54
  !fs6
  db 18
  !tie
  db 36
  !g6
  !endVibrato
  !tremolo,0,16,130
  !instr,!instr18
  db 36,$7B
  !fs6
  db 54
  !tie
  db 72
  !tie
  !tie

.pattern5_4
  !endSlide
  !transpose,246
  !volume,149
  !dynamicVolume,255,173
  !pan,13
  !dynamicPan,144,7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  !dynamicPan,144,13
  !e7
  !c7
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  !e7
  !c7
  !dynamicVolume,143,134
  !dynamicPan,144,7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  !dynamicVolume,144,196
  !dynamicPan,144,13
  !e7
  !c7
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  !e7
  !c7
  !volume,126
  !dynamicVolume,255,173
  !dynamicPan,144,7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  !dynamicPan,144,13
  !e7
  !c7
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  !e7
  !c7
  !dynamicVolume,144,118
  !dynamicPan,144,7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  !dynamicVolume,144,188
  !dynamicPan,144,13
  !e7
  !c7
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  !e7
  !c7
  !dynamicVolume,144,140
  !dynamicPan,144,13
  !e7
  !c7
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  !e7
  !c7
  !dynamicVolume,108,190
  !dynamicPan,144,7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  !transpose,0
  !pan,12
  db 9,$48
  !e7
  !pan,8
  !c7
  !pan,15
  !e7
  !pan,5
  !c7

.pattern6_0
  !volume,232
  !transpose,252
  !loop : dw .sub5A09 : db 3
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 27,$7B
  !c4
  !echo,%00011110,48,48
  !pan,12
  db 9,$75
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 18,$7B
  !c4
  !c4
  db 9,$7A
  !d4
  !d4
  !d4
  !d4
  !loop : dw .sub5A09 : db 3
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 27,$7B
  !c4
  !echo,%00011110,48,48
  !pan,12
  db 9,$75
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 18,$7B
  !c4
  !c4
  !echo,%00011011,48,48
  db 9,$7A
  !d4
  !d4
  !d4
  !d4
  !end

.pattern6_1
  !volume,201
  !pan,13
  !instr,!instr32
  db 18,$19
  !gs5
  db 54
  !rest
  db 18
  !gs5
  !gs5
  db 36
  !rest
  !loop : dw .sub5A45 : db 2
  db 18
  !gs5
  db 45
  !rest
  db 9,$58
  !gs5
  db 18,$19
  !gs5
  !gs5
  !rest
  db 9,$59
  !gs5
  !gs5
  !loop : dw .sub5A4F : db 4

.pattern6_2
  !endTremolo
  !subtranspose,0
  !pan,11
  !instr,!instr31
  !volume,193
  db 72,$2A
  !f3
  db 18,$5A
  !f3
  db 54,$3A
  !f3
  db 72,$2A
  !fs3
  db 18,$5A
  !fs3
  db 54,$3A
  !fs3
  db 72,$2A
  !ds3
  db 18,$5A
  !ds3
  db 54,$3A
  !ds3
  db 63
  !f3
  db 9,$5A
  !f3
  db 18
  !f3
  db 36,$4A
  !f3
  db 9,$5A
  !c3
  !f3
  db 63,$3A
  !fs3
  db 9,$5A
  !fs3
  db 18
  !fs3
  db 36,$4A
  !fs3
  db 9,$56
  !fs3
  db 9,$5A
  !fs3
  db 63,$3A
  !gs3
  db 9,$5A
  !gs3
  db 18
  !gs3
  db 36,$4A
  !gs3
  db 9,$56
  !gs3
  db 9,$5A
  !gs3
  db 63,$3A
  !f3
  db 9,$5A
  !f3
  db 18
  !f3
  db 18,$7A
  !f3
  !pan,14
  !instr,!instr04
  !volume,149
  db 9,$78
  !ds5
  !c5
  !ds5
  !gs5
  !pan,11
  !instr,!instr31
  !volume,193
  db 63,$3A
  !fs3
  db 9,$5A
  !fs3
  db 18
  !fs3
  db 18,$7A
  !fs3
  !slideOut,1,4,226
  !instr,!instr26
  !transpose,12
  !volume,170
  !pan,0
  db 9,$13
  !as7
  !pan,20
  !as7
  !pan,0
  !as7
  !pan,20
  !as7

.pattern6_3
  !vibrato,0,20,30
  !endTremolo
  !subtranspose,0
  !pan,9
  !instr,!instr02
  !volume,149
  db 18,$46
  !f5
  db 54
  !rest
  db 18
  !f5
  !f5
  db 36
  !rest
  db 18
  !fs5
  db 54
  !rest
  db 18
  !fs5
  !fs5
  db 36
  !rest
  db 18
  !ds5
  db 54
  !rest
  db 18
  !ds5
  !ds5
  db 36
  !rest
  db 18
  !f5
  db 45
  !rest
  db 9,$56
  !f5
  db 18,$46
  !f5
  !f5
  !rest
  db 9,$56
  !c5
  !f5
  db 18,$46
  !fs5
  db 54
  !rest
  db 18
  !fs5
  !fs5
  !pan,6
  !instr,!instr04
  db 9,$78
  !c6
  !gs5
  !c6
  db 9,$77
  !gs6
  !pan,9
  !instr,!instr02
  db 18,$46
  !gs5
  db 54
  !rest
  db 18
  !gs5
  !gs5
  !pan,6
  !instr,!instr04
  db 9,$78
  !c6
  !as5
  !c6
  db 9,$77
  !gs6
  !pan,9
  !instr,!instr02
  db 18,$46
  !f5
  db 54
  !rest
  db 18
  !f5
  !f5
  !pan,6
  !instr,!instr04
  db 9,$78
  !gs5
  !g5
  !gs5
  !ds6
  !pan,9
  !instr,!instr02
  db 18,$46
  !fs5
  db 54
  !rest
  db 18
  !fs5
  !fs5
  !pan,6
  !instr,!instr04
  db 9,$78
  !as5
  !gs5
  !as5
  db 9,$75
  !as6

.pattern6_4
  !instr,!instr14
  !volume,145
  !vibrato,0,20,243
  !loop : dw .sub59BF : db 4

.pattern7_0
  !volume,182
  !pan,12
  !echo,%00011110,48,48
  !dynamicEcho,30,91,91
  db 18,$77
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  db 9,$70
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$74
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  !loop : dw .sub5A63 : db 3
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$70
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$74
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  !dynamicEcho,17,48,48
  db 18,$73
  %percNote(!instr30-!instr30)
  !end

.pattern7_1
  !instr,!instr32
  !volume,201
  !vibrato,0,20,242
  db 90,$79
  !e5
  db 36
  !e5
  db 18
  !e5
  !loop : dw .sub5AB3 : db 2
  !tie
  db 36
  !e5
  db 18,$74
  !e5
  db 36,$79
  !e5
  db 18,$74
  !e5
  !volume,255
  db 18,$76
  !e5
  !tie
  db 36,$79
  !e5
  db 18,$74
  !e5
  db 36,$79
  !e5
  db 18,$74
  !e5
  db 18,$76
  !e5
  !tie
  db 36,$79
  !e5
  db 18,$74
  !e5

.pattern7_2
  !endSlide
  !transpose,0
  !vibrato,0,16,90
  !pan,12
  !instr,!instr19
  !volume,110
  !subtranspose,60
  db 12,$56
  !g6
  !ds6
  !b5
  !g5
  !b5
  !ds6
  !volume,115
  !g6
  !ds6
  !b5
  !ds6
  !b5
  !g6
  !volume,120
  !ds6
  !b5
  !g5
  !b5
  !ds6
  !g6
  !volume,125
  !ds6
  !b5
  !ds6
  !g6
  !ds6
  !g6
  !subtranspose,75
  !volume,130
  !ds6
  !b5
  !g5
  !b5
  !ds6
  !g6
  !subtranspose,90
  !volume,132
  !ds6
  !g5
  !b5
  !ds6
  !g6
  !ds6
  !subtranspose,105
  !volume,137
  !b5
  !g5
  !b5
  !ds6
  !g6
  !ds6
  !subtranspose,120
  !volume,142
  !b5
  !ds6
  !b5
  !ds6
  !g6
  !ds6
  !subtranspose,135
  !volume,147
  !b5
  !g5
  !b5
  !ds6
  !g6
  !ds6
  !subtranspose,150
  !volume,153
  !b5
  !ds6
  !b5
  !g6
  !ds6
  !b5
  !subtranspose,165
  !volume,158
  !g5
  !b5
  !ds6
  !g6
  !ds6
  !b5
  !subtranspose,180
  !volume,163
  !ds6
  !g6
  !ds6
  !g6
  !ds6
  !b5
  !subtranspose,195
  !volume,168
  !g5
  !b5
  !ds6
  !g6
  !ds6
  !b5
  !subtranspose,210
  !volume,174
  !ds6
  !b5
  !g5
  !b5
  !ds6
  !b5
  !subtranspose,225
  !volume,179
  !g6
  !ds6
  !b5
  !g6
  !ds6
  !b5

.pattern7_3
  !vibrato,0,16,90
  !pan,8
  !instr,!instr19
  !volume,110
  !subtranspose,60
  db 12,$54
  !b6
  !g6
  !ds6
  !b5
  !ds6
  !g6
  !b6
  !volume,115
  !g6
  !ds6
  !g6
  !ds6
  !b6
  !volume,120
  !g6
  !ds6
  !b5
  !ds6
  !g6
  !b6
  !volume,125
  !g6
  !ds6
  !g6
  !b6
  !g6
  !b6
  !subtranspose,75
  !volume,130
  !g6
  !ds6
  !b5
  !ds6
  !g6
  !b6
  !subtranspose,90
  !volume,132
  !g6
  !b5
  !ds6
  !g6
  !b6
  !g6
  !subtranspose,105
  !volume,137
  !ds6
  !b5
  !ds6
  !g6
  !b6
  !g6
  !subtranspose,120
  !volume,142
  !ds6
  !g6
  !ds6
  !g6
  !b6
  !g6
  !subtranspose,135
  !volume,147
  !ds6
  !b5
  !ds6
  !g6
  !b6
  !g6
  !subtranspose,150
  !volume,153
  !ds6
  !g6
  !ds6
  !b6
  !g6
  !ds6
  !subtranspose,165
  !volume,158
  !b5
  !ds6
  !g6
  !b6
  !g6
  !ds6
  !subtranspose,180
  !volume,163
  !g6
  !b6
  !g6
  !b6
  !g6
  !ds6
  !subtranspose,195
  !volume,168
  !b5
  !ds6
  !g6
  !b6
  !g6
  !ds6
  !subtranspose,210
  !volume,174
  !g6
  !ds6
  !b5
  !ds6
  !g6
  !ds6
  !subtranspose,225
  !volume,179
  !b6
  !g6
  !ds6
  !b6
  !g6
  !ds6

.pattern7_4
  !volume,118
  !dynamicVolume,255,141
  !pan,13
  !dynamicPan,144,7
  db 18,$78
  !e7
  !e7
  db 9
  !e7
  !c7
  db 18
  !e7
  db 9
  !e7
  !c7
  db 18
  !e7
  !e7
  db 9
  !e7
  !c7
  !dynamicPan,144,13
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !loop : dw .sub5ACA : db 2
  !dynamicVolume,150,155
  !pan,13
  !dynamicPan,144,7
  db 18
  !e7
  !e7
  db 9
  !e7
  !c7
  db 18
  !e7
  db 9
  !e7
  !c7
  db 18
  !e7
  !e7
  db 9
  !e7
  !c7
  !dynamicPan,72,13
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7

.pattern8_0
  !volume,208
  !echo,%00011110,48,48
  !pan,12
  db 18,$76
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  db 18
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  !end

.pattern8_1
  !instr,!instr20
  !endSlide
  !vibrato,0,40,100
  !volume,131
  !pan,0
  db 5,$73
  !as6
  !pan,20
  db 4
  !as6
  !pan,0
  db 5
  !a6
  !pan,20
  db 4
  !a6
  !pan,0
  db 5,$74
  !gs6
  !pan,20
  db 4
  !gs6
  !pan,0
  db 5,$75
  !g6
  !pan,20
  db 4
  !g6
  !pan,0
  db 5,$76
  !fs6
  !pan,20
  db 4
  !fs6
  !pan,0
  db 5,$78
  !f6
  !pan,20
  db 4
  !f6
  !pan,0
  db 5,$79
  !e6
  !pan,20
  db 4
  !e6
  !pan,0
  db 5,$7A
  !ds6
  !pan,20
  db 4
  !ds6

.pattern8_2
  !volume,142
  !instr,!instr15
  !endVibrato
  !subtranspose,0
  !pan,20
  !slideOut,0,72,232
  db 72,$76
  !f4

.pattern8_3
  !volume,142
  !instr,!instr15
  !endVibrato
  !subtranspose,0
  !pan,0
  !slideOut,0,72,232
  db 72,$76
  !g4

.pattern8_4
  !volume,156
  !pan,7
  !dynamicPan,72,13
  db 18,$2B
  !e7
  db 9,$4B
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7

.sub59BF
  !pan,13
  !dynamicPan,144,7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  db 9,$48
  !e7
  !c7
  db 18,$28
  !e7
  !e7
  db 9,$48
  !e7
  !c7
  !dynamicPan,144,13
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !end

.sub59EF
  !fs7
  !d7
  !as6
  !fs6
  !as6
  !d7
  !fs7
  !d7
  !as6
  !fs6
  !as6
  !d7
  !end

.sub59FC
  !as7
  !fs7
  !d7
  !as6
  !d7
  !fs7
  !as7
  !fs7
  !d7
  !as6
  !d7
  !fs7
  !end

.sub5A09
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 27,$7B
  !c4
  !echo,%00011110,48,48
  !pan,12
  db 9,$75
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  !echo,%00011111,48,48
  !pan,7
  !instr,!instr2E
  db 18,$7B
  !c4
  !c4
  !pan,12
  !echo,%00011110,48,48
  db 9,$78
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  !end

.sub5A45
  db 18
  !gs5
  db 54
  !rest
  db 18
  !gs5
  !gs5
  db 36
  !rest
  !end

.sub5A4F
  db 18,$19
  !gs5
  db 45
  !rest
  db 9,$58
  !gs5
  db 18,$19
  !gs5
  !gs5
  !rest
  db 9,$55
  !gs5
  db 9,$59
  !gs5
  !end

.sub5A63
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$73
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$70
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$74
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 18,$73
  %percNote(!instr30-!instr30)
  db 18,$77
  %percNote(!instr30-!instr30)
  db 9,$71
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$78
  %percNote(!instr30-!instr30)
  db 9,$70
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$75
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 18,$78
  %percNote(!instr30-!instr30)
  db 9,$76
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  db 9,$74
  %percNote(!instr30-!instr30)
  db 9,$72
  %percNote(!instr30-!instr30)
  !end

.sub5AB3
  !tie
  db 36
  !e5
  db 18,$74
  !e5
  db 36,$79
  !e5
  db 18,$74
  !e5
  db 18,$76
  !e5
  db 90,$79
  !e5
  db 36
  !e5
  db 18
  !e5
  !end

.sub5ACA
  !pan,13
  !dynamicPan,144,7
  db 18
  !e7
  !e7
  db 9
  !e7
  !c7
  db 18
  !e7
  db 9
  !e7
  !c7
  db 18
  !e7
  !e7
  db 9
  !e7
  !c7
  !dynamicPan,144,13
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !e7
  !c7
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
