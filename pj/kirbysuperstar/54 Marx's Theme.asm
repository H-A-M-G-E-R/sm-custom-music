asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr04 = $17
!instr19 = $18
!instr1B = $19
!instr1E = $1A
!instr22 = $1B
!instr23 = $1C
!instr30 = $1D
!instr34 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$E0,$B8,$04,$00
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr1E,$FF,$E0,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+927
  dw Sample04,Sample04+1098
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample30,Sample30+2196
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_def1031979dd40690bc88386d45c4150.brr"
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
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
  dw .pattern2
  dw .pattern1
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw .pattern5
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr30
  !musicVolume,255
  !tempo,51
  !echoParameters,5,65,2
  !echo,%00011111,53,53
  !volume,140
  !pan,9
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$74
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$78
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !dynamicVolume,160,225
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$7B
  !g3
  db 5,$76
  !g3
  db 5,$79
  !g3
  db 6,$7A
  !g3
  db 5,$7B
  !g3
  db 6,$7C
  !g3
  !end

.pattern0_1
  !volume,150
  !dynamicVolume,180,200
  !instr,!instr1B
  !subtranspose,58
  db 96,$7C
  !gs3
  !tie
  !dynamicVolume,180,255
  !tie
  db 96,$7D
  !g2
  !end

.pattern0_2
  !pan,10
  !subtranspose,60
  !instr,!instr19
  !volume,90
  !dynamicVolume,255,170
  db 32,$78
  !g6
  db 32,$75
  !ds6
  !g6
  db 32,$77
  !ds6
  db 32,$75
  !g6
  !ds6
  db 32,$77
  !g6
  db 32,$75
  !ds6
  !g6
  db 32,$79
  !cs6
  !ds6
  db 16,$7A
  !as5
  !ds6
  !end

.pattern0_3
  !pan,12
  !subtranspose,60
  !instr,!instr19
  !volume,90
  !dynamicVolume,255,170
  db 32,$78
  !ds6
  db 32,$75
  !b5
  !ds6
  db 32,$77
  !b5
  db 32,$75
  !ds6
  !b5
  db 48,$76
  !gs5
  !b4
  db 48,$79
  !g5
  db 48,$7A
  !e5
  !end

.pattern0_4
  !pan,8
  !subtranspose,60
  !instr,!instr19
  !volume,90
  !dynamicVolume,255,170
  db 32,$78
  !b5
  db 32,$75
  !gs5
  !b5
  db 32,$77
  !gs5
  db 32,$75
  !b5
  !gs5
  db 48,$76
  !b5
  !gs5
  db 48,$79
  !as5
  db 48,$7A
  !g5
  !end

.pattern1_0
  !volume,220
  !pan,11
  !instr,!instr34
  db 24,$7E
  !f4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$77
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !c4
  db 5,$75
  !c4
  db 5,$76
  !c4
  db 6,$78
  !c4
  db 5,$7A
  !c4
  db 6,$7C
  !c4
  db 24,$7D
  !f4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$77
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !c4
  db 5,$75
  !c4
  db 5,$76
  !c4
  db 6,$78
  !c4
  db 5,$7A
  !c4
  db 6,$7C
  !c4
  !end

.pattern1_1
  !subtranspose,60
  !instr,!instr19
  !volume,220
  !pan,10
  db 32,$58
  !f3
  !rest
  db 32,$56
  !f4
  !e4
  !gs4
  !f4
  !c4
  !e3
  !e4
  !b3
  !ds3
  !g4
  !ds4
  db 32,$58
  !f3
  !rest
  db 32,$56
  !f4
  !e4
  !gs4
  !f4
  !c4
  !gs4
  !f3
  !e3
  !e4
  !b3
  !ds3
  !g4
  !ds4
  !end

