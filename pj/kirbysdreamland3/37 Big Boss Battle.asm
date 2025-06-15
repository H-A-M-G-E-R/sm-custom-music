asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr03 = $18
!instr06 = $19
!instr0A = $1A
!instr17 = $1B
!instr1B = $1C
!instr21 = $1D
!instr25 = $1E
!instr26 = $1F
!instr27 = $20
!instr28 = $21
!instr29 = $22

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$07,$00
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr0A,$DF,$F6,$B8,$04,$20
  db !instr17,$82,$EE,$B8,$03,$C0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr26,$BF,$D3,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$FF,$E0,$B8,$07,$A0
  db !instr29,$FF,$EE,$B8,$11,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+819
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample05_06,Sample05_06+216
  dw Sample0A_0B,Sample0A_0B+18
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1B,Sample1B+1170
  dw Sample21,Sample21+27
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample26_27,Sample26_27+1683
  dw Sample28,Sample28+2790
  dw Sample29,Sample29+1476
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_daee1fba1349bada3b2b763cd04133f4.brr"
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample0A_0B: incbin "Sample_41b87ab6bd87392c34946906c0cdc13d.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28: incbin "Sample_a60cbdef7fb6f5b108178954389137db.brr"
  Sample29: incbin "Sample_92e9fe732aa755393f2d795958071c3d.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
  dw .pattern0
-
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
  !musicVolume,255
  !tempo,46
  !echo,%00011101,34,34
  !echoParameters,4,201,2
  !instr,!instr28
  db 8,$77
  !e5
  !e5
  !instr,!instr25
  !pan,9
  db 9,$46
  !a4
  db 7,$44
  !a4
  !pan,11
  db 9,$46
  !f4
  db 7,$44
  !f4
  !pan,10
  !instr,!instr28
  db 8,$77
  !e5
  !e5
  !instr,!instr25
  !pan,9
  db 9,$46
  !a4
  db 7,$44
  !a4
  !pan,11
  db 9,$46
  !f4
  db 7,$44
  !f4
  !instr,!instr28
  !pan,9
  db 8,$78
  !g4
  !pan,11
  !g4
  !instr,!instr25
  !pan,15
  db 8,$79
  !g4
  !pan,5
  !g4
  !end

.pattern0_1
  !pan,10
  !volume,200
  !instr,!instr21
  db 8,$67
  !e3
  !e3
  db 32
  !rest
  db 8
  !e3
  !e3
  db 32
  !rest
  db 8
  !b2
  !e3
  db 16,$6B
  !e2
  !end

.pattern0_2
  !subtranspose,0
  !endVibrato
  !instr,!instr01
  !volume,200
  !pan,12
  db 8,$57
  !b5
  !b5
  db 32
  !rest
  db 8
  !b5
  !b5
  db 32
  !rest
  db 8
  !d5
  db 24
  !d5
  !end

.pattern0_3
  !subtranspose,0
  !endVibrato
  !instr,!instr01
  !volume,200
  !pan,8
  db 8,$57
  !d6
  !d6
  db 32
  !rest
  db 8
  !d6
  !d6
  db 32
  !rest
  db 8
  !g5
  db 24
  !g5
  !end

.pattern0_4
  !subtranspose,0
  !vibrato,0,30,40
  !instr,!instr01
  !volume,210
  !pan,10
  db 8,$57
  !g6
  !g6
  db 32
  !rest
  db 8
  !g6
  !g6
  db 32
  !rest
  db 8
  !b5
  db 24
  !b5
  !end

