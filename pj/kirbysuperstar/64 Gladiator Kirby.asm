asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr03 = $16
!instr04 = $17
!instr19 = $18
!instr22 = $19
!instr23 = $1A
!instr26 = $1B
!instr2B = $1C
!instr30 = $1D
!instr32 = $1E
!instr33 = $1F
!instr34 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FC,$E0,$B8,$03,$80
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr32,$8F,$E0,$B8,$03,$C0
  db !instr33,$FF,$F1,$B8,$04,$00
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+27
  dw Sample04,Sample04+1098
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample26,Sample26+27
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample30,Sample30+2196
  dw Sample32,Sample32+2232
  dw Sample33,Sample33+387
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample_55d7dd5330b8a8ef8525169d9eaa7cd3.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample32: incbin "Sample_1a788f845be3181021d56997b0deeaa8.brr"
  Sample33: incbin "Sample_e42d834c4fd0df619c1d2a53c82c3c1d.brr"
  Sample34: incbin "Sample_deadfac8fb90983ab9614fd75bc82e34.brr"

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
  dw $00C8,-

.pattern0: dw .pattern0_0, 0, 0, .pattern0_3, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echoParameters,5,183,0
  !echo,%00001111,34,34
  !musicVolume,255
  !tempo,51
  !instr,!instr34
  !volume,255
  db 6,$75
  !e3
  db 6,$77
  !e3
  db 6,$78
  !e3
  db 6,$79
  !e3
  db 6,$7A
  !e3
  db 6,$7B
  !e3
  !end

.pattern0_3
  !pan,15
  !dynamicPan,35,6
  !instr,!instr26
  !volume,160
  db 6,$71
  !g6
  db 6,$72
  !b6
  db 6,$73
  !d7
  db 6,$74
  !e7
  db 6,$75
  !f7
  db 6,$76
  !g7

.pattern1_0
  !instr,!instr34
  !volume,220
  db 60,$7E
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !a3
  db 40,$79
  !a3
  db 10,$7A
  !a3
  db 10,$79
  !a3
  !loop : dw .sub59FB : db 1
  db 20,$7A
  !a3
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7C
  !g3
  !g3
  db 13,$7B
  !g3
  db 14,$7A
  !g3
  db 13,$7B
  !g3
  !end

.pattern1_1
  !subtranspose,40
  !pan,11
  !instr,!instr32
  !volume,185
  db 60,$7A
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !a4
  db 40,$73
  !a4
  db 10,$74
  !a4
  db 10,$73
  !a4
  !loop : dw .sub5A31 : db 1
  db 20,$75
  !a4
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !g4
  db 20,$73
  !g4
  db 13,$75
  !g4
  db 14,$74
  !g4
  db 13,$75
  !g4

.pattern1_2
  !subtranspose,40
  !pan,9
  !instr,!instr32
  !volume,170
  db 60,$7A
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !e5
  db 40,$73
  !e5
  db 10,$74
  !e5
  db 10,$73
  !e5
  db 20,$75
  !e5
  db 20,$74
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !f5
  db 20,$73
  !f5
  db 13,$75
  !d5
  db 14,$74
  !d5
  db 13,$75
  !d5
  db 60,$78
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !e5
  db 40,$76
  !e5
  db 10,$74
  !e5
  db 10,$73
  !e5
  db 20,$75
  !e5
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !d5
  db 20,$73
  !d5
  db 13,$75
  !f5
  db 14,$74
  !f5
  db 13,$75
  !f5

.pattern1_3
  !pan,5
  !instr,!instr03
  !volume,170
  db 20,$16
  !a7
  db 40
  !rest
  !instr,!instr19
  !volume,220
  !pan,10
  !subtranspose,60
  db 10,$33
  !cs5
  db 10,$32
  !cs5
  db 20,$15
  !cs5
  db 20,$13
  !cs5
  !rest
  db 10,$34
  !cs5
  db 10,$33
  !cs5
  db 20,$15
  !cs5
  db 20,$14
  !cs5
  db 10,$33
  !cs5
  db 10,$32
  !cs5
  db 10,$33
  !cs5
  db 10,$32
  !cs5
  db 20,$15
  !d5
  db 20,$13
  !d5
  db 13,$33
  !a4
  db 14,$32
  !a4
  db 13,$33
  !a4
  db 20,$18
  !cs5
  db 40
  !rest
  db 10,$33
  !cs5
  db 10,$32
  !cs5
  db 20,$15
  !cs5
  db 20,$16
  !cs5
  !rest
  db 10,$34
  !cs5
  db 10,$33
  !cs5
  db 20,$15
  !cs5
  !cs5
  db 10,$33
  !cs5
  db 10,$32
  !cs5
  db 10,$33
  !cs5
  db 10,$32
  !cs5
  !volume,205
  db 20,$13
  !f5
  db 20,$12
  !f5
  db 13,$36
  !as4
  db 14,$35
  !as4
  db 13,$36
  !as4