.pattern1_2
  !vibrato,0,12,50
  !subtranspose,60
  !instr,!instr19
  !volume,180
  !pan,10
  db 32,$66
  !e6
  !c6
  !e6
  db 16
  !f6
  !gs6
  db 32
  !e6
  !c6
  !e6
  !ds6
  !gs5
  !ds6
  db 16
  !d6
  !g6
  db 32
  !d6
  !g5
  !e6
  !c6
  !e6
  db 16
  !f6
  !gs6
  db 32
  !e6
  !c6
  !e6
  db 16
  !f6
  !gs6
  db 32
  !e6
  !ds6
  db 16
  !gs5
  !as5
  db 32
  !ds6
  !d6
  !a5
  !g5
  !end

.pattern1_3
  !endVibrato
  !subtranspose,60
  !instr,!instr19
  !volume,190
  !pan,8
  db 16,$26
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !b4
  !gs4
  !b4
  !gs4
  !b4
  !gs4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !b4
  !gs4
  !b4
  !gs4
  !b4
  !gs4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !end

.pattern1_4
  !endVibrato
  !subtranspose,60
  !instr,!instr19
  !volume,190
  !pan,12
  db 16,$26
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
  !f5
  !gs5
  !f5
  !e5
  !b4
  !e5
  !b4
  !e5
  !b4
  !ds5
  !as4
  !ds5
  !as4
  !ds5
  !as4
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
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !gs5
  !f5
  !e5
  !b4
  !e5
  !b4
  !e5
  !b4
  !ds5
  !as4
  !ds5
  !as4
  !ds5
  !as4
  !end

.pattern2_0
  !pan,11
  !instr,!instr34
  db 24,$7E
  !d4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !d4
  db 5,$75
  !d4
  db 5,$76
  !d4
  db 6,$78
  !e4
  db 5,$7A
  !e4
  db 6,$7C
  !e4
  db 24,$7E
  !fs4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !e4
  db 5,$75
  !e4
  db 5,$76
  !e4
  db 6,$78
  !e4
  db 5,$7A
  !e4
  db 6,$7C
  !e4
  db 24,$7E
  !ds4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !ds4
  db 5,$75
  !ds4
  db 5,$76
  !ds4
  db 6,$78
  !ds4
  db 5,$7A
  !ds4
  db 6,$7C
  !ds4
  db 24,$7E
  !as4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$76
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !f4
  db 5,$75
  !f4
  db 5,$76
  !f4
  db 6,$78
  !f4
  db 5,$7A
  !f4
  db 6,$7C
  !f4
  db 24,$7F
  !a3
  !pan,9
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$77
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7E
  !fs4
  !pan,9
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !e4
  db 5,$75
  !e4
  db 5,$76
  !e4
  db 6,$78
  !e4
  db 5,$7A
  !e4
  db 6,$7C
  !e4
  !end

.pattern2_1
  db 64,$5A
  !d3
  db 32,$56
  !d4
  !f4
  !d4
  db 64,$59
  !fs3
  db 32,$56
  !fs4
  db 32,$55
  !a4
  db 32,$56
  !fs4
  db 48,$5A
  !ds3
  db 48,$56
  !ds4
  db 48,$58
  !as3
  db 48,$56
  !as4
  db 32
  !a3
  !e4
  !a4
  !fs3
  !fs4
  !e3
  !end

.pattern2_2
  !subtranspose,0
  !instr,!instr22
  !volume,170
  db 16,$26
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !fs5
  !a5
  !fs5
  !a5
  !fs5
  !a5
  !cs5
  !fs5
  !cs5
  !fs5
  !ds5
  !fs5
  !ds5
  !as4
  !ds5
  !fs5
  !as4
  !f5
  !cs5
  !f5
  !as4
  !f5
  !a4
  !e5
  !a4
  !e5
  !cs5
  !e5
  !ds5
  !fs5
  !ds5
  !fs5
  !g5
  !as5
  !end

.pattern2_3
  !volume,180
  db 64,$76
  !a5
  db 64,$56
  !tie
  db 32
  !c6
  db 112
  !cs6
  db 16,$57
  !b5
  db 32,$58
  !a5
  db 32,$56
  !cs6
  !fs5
  !cs6
  !subtranspose,44
  !ds6
  !subtranspose,60
  !cs6
  !c6
  !subtranspose,44
  !cs6
  !subtranspose,60
  !b5
  !a5
  !subtranspose,44
  !c6
  !subtranspose,60
  !b5
  db 16
  !e5
  !g5
  !end

