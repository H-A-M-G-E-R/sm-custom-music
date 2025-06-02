asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr1B = $17
!instr1C = $18
!instr1D = $19
!instr26 = $1A
!instr2C = $1B
!instr2D = $1C
!instr2E = $1D
!instr2F = $1E
!instr30 = $1F
!instr34 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr1C,$AF,$A1,$B8,$03,$C0
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr26,$FF,$E0,$B8,$02,$00
  db !instr2C,$FF,$E0,$B8,$03,$C0
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+1098
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample26,Sample26+27
  dw Sample2C,Sample2C+1476
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample2F,Sample2F+1080
  dw Sample30,Sample30+2196
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample26: incbin "Sample_dd96e3e590d00a0f1207b4507dbe0624.brr"
  Sample2C: incbin "Sample_be6aac6f8acf53f4a48ff5c6c31f4b97.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2C
  !musicVolume,255
  !tempo,51
  !echoParameters,4,50,0
  !echo,%00011100,30,30
  !loop : dw .sub5101 : db 4
  !echo,%00011110,30,30
  !loop : dw .sub5101 : db 2
  !pan,10
  db 18,$78
  %percNote(!instr2C-!instr2C)
  !echo,%00011100,30,30
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2E-!instr2C)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2E-!instr2C)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$78
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2E-!instr2C)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,12
  !instr,!instr2E
  db 9,$75
  !d5
  db 18,$76
  !d5
  db 9,$74
  !d5
  !pan,8
  db 9,$76
  !a4
  !a4
  !pan,11
  !f4
  !f4
  !pan,10
  db 72,$78
  !d4
  !end

.pattern0_1
  !loop : dw .sub5136 : db 4
  !subtranspose,60
  !instr,!instr1C
  !volume,190
  !pan,10
  db 12
  !as5
  !dynamicVolume,10,90
  db 10
  !tie
  !dynamicVolume,120,220
  db 122
  !tie
  !instr,!instr1B
  db 12
  !gs5
  !dynamicVolume,10,90
  db 10
  !tie
  !dynamicVolume,104,220
  db 104,$68
  !tie
  !volume,190
  !subtranspose,55
  !instr,!instr1C
  db 6,$76
  !as5
  !c6
  !as5
  db 9,$36
  !a5
  db 27
  !rest
  !pan,0
  !volume,120
  !instr,!instr30
  db 9,$76
  !g5
  db 9,$75
  !g5
  db 9,$72
  !g5
  db 9,$76
  !g5
  !pan,12
  !instr,!instr2F
  !volume,200
  db 27
  !c7
  db 9,$75
  !c7
  !pan,8
  db 18,$76
  !c6
  db 18,$75
  !c6
  !pan,8
  !volume,150
  !dynamicVolume,36,80
  !slideOut,3,33,248
  !instr,!instr26
  db 36,$76
  !f6
  !endSlide
  !pan,0
  !volume,120
  !instr,!instr30
  db 9
  !g5
  db 9,$75
  !g5
  !pan,12
  !instr,!instr2F
  !volume,200
  db 6,$76
  !c7
  !c7
  !c7
  db 9
  !c7
  db 18
  !c7
  db 9,$75
  !c7
  !pan,8
  db 9,$76
  !c6
  db 9,$75
  !c6
  db 9,$76
  !c6
  db 9,$75
  !c6
  !instr,!instr1C
  !volume,180
  db 9,$38
  !g5
  db 63
  !rest