.pattern1_4
  !instr,!instr30
  !volume,160
  !pan,15
  !loop : dw .sub5A68 : db 1
  !loop : dw .sub5AB4 : db 1

.pattern2_0
  !echo,%00001111,34,34
  !volume,220
  !loop : dw .sub5AFE : db 1
  !loop : dw .sub59FB : db 1
  db 20,$7A
  !a3
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7B
  !g3
  db 20,$7A
  !g3
  db 10,$7B
  !g3
  db 10,$79
  !g3
  db 10,$7B
  !g3
  db 10,$79
  !g3
  !end

.pattern2_1
  !subtranspose,40
  !pan,11
  !instr,!instr32
  !volume,185
  !loop : dw .sub5B80 : db 1
  !loop : dw .sub5A31 : db 1
  db 20,$75
  !a4
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !g4
  db 20,$73
  !g4
  db 10,$75
  !g4
  db 10,$74
  !g4
  db 10,$75
  !g4
  db 10,$74
  !g4

.pattern2_2
  !subtranspose,40
  !pan,9
  !instr,!instr32
  !volume,170
  !loop : dw .sub5C03 : db 1
  db 20,$75
  !e5
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !d5
  db 20,$73
  !d5
  db 10,$75
  !f5
  db 10,$74
  !f5
  db 10,$75
  !f5
  db 10,$74
  !f5
  !loop : dw .sub5C03 : db 1
  db 20,$75
  !e5
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !as4
  db 20,$73
  !as4
  db 10,$75
  !d5
  db 10,$74
  !d5
  db 10,$75
  !d5
  db 10,$74
  !d5

.pattern2_3
  !pan,10
  !subtranspose,0
  !vibrato,20,12,30
  !dynamicVibrato,20
  !instr,!instr04
  !volume,70
  !dynamicVolume,40,170
  db 70,$66
  !e5
  db 10
  !a5
  db 80,$76
  !a5
  db 80,$68
  !tie
  !slideIn,0,12,1
  db 27,$56
  !g5
  !endSlide
  !a5
  db 26
  !as5
  db 25,$66
  !d6
  db 35
  !cs6
  db 10
  !cs6
  !d6
  !volume,110
  !dynamicVolume,179,180
  db 80,$76
  !e6
  db 100
  !tie
  db 21
  !rest
  !volume,150
  db 13
  !d6
  !e6
  !f6
  !volume,130
  !dynamicVolume,100,180
  db 100,$64
  !a6
  db 7,$66
  !g6
  !f6
  !dynamicVolume,46,130
  db 46,$76
  !e6
  !dynamicVolume,20,170
  db 20
  !tie
  db 7
  !f6
  db 6,$75
  !e6
  db 7,$73
  !d6
  !dynamicVolume,78,180
  db 79,$66
  !e6
  !volume,170
  !slideIn,0,6,1
  db 13,$76
  !d6
  !endSlide
  db 14
  !as5
  db 14,$75
  !f5
  !volume,120
  !dynamicVolume,60,170
  db 60,$66
  !g5
  db 7,$78
  !a5
  db 6
  !g5
  db 7
  !f5
  db 80,$76
  !e5
  !dynamicVolume,119,120
  db 120
  !tie
  !volume,200
  !instr,!instr19
  !subtranspose,60
  db 8,$7A
  !d5
  db 8,$79
  !f5
  db 8,$78
  !g5
  !as5
  db 8,$77
  !d6

.pattern2_4
  !subtranspose,0
  !instr,!instr30
  !volume,160
  !pan,15
  !loop : dw .sub5A68 : db 1
  !loop : dw .sub5AB4 : db 3

.pattern3_0
  !loop : dw .sub5AFE : db 1
  !loop : dw .sub59FB : db 1
  db 20,$7A
  !a3
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7B
  !g3
  db 20,$7A
  !g3
  db 10,$7B
  !g3
  db 10,$79
  !g3
  db 10,$7B
  !g3
  db 10,$79
  !g3
  !end