.pattern2_4
  db 32
  !rest
  !volume,180
  db 32,$56
  !e6
  !d6
  db 16
  !c6
  !d6
  db 32
  !e6
  !rest
  !gs6
  !fs6
  db 16
  !f6
  !fs6
  db 32
  !gs6
  !f6
  !as5
  !f6
  db 96
  !ds6
  !cs6
  db 64
  !c6
  db 16
  !as5
  !cs6
  !end

.pattern3_0
  !instr,!instr34
  !pan,11
  db 24,$7E
  !g3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7E
  !gs3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7F
  !ds3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7D
  !as3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7E
  !f4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !f4
  db 5,$75
  !f4
  db 5,$76
  !f4
  db 6,$78
  !f4
  db 5,$7A
  !f4
  db 6,$7C
  !f4
  db 24,$7E
  !e4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !e4
  db 5,$75
  !e4
  db 5,$76
  !e4
  db 6,$78
  !e4
  db 5,$7A
  !e4
  db 6,$7C
  !e4
  db 24,$7E
  !ds4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7E
  !d4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !d4
  db 5,$75
  !d4
  db 5,$76
  !d4
  db 6,$78
  !d4
  db 5,$7A
  !d4
  db 6,$7C
  !d4
  db 24,$7E
  !g3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 16,$7D
  !d4
  !pan,9
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7E
  !g3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !g3
  db 5,$75
  !g3
  db 5,$76
  !g3
  db 6,$78
  !g3
  db 5,$7A
  !g3
  db 6,$7C
  !g3
  !end

.pattern3_1
  !subtranspose,0
  !volume,240
  !instr,!instr04
  db 48,$58
  !g3
  db 16,$56
  !d4
  !g4
  !d4
  db 48
  !gs3
  db 16
  !ds4
  !gs4
  !ds4
  db 48,$58
  !ds3
  db 16,$56
  !ds4
  !as4
  !ds4
  db 48
  !as3
  db 16,$54
  !as4
  db 16,$55
  !f4
  db 16,$54
  !as4
  db 48,$58
  !f3
  db 48,$54
  !f4
  db 16,$56
  !f3
  db 16,$55
  !f4
  db 16,$56
  !f3
  db 16,$55
  !f4
  db 48,$58
  !e3
  db 48,$55
  !e4
  db 16,$56
  !e3
  !e4
  !e3
  !e4
  !instr,!instr19
  !subtranspose,60
  !volume,230
  db 32,$58
  !ds3
  db 32,$56
  !as3
  !ds4
  db 32,$58
  !d3
  db 32,$56
  !a3
  !d4
  db 32,$58
  !g3
  db 32,$56
  !d4
  !g4
  !d4
  !g4
  db 32,$58
  !g3
  !end

.pattern3_2
  !instr,!instr23
  !volume,175
  !vibrato,20,20,40
  !subtranspose,0
  db 32,$37
  !d6
  db 48,$55
  !a6
  db 16,$56
  !gs6
  !g6
  !ds6
  db 32,$37
  !c6
  db 32,$56
  !ds6
  !f6
  !fs6
  db 32,$55
  !gs6
  db 16,$56
  !f6
  !cs6
  db 32,$58
  !as5
  db 32,$56
  !cs6
  db 32,$57
  !ds6
  db 32,$55
  !gs6
  db 32,$57
  !ds6
  !ds6
  db 32,$55
  !gs6
  db 32,$57
  !ds6
  db 32,$55
  !gs6
  db 32,$57
  !ds6
  !cs6
  !ds6
  !vibrato,0,12,50
  !subtranspose,60
  !volume,125
  !dynamicVolume,48,200
  !instr,!instr19
  db 32,$56
  !d6
  db 16
  !c6
  !as5
  db 32
  !a5
  !g5
  !f5
  !a5
  db 96,$76
  !g5
  !tie
  !end