.pattern1_0
  !endSlide
  !instr,!instr26
  !pan,10
  db 16,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  !pan,9
  !instr,!instr28
  db 7,$75
  !f5
  db 16,$47
  !f5
  !pan,10
  !instr,!instr26
  db 16,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  !pan,9
  !instr,!instr28
  db 7,$75
  !f5
  db 16,$47
  !f5
  !pan,10
  !instr,!instr26
  db 8,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 8,$77
  !c5
  !pan,9
  !instr,!instr28
  db 9
  !f5
  db 7,$74
  !f5
  !loop : dw .sub509D : db 3
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  db 7,$76
  !c5
  !pan,10
  !instr,!instr26
  db 9,$7B
  !b2
  !pan,11
  !instr,!instr25
  db 7,$77
  !c5
  !pan,9
  !instr,!instr28
  db 9
  !f5
  !pan,11
  !instr,!instr25
  db 7,$76
  !c5
  !pan,10
  !instr,!instr26
  db 16,$7C
  !b2
  !pan,10
  !instr,!instr25
  db 9,$27
  !g5
  !pan,9
  !instr,!instr28
  db 7,$75
  !f5
  db 16,$77
  !f5
  !instr,!instr25
  !pan,11
  db 8,$7B
  !f4
  !pan,9
  !f4
  !pan,11
  !f4
  !pan,9
  !f4
  !end

.pattern1_1
  !instr,!instr21
  !pan,10
  !volume,190
  !loop : dw .sub5134 : db 2
  !end

.pattern1_2
  !endVibrato
  !subtranspose,0
  !instr,!instr06
  !volume,150
  !loop : dw .sub51BB : db 1
  !pan,10
  db 8,$4C
  !a7
  !pan,11
  db 8,$47
  !a6
  !pan,9
  !a7
  !pan,12
  !a6
  !pan,8
  !g7
  !pan,13
  !a7
  !pan,10
  db 8,$4C
  !a6
  !pan,9
  db 8,$47
  !g7
  !pan,11
  !b7
  !pan,8
  !b6
  !pan,12
  !b7
  !pan,7
  !b6
  !pan,10
  db 8,$4C
  !a7
  !pan,12
  db 8,$47
  !b7
  !pan,8
  !b6
  !pan,13
  !b7
  !loop : dw .sub51BB : db 1
  !pan,0
  !dynamicPan,63,20
  !instr,!instr03
  !volume,200
  db 8,$7B
  !f5
  db 8,$79
  !d5
  db 8,$78
  !f5
  db 8,$77
  !a5
  !c6
  !f6
  db 8,$76
  !a6
  db 8,$75
  !c7
  !dynamicPan,63,0
  db 8,$7B
  !g5
  db 8,$79
  !e5
  db 8,$78
  !g5
  db 8,$77
  !b5
  !d6
  !g6
  db 8,$76
  !b6
  db 8,$75
  !d7
  !end

.pattern1_3
  !subtranspose,0
  !endVibrato
  !instr,!instr01
  !volume,205
  !pan,8
  db 8,$77
  !g5
  db 8,$73
  !c5
  !e5
  db 8,$77
  !g5
  db 8,$73
  !c5
  !e5
  db 8,$77
  !g5
  db 8,$73
  !c5
  !e5
  !c5
  db 8,$77
  !g5
  db 8,$73
  !c5
  db 8,$77
  !g5
  db 8,$73
  !c5
  !e5
  !c5
  db 8,$77
  !a5
  db 8,$73
  !d5
  !fs5
  db 8,$77
  !a5
  db 8,$73
  !d5
  !fs5
  db 8,$77
  !a5
  db 8,$73
  !d5
  !fs5
  !d5
  db 8,$77
  !a5
  db 8,$73
  !d5
  db 8,$77
  !a5
  db 8,$73
  !d5
  !fs5
  !d5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  !ds5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  !ds5
  db 8,$77
  !c6
  db 8,$73
  !f5
  !a5
  db 8,$77
  !c6
  db 8,$73
  !f5
  !a5
  db 8,$77
  !c6
  db 8,$73
  !f5
  db 8,$77
  !d6
  db 8,$73
  !e5
  !g5
  db 8,$77
  !d6
  db 8,$73
  !e5
  !g5
  db 8,$77
  !d6
  !g5
  !g5
  db 8,$73
  !c5
  !e5
  db 8,$77
  !g5
  db 8,$73
  !c5
  !e5
  db 8,$77
  !g5
  db 8,$73
  !c5
  !e5
  !c5
  db 8,$77
  !g5
  db 8,$73
  !c5
  db 8,$77
  !g5
  db 8,$73
  !c5
  !e5
  !c5
  db 8,$77
  !a5
  db 8,$73
  !d5
  !fs5
  db 8,$77
  !a5
  db 8,$73
  !d5
  !fs5
  db 8,$77
  !a5
  db 8,$73
  !d5
  !fs5
  !d5
  db 8,$77
  !a5
  db 8,$73
  !d5
  db 8,$77
  !a5
  db 8,$73
  !d5
  !fs5
  !d5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  !ds5
  db 8,$77
  !as5
  db 8,$73
  !c5
  !ds5
  !c5
  db 8,$77
  !as5
  db 8,$73
  !c5
  db 8,$77
  !c6
  !c6
  db 8,$73
  !a5
  db 8,$77
  !c6
  db 8,$73
  !f5
  !a5
  db 16,$57
  !c6
  db 8,$77
  !d6
  !d6
  db 8,$73
  !g5
  db 8,$77
  !d6
  db 8,$73
  !e5
  !g5
  db 16,$57
  !d6
  !end