.pattern3_1
  !loop : dw .sub5B80 : db 1
  !loop : dw .sub5A31 : db 1
  db 20,$75
  !a4
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !a4
  db 20,$73
  !a4
  db 10,$75
  !a4
  db 10,$74
  !a4
  db 10,$75
  !a4
  db 10,$74
  !a4

.pattern3_2
  !loop : dw .sub5C03 : db 1
  db 20,$75
  !e5
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !as4
  db 20,$73
  !as4
  db 10,$75
  !d5
  db 10,$74
  !d5
  db 10,$75
  !d5
  db 10,$74
  !d5
  !loop : dw .sub5C03 : db 1
  db 20,$75
  !e5
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !e5
  db 20,$73
  !e5
  db 10,$75
  !e5
  db 10,$74
  !e5
  db 10,$75
  !e5
  db 10,$74
  !e5

.pattern3_3
  !pan,10
  !instr,!instr19
  !volume,200
  !subtranspose,60
  !slideIn,0,6,1
  db 20,$78
  !e6
  !endSlide
  db 40
  !rest
  db 7
  !f6
  db 6
  !e6
  db 7
  !d6
  db 20,$76
  !e6
  !rest
  !pan,7
  !instr,!instr23
  !subtranspose,0
  !volume,110
  db 30,$56
  !cs7
  db 10,$54
  !d7
  db 30,$56
  !e7
  db 10,$55
  !cs7
  db 40,$53
  !a6
  !pan,10
  !subtranspose,60
  !instr,!instr19
  !volume,200
  !slideIn,0,9,1
  db 26,$76
  !d6
  !endSlide
  db 27
  !f6
  !slideIn,0,7,1
  !a6
  !endSlide
  !slideIn,0,20,1
  db 60
  !g6
  !endSlide
  db 7,$78
  !a6
  db 6
  !g6
  db 7
  !f6
  db 20,$76
  !e6
  !rest
  !subtranspose,0
  !instr,!instr22
  !pan,13
  !volume,130
  db 30,$55
  !cs7
  db 10,$53
  !d7
  !slideIn,0,8,1
  db 30,$56
  !e7
  !endSlide
  db 10,$74
  !a7
  db 40,$53
  !g7
  !pan,10
  !subtranspose,60
  !instr,!instr19
  !volume,200
  db 26,$76
  !as5
  db 27
  !d6
  !f6
  db 20
  !d6
  db 40
  !rest
  db 10
  !cs6
  !d6
  db 20,$36
  !e6
  !rest
  !pan,7
  !subtranspose,0
  !instr,!instr23
  !volume,115
  db 10,$38
  !e7
  !pan,13
  db 10,$35
  !a7
  !pan,20
  !e7
  !pan,2
  !a7
  !pan,12
  db 20,$16
  !e7
  !pan,6
  db 10,$45
  !e7
  !pan,0
  db 10,$44
  !a7
  !pan,11
  db 20,$56
  !e7
  !rest
  !pan,10
  !subtranspose,60
  !instr,!instr19
  !volume,200
  db 26,$76
  !d6
  db 27
  !as5
  !d6
  !slideIn,12,18,2
  db 60
  !cs6
  !endSlide
  db 10
  !b5
  !a5
  db 40
  !g5
  !subtranspose,0
  !pan,7
  !dynamicPan,40,13
  !instr,!instr22
  !volume,125
  db 7,$72
  !e7
  db 6
  !f7
  db 7,$73
  !e7
  !f7
  db 6,$74
  !e7
  db 7
  !f7
  db 7,$75
  !e7
  db 6
  !f7
  db 7,$76
  !e7
  !f7
  db 6
  !e7
  db 7
  !d7
  db 40
  !e7
  !subtranspose,60
  !pan,10
  !instr,!instr19
  !volume,200
  db 26
  !cs6
  db 27
  !e6
  !a6

.pattern3_4
  !loop : dw .sub5A68 : db 1
  !loop : dw .sub5AB4 : db 3