.pattern3_3
  !volume,190
  db 8,$46
  !g4
  !g4
  !d5
  !d5
  !g4
  !g4
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !ds5
  !ds5
  !ds5
  !ds5
  !gs4
  !gs4
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !ds5
  !fs5
  !fs5
  !fs5
  !fs5
  !cs5
  !cs5
  !fs5
  !fs5
  !fs5
  !fs5
  !fs5
  !fs5
  !cs5
  !cs5
  !cs5
  !cs5
  !gs4
  !gs4
  !cs5
  !cs5
  !cs5
  !cs5
  !cs5
  !cs5
  !f5
  !f5
  !f5
  !f5
  !c5
  !c5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !c5
  !c5
  !f5
  !f5
  !e5
  !e5
  !e5
  !e5
  !b4
  !b4
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !e5
  !b4
  !b4
  !e5
  !e5
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !g4
  !as4
  !f4
  !a4
  !f4
  !a4
  !f4
  !a4
  !f4
  !a4
  !f4
  !a4
  !f4
  !a4
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !c5
  !g4
  !b4
  !g4
  !b4
  !g4
  !b4
  !g4
  !b4
  !g4
  !b4
  !g4
  !b4
  !end

.pattern3_4
  !volume,190
  db 8,$46
  !d5
  !d5
  !f5
  !f5
  !as4
  !as4
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !g5
  !g5
  !g5
  !g5
  !c5
  !c5
  !g5
  !g5
  !g5
  !g5
  !g5
  !g5
  !as5
  !as5
  !as5
  !as5
  !fs5
  !fs5
  !as5
  !as5
  !as5
  !as5
  !as5
  !as5
  !f5
  !f5
  !f5
  !f5
  !cs5
  !cs5
  !f5
  !f5
  !f5
  !f5
  !f5
  !f5
  !gs5
  !gs5
  !gs5
  !gs5
  !f5
  !f5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !f5
  !f5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !e5
  !e5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !gs5
  !e5
  !e5
  !gs5
  !gs5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !d5
  !f5
  !c5
  !e5
  !c5
  !e5
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
  !b4
  !d5
  !b4
  !d5
  !end

.pattern4_0
  !instr,!instr34
  !pan,11
  db 24,$7E
  !gs3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$75
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 16,$74
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$78
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !gs3
  db 5,$75
  !gs3
  db 5,$76
  !gs3
  db 6,$78
  !gs3
  db 5,$7A
  !gs3
  db 6,$7C
  !gs3
  !instr,!instr34
  !pan,11
  db 24,$7E
  !g3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$75
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 16,$74
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$78
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !g3
  db 5,$75
  !g3
  db 5,$76
  !g3
  db 6,$78
  !g3
  db 5,$7A
  !g3
  db 6,$7C
  !g3
  !instr,!instr34
  !pan,11
  db 24,$7E
  !gs3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$75
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 16,$74
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 16,$28
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$76
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !gs3
  db 5,$75
  !gs3
  db 5,$76
  !gs3
  db 6,$78
  !gs3
  db 5,$7A
  !gs3
  db 6,$7C
  !gs3
  !instr,!instr34
  !pan,11
  db 24,$7E
  !g3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$75
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 16,$74
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$78
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !g3
  db 5,$75
  !g3
  db 5,$76
  !g3
  db 6,$78
  !g3
  db 5,$7A
  !g3
  db 6,$7C
  !g3
  db 24,$7D
  !f4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$75
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 16,$7A
  !f4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7B
  !as3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$75
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 16,$7A
  !as3
  !pan,9
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7C
  !ds4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$75
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 16,$7A
  !ds4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7B
  !gs3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 16,$75
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 16,$7A
  !gs3
  !pan,9
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 16,$7E
  !d4
  !pan,9
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$74
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$78
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !d4
  db 5,$75
  !d4
  db 5,$76
  !d4
  db 6,$78
  !d4
  db 5,$7A
  !d4
  db 6,$7C
  !d4
  !instr,!instr34
  !pan,11
  db 24,$7E
  !g3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$74
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$78
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !g3
  db 5,$75
  !g3
  db 5,$76
  !g3
  db 6,$78
  !g3
  db 5,$7A
  !g3
  db 6,$7C
  !g3
  !end