.pattern0_2
  !volume,220
  !instr,!instr34
  db 18,$76
  !f3
  !instr,!instr1D
  !volume,190
  !subtranspose,60
  db 18,$06
  !c7
  !a6
  !g6
  !g6
  !a6
  db 6,$76
  !g6
  !a6
  !g6
  db 18,$06
  !f6
  db 18,$56
  !d6
  db 18,$06
  !f6
  !c6
  db 90
  !rest
  db 9,$24
  !c7
  db 20
  !rest
  db 7,$38
  !c7
  db 18,$06
  !a6
  !g6
  !g6
  !a6
  db 6,$76
  !g6
  !a6
  !g6
  db 18,$06
  !f6
  !slideIn,0,3,1
  db 9,$56
  !d6
  !endSlide
  db 18,$04
  !f6
  db 18,$07
  !c6
  db 9,$45
  !d6
  db 18,$06
  !c6
  db 63
  !rest
  db 9,$56
  !c6
  !instr,!instr1C
  db 12,$76
  !ds6
  !dynamicVolume,10,90
  db 10
  !tie
  !dynamicVolume,120,220
  db 122
  !tie
  !instr,!instr1B
  db 12
  !d6
  !dynamicVolume,10,90
  db 10
  !tie
  !dynamicVolume,104,220
  db 104,$68
  !tie
  !volume,190
  !instr,!instr1C
  db 6,$7A
  !d6
  db 6,$79
  !ds6
  !d6
  db 9,$39
  !c6
  db 63
  !rest
  db 72
  !rest
  !rest
  db 54
  !rest
  db 6,$78
  !c6
  !d6
  !e6
  db 9,$38
  !f6
  db 63
  !rest

.pattern0_3
  !instr,!instr04
  !volume,185
  !pan,12
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 9,$49
  !f3
  db 9,$42
  !f4
  db 9,$43
  !f4
  db 9,$42
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  !loop : dw .sub516C : db 1
  !loop : dw .sub51A3 : db 2
  !loop : dw .sub516C : db 1
  db 18,$09
  !ds4
  db 54
  !rest

.pattern0_4
  !instr,!instr04
  !volume,185
  !pan,8
  db 18,$06
  !c4
  !c5
  !c4
  !c5
  !c4
  !c5
  !c4
  !c5
  !c4
  !c5
  !c4
  !c5
  db 9,$46
  !c4
  db 9,$42
  !c5
  db 9,$43
  !c5
  db 9,$42
  !c5
  db 18,$06
  !c4
  !c5
  !loop : dw .sub51AC : db 1
  !as3
  !as4
  !ds4
  !as4
  !as3
  !as4
  !ds4
  !as4
  !as3
  !gs4
  !d4
  !gs4
  !as3
  !gs4
  !d4
  !gs4
  !loop : dw .sub51AC : db 1
  db 18,$08
  !as4
  db 54
  !rest

.pattern1_0
  db 72
  !rest
  !rest
  !loop : dw .sub51C9 : db 12
  !end

.sub5101
  !pan,10
  db 18,$78
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2E-!instr2C)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$77
  %percNote(!instr2C-!instr2C)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$70
  %percNote(!instr2D-!instr2C)
  !pan,10
  db 18,$76
  %percNote(!instr2E-!instr2C)
  !pan,12
  db 9,$72
  %percNote(!instr2D-!instr2C)
  db 9,$71
  %percNote(!instr2D-!instr2C)
  !end

.sub5136
  !pan,8
  !volume,150
  !dynamicVolume,36,80
  !slideOut,3,33,248
  !instr,!instr26
  db 36,$76
  !f6
  !endSlide
  !pan,0
  !volume,120
  !instr,!instr30
  db 9
  !g5
  db 9,$75
  !g5
  db 9,$72
  !g5
  db 9,$76
  !g5
  !pan,12
  !instr,!instr2F
  !volume,200
  db 27
  !c7
  db 9,$75
  !c7
  !pan,8
  db 18,$76
  !c6
  db 18,$75
  !c6
  !end

.sub516C
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  db 9,$49
  !f3
  db 9,$42
  !f4
  db 9,$43
  !f4
  db 9,$42
  !f4
  db 18,$09
  !f3
  db 18,$06
  !f4
  !end

.sub51A3
  !f3
  !f4
  !as3
  !f4
  !f3
  !f4
  !as3
  !f4
  !end

.sub51AC
  !c4
  !c5
  !c4
  !c5
  !c4
  !c5
  !c4
  !c5
  !c4
  !c5
  !c4
  !c5
  db 9,$46
  !c4
  db 9,$42
  !c5
  db 9,$43
  !c5
  db 9,$42
  !c5
  db 18,$06
  !c4
  !c5
  !end

.sub51C9
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