.pattern4_0
  !echo,%00011111,34,34
  !volume,240
  db 60,$7C
  !d4
  db 10,$7A
  !d4
  db 10,$78
  !d4
  db 20,$79
  !d4
  db 40,$78
  !d4
  db 10,$7C
  !d4
  db 10,$79
  !d4
  db 20,$7B
  !g3
  db 20,$7A
  !g3
  db 10
  !g3
  db 10,$78
  !g3
  db 10,$79
  !g3
  db 10,$78
  !g3
  db 20,$79
  !g4
  db 20,$78
  !g4
  db 10,$7B
  !g3
  db 10,$7A
  !g3
  db 10,$7B
  !g3
  db 10,$7A
  !g3
  db 60,$7C
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !a3
  db 40,$79
  !a3
  db 10,$7A
  !a3
  db 10,$79
  !a3
  db 20,$7A
  !a3
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !a3
  db 20,$79
  !a3
  db 10,$7B
  !g3
  db 10,$79
  !g3
  db 10,$7B
  !g3
  db 10,$79
  !g3
  db 60,$7C
  !fs3
  db 10,$7A
  !fs3
  db 10,$77
  !fs3
  db 20,$79
  !fs4
  db 40,$78
  !fs4
  db 10,$7A
  !fs3
  db 10,$79
  !fs3
  db 20,$7B
  !g3
  db 20,$7A
  !g3
  db 10
  !g3
  db 10,$78
  !g3
  db 10,$79
  !g3
  db 10,$78
  !g3
  db 20,$7A
  !g4
  db 20,$79
  !g4
  db 10,$7B
  !g3
  db 10,$7A
  !g3
  db 10,$7B
  !g3
  db 10,$7A
  !g3
  db 60,$7C
  !fs3
  db 10,$79
  !fs3
  db 10,$77
  !fs3
  db 20,$7A
  !g3
  db 20,$79
  !g3
  db 10,$7A
  !g3
  db 10,$79
  !g3
  db 10,$7A
  !g3
  db 10,$79
  !g3
  db 20,$7A
  !a3
  db 40
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !d4
  db 20,$79
  !d4
  db 10,$7B
  !d4
  db 10,$79
  !d4
  db 10,$7B
  !d4
  db 10,$79
  !d4
  !end

.pattern4_1
  !pan,11
  !instr,!instr19
  !volume,140
  !subtranspose,60
  db 60,$76
  !fs6
  db 10
  !fs6
  !g6
  db 40
  !a6
  !fs6
  !slideIn,0,25,2
  db 70
  !d6
  !endSlide
  db 10
  !d6
  db 40
  !as5
  !volume,170
  !subtranspose,30
  db 30
  !e6
  db 10
  !d6
  !volume,140
  !a5
  !b5
  !tremolo,130,8,50
  db 120
  !cs6
  db 20
  !tie
  db 80
  !tie
  !tie
  !endTremolo
  db 60
  !fs6
  db 10
  !fs6
  !g6
  db 40
  !a6
  !fs6
  db 20,$16
  !d6
  db 40,$46
  !d6
  db 10,$76
  !d6
  !f6
  db 40
  !as5
  !subtranspose,30
  !volume,150
  !pan,0
  db 13
  !f6
  db 14
  !e6
  db 13
  !d6
  !pan,12
  !instr,!instr04
  !volume,155
  !subtranspose,0
  db 40
  !fs4
  !a4
  !d5
  !b4
  !a4
  !c5
  !c5
  db 40,$77
  !fs4