.pattern4_1
  !volume,220
  db 32,$38
  !gs3
  db 16,$56
  !gs3
  db 32
  !gs4
  db 16
  !gs3
  !gs3
  !gs3
  !gs4
  !ds4
  db 32,$38
  !g3
  db 16,$56
  !g3
  db 32
  !g4
  db 16
  !g3
  !g3
  !g3
  !g4
  !d4
  db 32,$38
  !gs3
  db 16,$56
  !gs3
  db 32
  !gs4
  db 16
  !gs3
  !gs3
  !gs3
  !gs4
  !ds4
  !g4
  !gs4
  db 32,$38
  !g3
  db 16,$56
  !g3
  db 32
  !g4
  db 16
  !g3
  !g3
  !g3
  !g4
  !d4
  db 32,$38
  !f3
  db 16,$56
  !f3
  db 32
  !f4
  db 16
  !c4
  !as3
  !as3
  !as4
  !f4
  !as3
  !f4
  db 32,$38
  !ds3
  db 16,$56
  !ds3
  db 32
  !ds4
  db 16
  !as3
  !gs3
  !gs3
  !gs4
  !gs3
  !gs4
  !gs3
  db 96
  !d3
  db 32,$58
  !d4
  !e4
  !f4
  db 64
  !g4
  !d4
  !g3
  !end

.pattern4_2
  !subtranspose,58
  !instr,!instr1E
  !volume,170
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !ds5
  db 8,$46
  !d5
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !as4
  db 8,$46
  !a4
  db 8,$45
  !c5
  db 8,$46
  !gs4
  db 8,$45
  !c5
  db 8,$46
  !gs4
  db 8,$45
  !c5
  db 8,$46
  !gs4
  db 8,$45
  !c5
  db 8,$46
  !gs4
  db 8,$45
  !c5
  db 8,$46
  !gs4
  db 8,$45
  !c5
  db 8,$46
  !gs4
  db 8,$45
  !f5
  db 8,$46
  !as4
  db 8,$45
  !f5
  db 8,$46
  !as4
  db 8,$45
  !f5
  db 8,$46
  !as4
  db 8,$45
  !f5
  db 8,$46
  !as4
  db 8,$45
  !d5
  db 8,$46
  !f4
  db 8,$45
  !d5
  db 8,$46
  !f4
  db 8,$45
  !as4
  db 8,$46
  !g4
  db 8,$45
  !as4
  db 8,$46
  !g4
  db 8,$45
  !as4
  db 8,$46
  !g4
  db 8,$45
  !as4
  db 8,$46
  !g4
  db 8,$45
  !as4
  db 8,$46
  !g4
  db 8,$45
  !as4
  db 8,$46
  !g4
  db 8,$45
  !gs4
  db 8,$46
  !g4
  db 8,$45
  !gs4
  db 8,$46
  !g4
  db 8,$45
  !gs4
  db 8,$46
  !g4
  db 8,$45
  !gs4
  db 8,$46
  !g4
  db 8,$45
  !gs4
  db 8,$46
  !g4
  db 8,$45
  !gs4
  db 8,$46
  !g4
  !subtranspose,60
  !volume,180
  !instr,!instr19
  !vibrato,0,20,20
  db 16,$75
  !a5
  db 16,$77
  !d5
  db 16,$75
  !d6
  db 16,$77
  !d5
  db 16,$75
  !a5
  db 16,$77
  !d5
  db 16,$75
  !e6
  db 16,$77
  !d5
  db 16,$75
  !a5
  db 16,$77
  !d5
  db 16,$75
  !d6
  db 16,$77
  !d5
  db 16,$75
  !a5
  db 16,$77
  !d5
  db 16,$75
  !d6
  db 16,$77
  !d5
  db 16,$75
  !a5
  db 16,$77
  !d5
  db 16,$75
  !e6
  db 16,$77
  !d5
  db 16,$75
  !d6
  db 16,$77
  !d5
  db 16,$75
  !c6
  db 16,$77
  !d5
  !end