.pattern1_4
  !subtranspose,0
  !endVibrato
  !instr,!instr01
  !volume,205
  !pan,12
  db 8,$77
  !c6
  db 8,$73
  !e5
  !g5
  db 8,$77
  !c6
  db 8,$73
  !e5
  !g5
  db 8,$77
  !c6
  db 8,$73
  !e5
  !g5
  !e5
  db 8,$77
  !c6
  db 8,$73
  !e5
  db 8,$77
  !c6
  db 8,$73
  !e5
  !g5
  !e5
  db 8,$77
  !d6
  db 8,$73
  !fs5
  !a5
  db 8,$77
  !d6
  db 8,$73
  !fs5
  !a5
  db 8,$77
  !d6
  db 8,$73
  !fs5
  !a5
  !fs5
  db 8,$77
  !d6
  db 8,$73
  !fs5
  db 8,$77
  !d6
  db 8,$73
  !fs5
  !a5
  !fs5
  db 8,$77
  !ds6
  db 8,$73
  !g5
  !as5
  db 8,$77
  !ds6
  db 8,$73
  !g5
  !as5
  db 8,$77
  !ds6
  db 8,$73
  !g5
  !as5
  !g5
  db 8,$77
  !ds6
  db 8,$73
  !g5
  db 8,$77
  !ds6
  db 8,$73
  !g5
  !as5
  !g5
  db 8,$77
  !f6
  db 8,$73
  !a5
  !c6
  db 8,$77
  !f6
  db 8,$73
  !a5
  !c6
  db 8,$77
  !f6
  db 8,$73
  !a5
  db 8,$77
  !g6
  db 8,$75
  !g5
  !b5
  db 8,$77
  !g6
  db 8,$75
  !g5
  !b5
  db 8,$77
  !g6
  !b5
  !c6
  db 8,$73
  !e5
  !g5
  db 8,$77
  !c6
  db 8,$73
  !e5
  !g5
  db 8,$77
  !c6
  db 8,$73
  !e5
  !g5
  !e5
  db 8,$77
  !c6
  db 8,$73
  !e5
  db 8,$77
  !c6
  db 8,$73
  !e5
  !g5
  !e5
  db 8,$77
  !d6
  db 8,$73
  !fs5
  !a5
  db 8,$77
  !d6
  db 8,$73
  !fs5
  !a5
  db 8,$77
  !d6
  db 8,$73
  !fs5
  !a5
  !fs5
  db 8,$77
  !d6
  db 8,$73
  !fs5
  db 8,$77
  !d6
  db 8,$73
  !fs5
  !a5
  !fs5
  db 8,$77
  !ds6
  db 8,$73
  !g5
  !as5
  db 8,$77
  !ds6
  db 8,$73
  !g5
  !as5
  db 8,$77
  !ds6
  db 8,$73
  !g5
  !as5
  !g5
  db 8,$77
  !ds6
  db 8,$73
  !ds5
  !g5
  !ds5
  db 8,$77
  !ds6
  db 8,$73
  !ds5
  db 8,$77
  !f6
  !f6
  db 8,$73
  !c6
  db 8,$77
  !f6
  db 8,$73
  !a5
  !c6
  db 16,$57
  !f6
  db 8,$77
  !g6
  !g6
  db 8,$75
  !b5
  db 8,$77
  !g6
  db 8,$75
  !g5
  !b5
  db 16,$57
  !g6
  !end