.pattern4_2
  !subtranspose,40
  !endVibrato
  !instr,!instr32
  !volume,180
  !pan,10
  db 60,$7A
  !a4
  db 10
  !a4
  db 10,$77
  !a4
  db 20,$79
  !a4
  db 40,$78
  !a4
  db 10,$7A
  !a4
  db 10,$79
  !a4
  db 20,$7A
  !d5
  db 20,$79
  !d5
  db 10
  !d5
  db 10,$77
  !d5
  db 10,$78
  !d5
  db 10,$76
  !d5
  db 20,$7A
  !d5
  db 20,$79
  !d5
  db 13,$7A
  !d5
  db 14,$79
  !d5
  db 13,$7A
  !d5
  !instr,!instr33
  !volume,160
  !pan,5
  db 10,$76
  !cs5
  !pan,15
  !a4
  !pan,5
  !cs5
  !pan,15
  !e5
  !pan,5
  !g5
  !pan,15
  !cs5
  !pan,5
  !e5
  !pan,15
  !g5
  !pan,5
  !a5
  !pan,15
  !e5
  !pan,5
  !g5
  !pan,15
  !a5
  !pan,5
  !cs6
  !pan,15
  !g5
  !pan,5
  !a5
  !pan,15
  !cs6
  !pan,5
  !e6
  !pan,15
  !a5
  !pan,5
  !cs6
  !pan,15
  !e6
  !pan,19
  !pan,5
  !g6
  !pan,15
  !cs6
  !pan,5
  !e6
  !pan,15
  !g6
  !pan,5
  db 10,$75
  !a6
  !pan,15
  db 10,$76
  !cs6
  !pan,5
  !e6
  !pan,15
  db 10,$75
  !a6
  !pan,5
  db 10,$73
  !e7
  !pan,15
  db 10,$76
  !e6
  !pan,5
  db 10,$75
  !a6
  !pan,15
  db 10,$74
  !cs7
  !subtranspose,40
  !endVibrato
  !instr,!instr32
  !volume,180
  !pan,10
  db 60,$7A
  !cs5
  db 10
  !cs5
  db 10,$77
  !cs5
  db 20,$79
  !cs5
  db 40,$78
  !cs5
  db 10,$7A
  !cs5
  db 10,$79
  !cs5
  db 20,$7A
  !d5
  db 20,$79
  !d5
  db 10
  !d5
  db 10,$77
  !d5
  db 10,$78
  !d5
  db 10,$76
  !d5
  db 20,$7A
  !d5
  db 20,$79
  !d5
  db 13,$7A
  !d5
  db 14,$79
  !d5
  db 13,$7A
  !d5
  !pan,8
  !instr,!instr04
  !volume,155
  !subtranspose,0
  db 40,$76
  !a4
  !cs5
  !b4
  !g4
  !c5
  !e5
  !fs5
  db 40,$77
  !c5

.pattern4_3
  !volume,180
  db 60,$76
  !b6
  db 10
  !a6
  !b6
  db 40
  !cs7
  !a6
  !slideIn,0,25,2
  db 70
  !g6
  !endSlide
  db 10
  !a6
  db 40
  !f6
  db 30
  !e6
  db 10
  !d6
  !cs6
  !d6
  !tremolo,130,8,50
  db 120
  !e6
  db 20
  !tie
  db 80
  !tie
  !tie
  !endTremolo
  db 60
  !b6
  db 10
  !a6
  !b6
  db 30
  !cs7
  db 10,$75
  !e7
  db 40,$78
  !b6
  db 20,$16
  !g6
  db 40,$46
  !g6
  db 10,$76
  !g6
  !a6
  db 30
  !f6
  db 10
  !f6
  !pan,20
  !volume,150
  db 13
  !f6
  db 14
  !e6
  db 13
  !d6
  !volume,190
  !pan,10
  db 10,$78
  !cs6
  !d6
  db 40,$76
  !e6
  db 10,$78
  !d6
  !e6
  db 40,$76
  !fs6
  db 30
  !e6
  db 10,$78
  !fs6
  db 40,$76
  !g6
  db 13
  !g6
  db 14
  !fs6
  db 13
  !g6
  db 40
  !a6
  db 30,$78
  !d6
  !subtranspose,0
  !pan,10
  !instr,!instr23
  !volume,170
  db 10,$79
  !e6

.pattern4_4
  !instr,!instr19
  !subtranspose,60
  !volume,255
  !pan,10
  !loop : dw .sub5C4F : db 1
  db 40,$78
  !a2
  !e3
  db 40,$76
  !cs4
  db 40,$78
  !b3
  !a3
  !e3
  !g3
  !a3
  !loop : dw .sub5C4F : db 1
  db 40,$78
  !fs3
  !cs4
  !d4
  !g3
  !a3
  !e4
  !d4
  db 40,$79
  !d3