.pattern4_3
  !subtranspose,0
  !instr,!instr04
  !volume,180
  db 16,$26
  !g5
  db 8,$46
  !g5
  !g5
  db 16,$16
  !g5
  !g5
  db 16,$26
  !g5
  db 16,$46
  !as5
  db 32,$56
  !c6
  db 16
  !as5
  !g5
  !f5
  !g5
  db 32
  !as5
  !vibrato,0,40,50
  !pan,15
  !dynamicPan,89,5
  !volume,110
  !dynamicVolume,89,180
  db 16
  !f5
  !g5
  db 32
  !as5
  db 16
  !f5
  !as5
  !pan,12
  !endVibrato
  db 16,$26
  !g5
  db 8,$46
  !g5
  !g5
  db 16,$16
  !g5
  !g5
  db 16,$26
  !g5
  db 16,$46
  !as5
  !c6
  db 16,$45
  !d6
  db 32,$55
  !ds6
  db 16
  !d6
  db 16,$56
  !c6
  !as5
  !a5
  db 32
  !g5
  !vibrato,0,40,50
  !pan,5
  !dynamicPan,89,15
  !volume,110
  !dynamicVolume,89,180
  db 16
  !as5
  !g5
  db 32
  !f5
  db 16
  !as5
  !f5
  !pan,8
  !vibrato,5,10,10
  !instr,!instr01
  !volume,180
  db 16,$26
  !ds5
  db 8,$46
  !ds5
  !ds5
  db 16,$36
  !ds5
  !ds5
  !ds5
  db 16,$46
  !f5
  db 32,$66
  !gs5
  !gs5
  db 16,$56
  !f5
  !ds5
  !ds5
  !d5
  db 32
  !ds5
  !vibrato,0,40,50
  !subtranspose,58
  !instr,!instr1B
  !pan,8
  !dynamicPan,89,16
  !volume,130
  !dynamicVolume,89,165
  db 16
  !ds5
  !d5
  db 32
  !ds5
  db 16
  !ds5
  !d5
  db 32
  !ds5
  !pan,8
  !subtranspose,60
  !volume,180
  !instr,!instr19
  !vibrato,0,20,20
  db 16,$75
  !e5
  db 16,$77
  !f4
  db 16,$75
  !f5
  db 16,$77
  !f4
  db 16,$75
  !e5
  db 16,$77
  !f4
  db 16,$75
  !f5
  db 16,$77
  !f4
  db 16,$75
  !e5
  db 16,$77
  !f4
  db 16,$75
  !f5
  db 16,$77
  !f4
  db 16,$75
  !d5
  db 16,$77
  !f4
  db 16,$75
  !f5
  db 16,$77
  !f4
  db 16,$75
  !d5
  db 16,$77
  !f4
  db 16,$75
  !g5
  db 16,$77
  !g4
  db 16,$75
  !g5
  db 16,$77
  !g4
  db 16,$75
  !f5
  db 16,$77
  !g4
  !end