.pattern2_0
  !loop : dw .sub5270 : db 1
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  db 7,$76
  !c5
  !pan,10
  !instr,!instr26
  db 9,$7B
  !b2
  !pan,11
  !instr,!instr25
  db 7,$77
  !c5
  !pan,9
  !instr,!instr28
  db 9
  !f5
  !pan,11
  !instr,!instr25
  db 7,$76
  !c5
  !pan,10
  !instr,!instr26
  db 16,$7C
  !b2
  !pan,10
  !instr,!instr25
  db 9,$27
  !g5
  !pan,11
  db 7,$75
  !c5
  db 16,$47
  !c5
  !pan,10
  !instr,!instr26
  db 9,$7A
  !b2
  !pan,9
  !instr,!instr28
  db 8,$74
  !f5
  db 8,$77
  !f5
  db 7,$74
  !f5
  !end

.pattern2_1
  db 16,$69
  !f2
  db 8,$67
  !f3
  db 8,$69
  !f2
  !f2
  db 8,$67
  !f3
  db 8,$69
  !f2
  !f2
  db 8,$67
  !f3
  db 8,$69
  !f2
  !f2
  db 8,$67
  !f3
  db 8,$69
  !f2
  !f2
  db 8,$67
  !f3
  db 8,$69
  !f2
  db 16,$67
  !c3
  db 8,$64
  !c4
  db 8,$67
  !c3
  !c3
  db 8,$64
  !c4
  db 8,$67
  !c3
  !c3
  db 8,$64
  !c4
  db 8,$67
  !c3
  !c3
  db 8,$64
  !c4
  db 8,$67
  !c3
  !c3
  db 8,$64
  !c4
  db 8,$67
  !c3
  db 16
  !b2
  db 8,$65
  !b3
  db 8,$67
  !b2
  !b2
  db 8,$65
  !b3
  db 8,$67
  !b2
  !b2
  db 8,$65
  !b3
  db 8,$67
  !b2
  !b2
  db 8,$65
  !b3
  db 8,$67
  !b2
  !b2
  db 8,$65
  !b3
  db 8,$67
  !b2
  db 16
  !as2
  db 8,$66
  !as3
  db 8,$67
  !as2
  !as2
  db 8,$66
  !as3
  db 8,$67
  !as2
  !as2
  db 16,$68
  !a2
  db 8,$67
  !a3
  !a2
  !a3
  !e3
  !a2
  !a3
  !end

.pattern2_2
  !pan,12
  !instr,!instr1B
  !volume,200
  db 8,$77
  !c6
  db 8,$73
  !f5
  !gs5
  db 8,$77
  !c6
  db 8,$73
  !f5
  !gs5
  db 8,$77
  !c6
  db 8,$73
  !f5
  !gs5
  !f5
  db 8,$77
  !c6
  db 8,$73
  !f5
  db 8,$77
  !c6
  db 8,$73
  !f5
  !gs5
  !f5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  !ds5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  db 8,$77
  !as5
  db 8,$73
  !ds5
  !g5
  !ds5
  db 8,$77
  !gs5
  db 8,$73
  !b4
  !ds5
  db 8,$77
  !gs5
  db 8,$73
  !b4
  !ds5
  db 8,$77
  !gs5
  db 8,$73
  !b4
  !ds5
  !b4
  db 8,$77
  !gs5
  db 8,$73
  !b4
  db 8,$77
  !gs5
  db 8,$73
  !b4
  !ds5
  !b4
  db 8,$77
  !g5
  !g5
  db 8,$73
  !d5
  db 8,$77
  !g5
  db 8,$73
  !a4
  !d5
  db 16,$57
  !g5
  db 8,$77
  !fs5
  !fs5
  db 8,$73
  !cs5
  db 8,$77
  !fs5
  db 8,$73
  !gs4
  !cs5
  db 16,$57
  !fs5
  !end