.pattern5_0
  !echo,%00011111,34,34
  !volume,220
  db 60,$7A
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$79
  !a4
  db 40,$77
  !a4
  db 10,$7A
  !a3
  db 10,$79
  !a3
  db 60,$7A
  !as3
  db 10,$79
  !as3
  db 10,$77
  !as3
  db 20,$79
  !as4
  db 20,$77
  !as4
  db 10,$7A
  !as3
  db 10,$79
  !as3
  db 10,$7A
  !as3
  db 10,$79
  !as3
  !loop : dw .sub5C68 : db 2
  db 60,$7A
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$79
  !a4
  db 40,$77
  !a4
  db 10,$7A
  !a3
  db 10,$79
  !a3
  db 20,$7B
  !g3
  db 20,$7A
  !g3
  db 10
  !g3
  db 10,$78
  !g3
  db 10,$79
  !g3
  db 10,$78
  !g3
  db 20,$7A
  !g4
  db 20,$79
  !g4
  db 10,$7B
  !g3
  db 10,$7A
  !g3
  db 10,$7B
  !g3
  db 10,$7A
  !g3
  db 60
  !as3
  db 10,$79
  !as3
  db 10,$77
  !as3
  db 20,$79
  !as4
  db 20,$77
  !as4
  db 10,$7A
  !as3
  db 10,$79
  !as3
  db 10,$7A
  !as3
  db 10,$79
  !as3
  db 20,$7A
  !a3
  db 40
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$79
  !a4
  db 20,$77
  !a4
  db 10,$7A
  !a3
  !a3
  !a3
  db 10,$79
  !a3
  db 20,$7D
  !d3
  db 40
  !d3
  db 10
  !d3
  !d3
  db 20,$7A
  !d4
  !d4
  db 10,$7D
  !d3
  db 10,$7B
  !d3
  db 10,$7D
  !d3
  db 10,$7B
  !d3
  db 20,$7D
  !d3
  db 40
  !d3
  db 10
  !d3
  !d3
  db 20
  !d4
  !d4
  !echo,%00010111,34,34
  db 10,$7A
  !e4
  !e4
  db 20,$7D
  !e3
  !end

.pattern5_1
  !instr,!instr19
  !endVibrato
  !volume,200
  db 20,$1C
  !cs4
  db 40,$64
  !a4
  db 20,$16
  !a4
  db 20,$1C
  !cs4
  db 20,$16
  !a4
  db 20,$1C
  !cs4
  db 20,$16
  !a4
  db 20,$1C
  !d4
  db 40,$64
  !as4
  db 20,$16
  !as4
  db 20,$1C
  !d4
  db 20,$16
  !as4
  db 20,$1C
  !d4
  db 20,$16
  !as4
  !loop : dw .sub5C84 : db 3
  db 20,$1C
  !d4
  db 40,$64
  !as4
  db 20,$16
  !as4
  db 20,$1C
  !d4
  db 20,$16
  !as4
  db 20,$1C
  !d4
  db 20,$16
  !as4
  db 20,$1C
  !as3
  db 40,$64
  !as4
  db 20,$16
  !as4
  db 20,$1C
  !d4
  db 20,$16
  !as4
  db 20,$1C
  !as3
  db 20,$16
  !as4
  db 20,$1C
  !a3
  db 40,$64
  !g4
  db 20,$16
  !g4
  db 20,$1C
  !a3
  db 20,$16
  !a4
  db 20,$1C
  !a3
  db 20,$16
  !g4
  db 20,$1C
  !a3
  db 40,$64
  !fs4
  db 20,$16
  !fs4
  db 20,$1C
  !a3
  db 20,$16
  !fs4
  db 20,$1C
  !a3
  db 20,$16
  !fs4
  db 20,$1C
  !a3
  db 40,$64
  !fs4
  db 20,$16
  !fs4
  db 20,$1C
  !a3
  db 20,$16
  !g4
  db 10,$78
  !gs4
  !gs4
  db 20,$18
  !gs4

.pattern5_2
  !instr,!instr19
  !endVibrato
  !volume,200
  db 20,$1C
  !e4
  db 40,$64
  !cs5
  db 20,$16
  !cs5
  db 20,$1C
  !e4
  db 20,$16
  !cs5
  db 20,$1C
  !e4
  db 20,$16
  !cs5
  db 20,$1C
  !f4
  db 40,$64
  !d5
  db 20,$16
  !d5
  db 20,$1C
  !f4
  db 20,$16
  !d5
  db 20,$1C
  !f4
  db 20,$16
  !d5
  !loop : dw .sub5C9A : db 3
  db 20,$1C
  !f4
  db 40,$64
  !d5
  db 20,$16
  !d5
  db 20,$1C
  !g4
  db 20,$16
  !d5
  db 20,$1C
  !f4
  db 20,$16
  !d5
  db 20,$1C
  !f4
  db 40,$64
  !d5
  db 20,$16
  !d5
  db 20,$1C
  !f4
  db 20,$16
  !d5
  db 20,$1C
  !f4
  db 20,$16
  !d5
  db 20,$1C
  !e4
  db 40,$64
  !c5
  db 20,$16
  !c5
  db 20,$1C
  !e4
  db 20,$16
  !c5
  db 20,$1C
  !e4
  db 20,$16
  !c5
  db 20,$1C
  !d4
  db 40,$64
  !d5
  db 20,$16
  !d5
  db 20,$1C
  !d4
  db 20,$16
  !d5
  db 20,$1C
  !d4
  db 20,$16
  !d5
  db 20,$1C
  !d4
  db 40,$64
  !d5
  db 20,$16
  !d5
  db 20,$1C
  !d4
  db 20,$16
  !d5
  db 10,$77
  !b4
  !b4
  db 20,$17
  !b4