.pattern4_4
  !subtranspose,0
  !instr,!instr04
  !volume,180
  db 16,$26
  !c6
  db 8,$46
  !c6
  !c6
  db 16,$16
  !c6
  !c6
  db 16,$26
  !c6
  db 16,$46
  !d6
  db 32,$56
  !ds6
  db 16
  !d6
  !c6
  !as5
  !c6
  db 32
  !d6
  !vibrato,0,40,50
  !pan,18
  !dynamicPan,89,2
  !volume,110
  !dynamicVolume,89,180
  db 16
  !as5
  !c6
  db 32
  !d6
  db 16
  !as5
  !d6
  !pan,8
  !endVibrato
  db 16,$26
  !c6
  db 8,$46
  !c6
  !c6
  db 16,$26
  !c6
  !c6
  db 16,$46
  !c6
  !d6
  !ds6
  db 16,$45
  !f6
  db 32,$55
  !g6
  db 16
  !f6
  db 16,$56
  !ds6
  !d6
  !c6
  db 32
  !as5
  !vibrato,0,40,50
  !pan,2
  !dynamicPan,89,18
  !volume,110
  !dynamicVolume,89,180
  db 16
  !d6
  !c6
  db 32
  !as5
  db 16
  !d6
  !as5
  !pan,12
  !vibrato,5,10,10
  !instr,!instr01
  !volume,180
  db 16,$26
  !gs5
  db 8,$46
  !gs5
  !gs5
  db 16,$36
  !gs5
  !gs5
  !gs5
  db 16,$46
  !as5
  db 32,$66
  !c6
  !c6
  db 16,$56
  !as5
  !gs5
  !g5
  !f5
  db 32
  !g5
  !vibrato,0,40,50
  !subtranspose,58
  !instr,!instr1B
  !pan,12
  !dynamicPan,89,4
  !volume,130
  !dynamicVolume,89,165
  db 16
  !g5
  !f5
  db 32
  !g5
  db 16
  !g5
  !f5
  db 32
  !g5
  !pan,12
  !subtranspose,60
  !volume,180
  !instr,!instr19
  !vibrato,0,20,20
  db 16,$75
  !f5
  db 16,$77
  !a4
  db 16,$75
  !a5
  db 16,$77
  !a4
  db 16,$75
  !f5
  db 16,$77
  !a4
  db 16,$75
  !a5
  db 16,$77
  !a4
  db 16,$75
  !f5
  db 16,$77
  !a4
  db 16,$75
  !a5
  db 16,$77
  !a4
  db 16,$75
  !f5
  db 16,$77
  !b4
  db 16,$75
  !b5
  db 16,$77
  !b4
  db 16,$75
  !f5
  db 16,$77
  !b4
  db 16,$75
  !b5
  db 16,$77
  !b4
  db 16,$75
  !b5
  db 16,$77
  !b4
  db 16,$75
  !g5
  db 16,$77
  !b4
  !end

.pattern5_0
  !instr,!instr34
  !pan,11
  db 16,$7E
  !gs3
  !pan,9
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$74
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$78
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$73
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 16,$7D
  !ds4
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 24,$7E
  !gs3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$73
  !gs3
  db 5,$75
  !gs3
  db 5,$76
  !gs3
  db 6,$78
  !gs3
  db 5,$7A
  !gs3
  db 6,$7C
  !gs3
  !instr,!instr34
  !pan,11
  db 24,$7E
  !g3
  !pan,9
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$75
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  db 8,$72
  %percNote(!instr30-!instr30)
  db 8,$71
  %percNote(!instr30-!instr30)
  !instr,!instr34
  !pan,11
  db 5,$7B
  !g3
  db 5,$76
  !g3
  db 5,$79
  !g3
  db 6,$7A
  !g3
  db 5,$7B
  !g3
  db 6,$7C
  !g3
  !end

.pattern5_1
  !volume,255
  !instr,!instr1B
  !subtranspose,58
  db 96,$78
  !gs2
  !tie
  !tie
  db 96,$79
  !g2
  !end

.pattern5_2
  !volume,110
  !dynamicVolume,255,180
  db 32,$76
  !g6
  !ds6
  !g6
  !ds6
  !g6
  !ds6
  !g6
  !ds6
  !g6
  db 32,$79
  !cs6
  !ds6
  db 16,$7B
  !as5
  !ds6
  !end

.pattern5_3
  !subtranspose,58
  !instr,!instr1B
  !volume,140
  !dynamicVolume,255,190
  db 48,$76
  !b4
  !gs4
  !b4
  !gs4
  !b4
  !gs4
  db 48,$79
  !as4
  db 48,$7A
  !g4
  !end

.pattern5_4
  !subtranspose,58
  !instr,!instr1B
  !volume,140
  !dynamicVolume,255,190
  db 48,$76
  !ds5
  !b4
  !ds5
  !b4
  !ds5
  !b4
  db 48,$79
  !e5
  db 48,$7A
  !cs5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