.pattern2_3
  !pan,8
  !instr,!instr1B
  !volume,200
  db 8,$77
  !ds6
  db 8,$73
  !gs5
  !c6
  db 8,$77
  !ds6
  db 8,$73
  !gs5
  !c6
  db 8,$77
  !ds6
  db 8,$73
  !gs5
  !c6
  !gs5
  db 8,$77
  !ds6
  db 8,$73
  !gs5
  db 8,$77
  !ds6
  db 8,$73
  !gs5
  !c6
  !gs5
  db 8,$77
  !d6
  db 8,$73
  !g5
  !as5
  db 8,$77
  !d6
  db 8,$73
  !g5
  !as5
  db 8,$77
  !d6
  db 8,$73
  !g5
  !as5
  !g5
  db 8,$77
  !d6
  db 8,$73
  !g5
  db 8,$77
  !d6
  db 8,$73
  !g5
  !as5
  !g5
  db 8,$77
  !cs6
  db 8,$73
  !ds5
  !gs5
  db 8,$77
  !cs6
  db 8,$73
  !ds5
  !gs5
  db 8,$77
  !cs6
  db 8,$73
  !ds5
  !gs5
  !ds5
  db 8,$77
  !cs6
  db 8,$73
  !ds5
  db 8,$77
  !cs6
  db 8,$73
  !ds5
  !gs5
  !ds5
  db 8,$77
  !c6
  !c6
  db 8,$73
  !g5
  db 8,$77
  !c6
  db 8,$73
  !d5
  !g5
  db 16,$57
  !c6
  db 8,$77
  !b5
  !b5
  db 8,$73
  !fs5
  db 8,$77
  !b5
  db 8,$73
  !cs5
  !fs5
  db 16,$57
  !b5
  !end

.pattern2_4
  !pan,10
  !instr,!instr1B
  !volume,205
  !endVibrato
  db 8,$77
  !gs6
  db 8,$73
  !c6
  !ds6
  db 8,$77
  !gs6
  db 8,$73
  !c6
  !ds6
  db 8,$77
  !gs6
  db 8,$73
  !c6
  !ds6
  !c6
  db 8,$77
  !gs6
  db 8,$73
  !c6
  db 8,$77
  !gs6
  db 8,$73
  !c6
  !ds6
  !c6
  db 8,$77
  !g6
  db 8,$73
  !as5
  !d6
  db 8,$77
  !g6
  db 8,$73
  !as5
  !d6
  db 8,$77
  !g6
  db 8,$73
  !as5
  !d6
  !as5
  db 8,$77
  !g6
  db 8,$73
  !as5
  db 8,$77
  !g6
  db 8,$73
  !as5
  !d6
  !as5
  db 8,$77
  !fs6
  db 8,$73
  !gs5
  !cs6
  db 8,$77
  !fs6
  db 8,$73
  !gs5
  !cs6
  db 8,$77
  !fs6
  db 8,$73
  !gs5
  !cs6
  !gs5
  db 8,$77
  !fs6
  db 8,$73
  !gs5
  db 8,$77
  !fs6
  db 8,$73
  !gs5
  !cs6
  !gs5
  db 8,$77
  !f6
  !f6
  db 8,$73
  !c6
  db 8,$77
  !f6
  db 8,$73
  !g5
  !c6
  db 16,$57
  !f6
  db 8,$77
  !e6
  !e6
  db 8,$73
  !b5
  db 8,$77
  !e6
  db 8,$73
  !fs5
  !b5
  db 16,$57
  !e6
  !end

.pattern3_0
  !loop : dw .sub5270 : db 1
  !instr,!instr0A
  !pan,10
  db 8,$7C
  !e5
  !e5
  !slideOut,0,32,2
  db 32
  !e5
  !endSlide
  db 8
  !f5
  !f5
  !slideOut,0,32,2
  db 32
  !f5
  !endSlide
  db 6
  !fs5
  db 5
  !fs5
  !fs5
  !slideOut,0,16,2
  db 16
  !g5
  !end