.pattern5_3
  db 10,$76
  !a6
  !dynamicVolume,10,100
  !tie
  !dynamicVolume,139,160
  db 70
  !tie
  !tie
  !dynamicVolume,100,120
  db 100
  !g6
  !volume,160
  db 20,$73
  !f6
  db 20,$74
  !e6
  db 20,$76
  !f6
  !tremolo,120,9,60
  db 17
  !e6
  !pitchSlide,8,1 : !f6
  db 7
  !tie
  !pitchSlide,0,1 : !e6
  !tie
  !pitchSlide,0,1 : !d6
  db 65
  !tie
  !pitchSlide,0,1 : !e6
  db 64
  !tie
  db 80
  !tie
  db 70,$48
  !tie
  !endTremolo
  db 10,$76
  !e6
  !a6
  !dynamicVolume,10,110
  !tie
  !dynamicVolume,90,160
  db 112
  !tie
  db 14
  !g6
  !a6
  !volume,120
  !dynamicVolume,80,160
  db 80,$78
  !as6
  db 20
  !rest
  db 20,$76
  !as6
  !c7
  !as6
  db 16
  !a6
  !pitchSlide,7,1 : !as6
  db 7
  !tie
  !pitchSlide,0,1 : !a6
  !tie
  !pitchSlide,0,1 : !g6
  db 74
  !tie
  !pitchSlide,0,1 : !a6
  db 28,$55
  !g6
  db 28,$54
  !f6
  db 120,$76
  !e6
  db 40
  !c6
  db 26
  !d6
  !pitchSlide,18,1 : !e6
  db 8
  !tie
  !pitchSlide,0,1 : !d6
  !tie
  !pitchSlide,0,1 : !c6
  db 64
  !tie
  !pitchSlide,0,1 : !d6
  !dynamicVolume,170,100
  db 54
  !tie
  db 120
  !tie
  !instr,!instr2B
  !volume,255
  !pan,10
  db 10,$46
  !e3
  !e3
  db 20
  !e3

.pattern5_4
  !instr,!instr19
  !subtranspose,60
  !pan,10
  !volume,255
  db 40,$77
  !a2
  db 40,$76
  !e3
  db 40,$73
  !cs4
  db 40,$75
  !a3
  db 40,$76
  !as2
  !f3
  db 40,$75
  !as3
  db 40,$76
  !as2
  db 40,$77
  !a2
  db 40,$76
  !e3
  db 40,$73
  !cs4
  db 40,$76
  !e3
  db 40,$77
  !a2
  db 40,$76
  !e3
  db 40,$75
  !a3
  db 40,$76
  !cs3
  db 40,$77
  !a2
  db 40,$76
  !e3
  db 40,$73
  !cs4
  db 40,$75
  !a3
  db 40,$78
  !g2
  db 40,$76
  !d3
  !g3
  !d3
  db 40,$77
  !as2
  db 40,$76
  !f3
  !d4
  db 40,$75
  !as3
  db 40,$77
  !a2
  db 40,$76
  !e3
  db 40,$74
  !b3
  db 40,$73
  !c4
  db 40,$7B
  !d2
  db 40,$77
  !a2
  db 40,$76
  !fs3
  !d3
  db 40,$77
  !a2
  db 40,$76
  !d3
  !a3
  !subtranspose,40
  !instr,!instr32
  !volume,160
  db 10
  !e5
  !e5
  db 20
  !e5

.sub59FB
  db 20,$7A
  !a3
  db 20,$79
  !a3
  db 10
  !a3
  db 10,$77
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !as3
  db 20,$79
  !as3
  db 13,$7A
  !as3
  db 14,$79
  !as3
  db 13,$7A
  !as3
  db 60,$7C
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !a3
  db 40,$79
  !a3
  db 10,$7A
  !a3
  db 10,$79
  !a3
  !end

.sub5A31
  db 20,$75
  !a4
  db 20,$74
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !as4
  db 20,$73
  !as4
  db 13,$75
  !as4
  db 14,$74
  !as4
  db 13,$75
  !as4
  db 60,$78
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !a4
  db 40,$73
  !a4
  db 10,$74
  !a4
  db 10,$73
  !a4
  !end