.pattern3_1
  !instr,!instr29
  !volume,255
  db 16,$67
  !f3
  db 8,$63
  !f4
  db 8,$67
  !f3
  !f3
  db 8,$63
  !f4
  db 8,$67
  !f3
  !f3
  db 8,$63
  !f4
  db 16,$67
  !f3
  db 8,$63
  !f4
  db 8,$67
  !f3
  db 8,$63
  !f4
  db 16,$67
  !f3
  !c3
  db 8,$64
  !c4
  db 8,$67
  !c3
  !c3
  db 8,$64
  !c4
  db 8,$67
  !c3
  !c3
  db 8,$64
  !c4
  db 16,$67
  !c3
  db 8,$64
  !c4
  db 8,$67
  !c3
  db 8,$64
  !c4
  db 16,$67
  !c3
  !b2
  db 8,$65
  !b3
  db 8,$67
  !b2
  !b2
  db 8,$65
  !b3
  db 8,$67
  !b2
  !b2
  db 8,$65
  !b3
  db 16,$67
  !b2
  db 8,$65
  !b3
  db 8,$67
  !b2
  db 8,$65
  !b3
  db 16,$67
  !b2
  !pan,10
  !volume,180
  !instr,!instr28
  db 8,$78
  !f5
  db 8,$75
  !f5
  db 8,$77
  !f5
  db 8,$73
  !f5
  !volume,220
  db 8,$78
  !f5
  db 8,$75
  !f5
  db 8,$77
  !f5
  db 8,$73
  !f5
  !volume,255
  db 8,$78
  !f5
  db 8,$75
  !f5
  db 8,$77
  !f5
  db 8,$73
  !f5
  db 6,$78
  !f5
  db 5,$75
  !f5
  db 5,$74
  !f5
  !instr,!instr28
  db 16,$7C
  !a2
  !end

.pattern3_2
  !instr,!instr00
  !volume,180
  db 8,$78
  !as5
  db 8,$74
  !c5
  !f5
  db 8,$78
  !as5
  db 8,$74
  !c5
  !f5
  db 8,$78
  !as5
  db 8,$74
  !c5
  !f5
  !c5
  db 8,$78
  !as5
  db 8,$74
  !c5
  db 8,$78
  !as5
  db 8,$74
  !c5
  !f5
  !c5
  db 8,$78
  !a5
  db 8,$74
  !c5
  !e5
  db 8,$78
  !a5
  db 8,$74
  !c5
  !e5
  db 8,$78
  !a5
  db 8,$74
  !c5
  !e5
  !c5
  db 8,$78
  !a5
  db 8,$74
  !c5
  db 8,$78
  !a5
  db 8,$74
  !c5
  !e5
  !c5
  db 8,$78
  !gs5
  db 8,$74
  !b4
  !ds5
  db 8,$77
  !gs5
  db 8,$73
  !b4
  !ds5
  db 8,$76
  !gs5
  db 8,$72
  !b4
  !ds5
  !b4
  db 8,$78
  !gs5
  db 8,$74
  !b4
  db 8,$73
  !ds5
  db 8,$72
  !b4
  db 8,$77
  !ds6
  db 8,$72
  !b4
  !instr,!instr17
  !volume,250
  !subtranspose,60
  db 64,$79
  !g4
  db 48
  !tie
  db 16
  !rest
  !end

.pattern3_3
  !instr,!instr00
  !volume,180
  db 8,$78
  !ds6
  db 8,$74
  !f5
  !as5
  db 8,$78
  !ds6
  db 8,$74
  !f5
  !as5
  db 8,$78
  !ds6
  db 8,$74
  !f5
  !as5
  !f5
  db 8,$78
  !ds6
  db 8,$74
  !f5
  db 8,$78
  !ds6
  db 8,$74
  !f5
  !as5
  !f5
  db 8,$78
  !d6
  db 8,$74
  !e5
  !a5
  db 8,$78
  !d6
  db 8,$74
  !e5
  !a5
  db 8,$78
  !d6
  db 8,$74
  !e5
  !a5
  !e5
  db 8,$78
  !d6
  db 8,$74
  !e5
  db 8,$78
  !d6
  db 8,$74
  !e5
  !a5
  !e5
  db 8,$78
  !cs6
  db 8,$74
  !ds5
  !gs5
  db 8,$77
  !cs6
  db 8,$73
  !ds5
  !gs5
  db 8,$76
  !cs6
  db 8,$72
  !ds5
  !gs5
  !ds5
  db 8,$78
  !ds6
  db 8,$74
  !ds5
  db 8,$73
  !gs5
  db 8,$72
  !ds5
  db 8,$77
  !cs6
  db 8,$72
  !ds5
  !instr,!instr17
  !volume,250
  !subtranspose,60
  db 64,$79
  !d5
  db 48
  !tie
  db 16
  !rest
  !end

.pattern3_4
  !instr,!instr00
  !volume,185
  db 8,$78
  !gs6
  db 8,$74
  !as5
  !ds6
  db 8,$78
  !gs6
  db 8,$74
  !as5
  !ds6
  db 8,$78
  !gs6
  db 8,$74
  !as5
  !ds6
  !as5
  db 8,$78
  !gs6
  db 8,$74
  !as5
  db 8,$78
  !gs6
  db 8,$74
  !as5
  !ds6
  !as5
  db 8,$78
  !g6
  db 8,$74
  !a5
  !d6
  db 8,$78
  !g6
  db 8,$74
  !a5
  !d6
  db 8,$78
  !g6
  db 8,$74
  !a5
  !d6
  !a5
  db 8,$78
  !g6
  db 8,$74
  !a5
  db 8,$78
  !g6
  db 8,$74
  !a5
  !d6
  !a5
  db 8,$78
  !fs6
  db 8,$74
  !gs5
  !cs6
  db 8,$77
  !fs6
  db 8,$73
  !gs5
  !cs6
  db 8,$76
  !fs6
  db 8,$72
  !gs5
  !cs6
  !gs5
  db 8,$78
  !fs6
  db 8,$74
  !gs5
  db 8,$73
  !cs6
  db 8,$72
  !gs5
  db 8,$77
  !fs6
  db 8,$72
  !gs5
  !instr,!instr17
  !volume,250
  !subtranspose,60
  db 64,$7B
  !e3
  db 48
  !tie
  !instr,!instr27
  db 16
  !e4
  !end

.sub509D
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  db 7,$76
  !c5
  !pan,10
  !instr,!instr26
  db 9,$7B
  !b2
  !pan,11
  !instr,!instr25
  db 7,$77
  !c5
  !pan,9
  !instr,!instr28
  db 9
  !f5
  !pan,11
  !instr,!instr25
  db 7,$76
  !c5
  !pan,10
  !instr,!instr26
  db 16,$7C
  !b2
  !pan,10
  !instr,!instr25
  db 9,$27
  !g5
  !pan,11
  db 7,$75
  !c5
  db 16,$47
  !c5
  !pan,10
  !instr,!instr26
  db 9,$7A
  !b2
  !pan,9
  !instr,!instr28
  db 8,$74
  !f5
  db 8,$77
  !f5
  db 7,$74
  !f5
  !instr,!instr26
  !pan,10
  db 16,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  !pan,9
  !instr,!instr28
  db 7,$75
  !f5
  db 16,$47
  !f5
  !pan,10
  !instr,!instr26
  db 16,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  !pan,9
  !instr,!instr28
  db 7,$75
  !f5
  db 16,$47
  !f5
  !pan,10
  !instr,!instr26
  db 8,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 8,$77
  !c5
  !pan,9
  !instr,!instr28
  db 9
  !f5
  db 7,$74
  !f5
  !end

.sub5134
  db 16,$68
  !a2
  db 8,$66
  !a3
  db 8,$67
  !a2
  !a2
  db 8,$66
  !a3
  db 8,$67
  !a2
  !a2
  db 8,$66
  !a3
  db 16,$67
  !a2
  db 8
  !e3
  !g3
  db 8,$66
  !a3
  db 16,$67
  !a2
  db 16,$68
  !b2
  db 8,$65
  !b3
  db 8,$67
  !b2
  !b2
  db 8,$65
  !b3
  db 8,$67
  !b2
  !b2
  db 8,$65
  !b3
  db 16,$67
  !b2
  db 8
  !fs3
  db 8,$66
  !a3
  db 8,$67
  !b3
  db 16
  !b2
  db 16,$68
  !c3
  db 8,$64
  !c4
  db 8,$67
  !c3
  !c3
  db 8,$64
  !c4
  db 8,$67
  !c3
  !c3
  db 8,$64
  !c4
  db 16,$67
  !c3
  db 8
  !g3
  !g3
  db 8,$64
  !c4
  db 16,$67
  !c3
  db 16,$68
  !d3
  db 8,$63
  !d4
  db 8,$67
  !d3
  !d3
  db 8,$63
  !d4
  db 8,$67
  !d3
  db 8,$64
  !d4
  db 8,$65
  !e4
  db 16,$7B
  !e2
  db 8,$67
  !e3
  db 8,$6B
  !e2
  db 8,$67
  !e3
  db 16,$7B
  !e2
  !end