.sub5A68
  db 20,$78
  !a4
  db 20,$76
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$75
  !a4
  db 10,$73
  !a4
  db 20,$78
  !a4
  db 10,$76
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$78
  !a4
  db 20,$76
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$75
  !a4
  db 10,$73
  !a4
  db 20,$78
  !a4
  db 10,$76
  !a4
  db 10,$72
  !a4
  db 20,$78
  !a4
  !end

.sub5AB4
  !a4
  db 20,$76
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$75
  !a4
  db 10,$73
  !a4
  db 20,$78
  !a4
  db 10,$76
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$78
  !a4
  db 20,$76
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$75
  !a4
  db 10,$73
  !a4
  db 20,$78
  !a4
  db 10,$76
  !a4
  db 10,$72
  !a4
  db 20,$78
  !a4
  !end

.sub5AFE
  db 60,$7C
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !a3
  db 40,$79
  !a3
  db 10,$7A
  !a3
  db 10,$79
  !a3
  db 20,$7A
  !a3
  db 20,$79
  !a3
  db 10
  !a3
  db 10,$77
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !as3
  db 20,$79
  !as3
  db 13,$7A
  !as3
  db 14,$79
  !as3
  db 13,$7A
  !as3
  db 60,$7C
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !a3
  db 40,$79
  !a3
  db 10,$7A
  !a3
  db 10,$79
  !a3
  db 20,$7A
  !a3
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7B
  !g3
  db 20,$7A
  !g3
  db 10,$7B
  !g3
  db 10,$79
  !g3
  db 10,$7B
  !g3
  db 10,$79
  !g3
  db 60,$7C
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !a3
  db 40,$79
  !a3
  db 10,$7A
  !a3
  db 10,$79
  !a3
  !end

.sub5B80
  db 60,$78
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !a4
  db 40,$73
  !a4
  db 10,$74
  !a4
  db 10,$73
  !a4
  db 20,$75
  !a4
  db 20,$74
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !as4
  db 20,$73
  !as4
  db 13,$75
  !as4
  db 14,$74
  !as4
  db 13,$75
  !as4
  db 60,$78
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !a4
  db 40,$73
  !a4
  db 10,$74
  !a4
  db 10,$73
  !a4
  db 20,$75
  !a4
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !g4
  db 20,$73
  !g4
  db 10,$75
  !g4
  db 10,$74
  !g4
  db 10,$75
  !g4
  db 10,$74
  !g4
  db 60,$78
  !a4
  db 10,$73
  !a4
  db 10,$72
  !a4
  db 20,$75
  !a4
  db 40,$73
  !a4
  db 10,$74
  !a4
  db 10,$73
  !a4
  !end

.sub5C03
  db 60,$78
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !e5
  db 40,$73
  !e5
  db 10,$74
  !e5
  db 10,$73
  !e5
  db 20,$75
  !e5
  db 20,$74
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !d5
  db 20,$73
  !d5
  db 13,$75
  !f5
  db 14,$74
  !f5
  db 13,$75
  !f5
  db 60,$78
  !e5
  db 10,$73
  !e5
  db 10,$72
  !e5
  db 20,$75
  !e5
  db 40,$76
  !e5
  db 10,$74
  !e5
  db 10,$73
  !e5
  !end

.sub5C4F
  db 40,$76
  !d3
  db 40,$75
  !a3
  db 40,$72
  !fs4
  db 40,$73
  !d4
  db 40,$78
  !g2
  db 40,$75
  !as3
  db 40,$73
  !d4
  db 40,$76
  !g3
  !end

.sub5C68
  db 60,$7C
  !a3
  db 10,$79
  !a3
  db 10,$77
  !a3
  db 20,$7A
  !e4
  db 20,$79
  !e4
  db 10,$7C
  !e3
  db 10,$7B
  !e3
  db 10,$7C
  !e3
  db 10,$7B
  !e3
  !end

.sub5C84
  db 20,$1C
  !cs4
  db 40,$64
  !a4
  db 20,$16
  !a4
  db 20,$1C
  !cs4
  db 20,$16
  !a4
  db 20,$1C
  !cs4
  db 20,$16
  !a4
  !end

.sub5C9A
  db 20,$1C
  !e4
  db 40,$64
  !cs5
  db 20,$16
  !cs5
  db 20,$1C
  !e4
  db 20,$16
  !cs5
  db 20,$1C
  !e4
  db 20,$16
  !cs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