.sub51BB
  !pan,10
  db 8,$4C
  !e7
  !pan,11
  db 8,$47
  !a6
  !pan,9
  !a7
  !pan,12
  !a6
  !pan,8
  !a7
  !pan,13
  !a7
  !pan,10
  db 8,$4C
  !a6
  !pan,9
  db 8,$47
  !g7
  !pan,11
  !a7
  !pan,8
  !a6
  !pan,12
  !a7
  !pan,7
  !a6
  !pan,10
  db 8,$4C
  !g7
  !pan,12
  db 8,$47
  !a7
  !pan,8
  !a6
  !pan,13
  !g7
  !pan,10
  db 8,$4C
  !a7
  !pan,11
  db 8,$47
  !a6
  !pan,9
  !a7
  !pan,12
  !a6
  !pan,8
  !fs7
  !pan,13
  !a7
  !pan,10
  db 8,$4C
  !a6
  !pan,9
  db 8,$47
  !fs7
  !pan,11
  !a7
  !pan,8
  !a6
  !pan,12
  !a7
  !pan,7
  !a6
  !pan,10
  db 8,$4C
  !b7
  !pan,12
  db 8,$47
  !a7
  !pan,8
  !a6
  !pan,7
  !fs7
  !pan,10
  db 8,$4C
  !as7
  !pan,11
  db 8,$47
  !as6
  !pan,9
  !as7
  !pan,12
  !as6
  !pan,8
  !g7
  !pan,13
  !as7
  !pan,10
  db 8,$4C
  !as6
  !pan,9
  db 8,$47
  !g7
  !pan,11
  !as7
  !pan,8
  !as6
  !pan,12
  !as7
  !pan,7
  !as6
  !pan,10
  db 8,$4C
  !g7
  !pan,12
  db 8,$47
  !as7
  !pan,8
  !as6
  !pan,13
  !g7
  !end

.sub5270
  !instr,!instr26
  !pan,10
  db 16,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  !pan,9
  !instr,!instr28
  db 7,$75
  !f5
  db 16,$47
  !f5
  !pan,10
  !instr,!instr26
  db 16,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  !pan,9
  !instr,!instr28
  db 7,$75
  !f5
  db 16,$47
  !f5
  !pan,10
  !instr,!instr26
  db 8,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 8,$77
  !c5
  !pan,9
  !instr,!instr28
  db 9
  !f5
  db 7,$74
  !f5
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  db 7,$76
  !c5
  !pan,10
  !instr,!instr26
  db 9,$7B
  !b2
  !pan,11
  !instr,!instr25
  db 7,$77
  !c5
  !pan,9
  !instr,!instr28
  db 9
  !f5
  !pan,11
  !instr,!instr25
  db 7,$76
  !c5
  !pan,10
  !instr,!instr26
  db 16,$7C
  !b2
  !pan,10
  !instr,!instr25
  db 9,$27
  !g5
  !pan,11
  db 7,$75
  !c5
  db 16,$47
  !c5
  !pan,10
  !instr,!instr26
  db 9,$7A
  !b2
  !pan,9
  !instr,!instr28
  db 8,$74
  !f5
  db 8,$77
  !f5
  db 7,$74
  !f5
  !instr,!instr26
  !pan,10
  db 16,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  !pan,9
  !instr,!instr28
  db 7,$75
  !f5
  db 16,$47
  !f5
  !pan,10
  !instr,!instr26
  db 16,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 9,$77
  !c5
  !pan,9
  !instr,!instr28
  db 7,$75
  !f5
  db 16,$47
  !f5
  !pan,10
  !instr,!instr26
  db 8,$7A
  !b2
  !pan,11
  !instr,!instr25
  db 8,$77
  !c5
  !pan,9
  !instr,!instr28
  db 9
  !f5
  db 7,$74
  !f5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
