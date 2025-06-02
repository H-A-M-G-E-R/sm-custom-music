asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr05 = $17
!instr09 = $18
!instr0B = $19
!instr13 = $1A
!instr16 = $1B
!instr18 = $1C
!instr19 = $1D
!instr1B = $1E
!instr1C = $1F
!instr1D = $20
!instr22 = $21
!instr23 = $22
!instr2D = $23
!instr2E = $24
!instr31 = $25
!instr32 = $26

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr05,$AF,$B2,$B8,$0E,$F0
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr13,$FF,$E0,$B8,$03,$90
  db !instr16,$85,$EB,$B8,$03,$C0
  db !instr18,$82,$EE,$B8,$03,$C0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$8B,$E0,$B8,$03,$C0
  db !instr1C,$AF,$A1,$B8,$03,$C0
  db !instr1D,$BF,$D3,$B8,$03,$C0
  db !instr22,$FF,$E0,$B8,$03,$00
  db !instr23,$FD,$E0,$B8,$04,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2E,$FF,$E0,$B8,$07,$A0
  db !instr31,$FF,$E0,$B8,$07,$A0
  db !instr32,$FB,$E0,$B8,$03,$D0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+1098
  dw Sample05,Sample05+27
  dw Sample08_09,Sample08_09+90
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample11_12_13,Sample11_12_13+27
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample1A_1B_1C_1D_1E,Sample1A_1B_1C_1D_1E+27
  dw Sample22,Sample22+315
  dw Sample23,Sample23+396
  dw Sample2D,Sample2D+1161
  dw Sample2E,Sample2E+2151
  dw Sample31,Sample31+3105
  dw Sample32,Sample32+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample05: incbin "Sample_9ccba75b50dfc93f651c55340dfd6231.brr"
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample11_12_13: incbin "Sample_6c7fe9ffa3b0e176fc82c19308fbb5a4.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1A_1B_1C_1D_1E: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample22: incbin "Sample_850ee0b5e770563f2b4b6b0da375d973.brr"
  Sample23: incbin "Sample_f3b676459b603a3c7c61c1a65c20ac78.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2E: incbin "Sample_151158b41fe2bc516885b4bce6032a25.brr"
  Sample31: incbin "Sample_41817dffd340147cdd072666755faaa0.brr"
  Sample32: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker3A34

Tracker3A34:
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
  dw .pattern9
  dw .pattern10
  dw .pattern11
  dw .pattern12
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, 0, 0
.pattern5: dw .pattern5_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, .pattern5_5, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, .pattern6_5, 0, 0
.pattern7: dw .pattern7_0, .pattern7_1, .pattern7_2, .pattern7_3, .pattern7_4, .pattern7_5, 0, 0
.pattern8: dw .pattern8_0, .pattern8_1, .pattern8_2, .pattern8_3, .pattern8_4, .pattern8_5, 0, 0
.pattern9: dw .pattern9_0, .pattern9_1, .pattern9_2, .pattern9_3, .pattern9_4, .pattern9_5, 0, 0
.pattern10: dw .pattern10_0, .pattern10_1, .pattern10_2, .pattern10_3, .pattern10_4, .pattern10_5, 0, 0
.pattern11: dw .pattern11_0, .pattern11_1, .pattern11_2, .pattern11_3, .pattern11_4, .pattern11_5, .pattern11_6, .pattern11_7
.pattern12: dw .pattern12_0, .pattern12_1, .pattern12_2, .pattern12_3, 0, .pattern12_5, .pattern12_6, .pattern12_7

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr2D
  !musicTranspose,1
  !musicVolume,255
  !tempo,49
  !echo,%00011111,45,45
  !echoParameters,5,186,0
  !instr,!instr09
  !transpose,12
  !pan,10
  !volume,130
  db 65,$76
  !g6
  !g6
  db 66
  !g6
  db 67
  !a6
  db 68
  !c7
  db 69
  !g6
  db 70
  !e6
  !g6
  !c7
  db 71
  !g6
  db 72
  !a6
  db 73
  !c7
  db 74
  !d7
  !c7
  !d7
  !c7
  db 77
  !as6
  db 80
  !gs6
  db 64
  !g6
  !tie
  db 50
  !tie
  db 64
  !tie
  !tie
  !transpose,0
  !pan,10
  !volume,80
  !dynamicVolume,190,240
  !instr,!instr19
  !subtranspose,60
  db 100
  !cs4
  !tie
  !volume,255
  db 9
  %percNote(!instr31-!instr2D)
  db 27
  %percNote(!instr31-!instr2D)
  !end

.pattern0_1
  db 3
  !rest
  !transpose,12
  !instr,!instr09
  !pan,11
  !volume,130
  db 65,$76
  !e6
  !tie
  db 66
  !tie
  db 67
  !e6
  db 68
  !tie
  db 69
  !tie
  db 70
  !c6
  db 70,$73
  !e6
  !tie
  db 71,$76
  !e6
  db 72
  !tie
  db 73
  !g6
  db 74
  !a6
  !tie
  !tie
  !gs6
  db 77
  !tie
  db 80
  !tie
  db 64
  !d6
  db 61
  !tie
  db 50
  !tie
  db 64
  !tie
  !tie
  !transpose,0
  !pan,7
  !volume,80
  !dynamicVolume,190,180
  !instr,!instr1B
  !subtranspose,58
  db 100
  !b4
  !tie
  db 36
  !rest

.pattern0_2
  !instr,!instr32
  !pan,12
  !tremolo,0,35,100
  !volume,40
  !dynamicVolume,255,120
  db 65,$76
  !c5
  !tie
  db 66
  !tie
  db 67
  !tie
  db 68
  !tie
  db 69
  !tie
  db 70
  !d5
  !tie
  !tie
  db 71
  !c5
  db 72
  !tie
  db 73
  !tie
  db 74
  !c5
  !tie
  !tie
  !d5
  db 77
  !tie
  db 80
  !tie
  db 64
  !b4
  !tie
  db 50
  !tie
  db 64
  !tie
  !dynamicVolume,64,70
  !tie
  !pan,13
  !dynamicVolume,190,180
  !endTremolo
  !instr,!instr1B
  !subtranspose,58
  db 100
  !f5
  !tie
  !slideOut,2,34,232
  !subtranspose,0
  !instr,!instr13
  !pan,20
  db 36,$78
  !c6

.pattern0_3
  !instr,!instr32
  !pan,8
  !tremolo,0,35,100
  !volume,40
  !dynamicVolume,255,120
  db 65,$76
  !e5
  !tie
  db 66
  !tie
  db 67
  !tie
  db 68
  !tie
  db 69
  !tie
  db 70
  !e5
  !tie
  !tie
  db 71
  !tie
  db 72
  !tie
  db 73
  !tie
  db 74
  !f5
  !tie
  !tie
  !f5
  db 77
  !tie
  db 80
  !tie
  db 64
  !d5
  !tie
  db 50
  !tie
  db 64
  !tie
  !dynamicVolume,64,70
  !tie
  !pan,11
  !dynamicVolume,190,180
  !endTremolo
  !instr,!instr1B
  !subtranspose,58
  db 100
  !gs5
  !tie
  !slideOut,2,34,232
  !subtranspose,0
  !instr,!instr13
  !pan,0
  db 36,$78
  !d6

.pattern0_4
  !instr,!instr32
  !pan,10
  !tremolo,0,35,120
  !volume,40
  !dynamicVolume,255,100
  db 65,$76
  !g5
  !tie
  db 66
  !tie
  db 67
  !tie
  db 68
  !tie
  db 69
  !tie
  db 70
  !g5
  !tie
  !tie
  db 71
  !tie
  db 72
  !tie
  db 73
  !tie
  db 74
  !a5
  !tie
  !tie
  !gs5
  db 77
  !tie
  db 80
  !tie
  db 64
  !f5
  !tie
  db 50
  !tie
  db 64
  !tie
  !dynamicVolume,64,70
  !tie
  !pan,9
  !dynamicVolume,200,155
  !endTremolo
  !instr,!instr1B
  !subtranspose,58
  db 100
  !cs6
  !tie
  !subtranspose,0
  !instr,!instr13
  !slideOut,2,34,220
  db 36
  !g7

.pattern1_0
  !transpose,0
  !subtranspose,0
  !echo,%11111100,45,45
  !echoParameters,5,186,0
  !pan,12
  !volume,255
  !loop : dw .sub4CA2 : db 2
  !end

.pattern1_1
  !transpose,0
  !subtranspose,0
  !instr,!instr05
  !volume,255
  !loop : dw .sub4CD3 : db 2

.pattern1_2
  !endSlide
  !instr,!instr0B
  !volume,174
  !pan,12
  !loop : dw .sub512F : db 2

.pattern1_3
  !endSlide
  !instr,!instr0B
  !volume,174
  !pan,8
  !loop : dw .sub4DA5 : db 2

.pattern1_4
  !endSlide
  db 72
  !rest
  !rest
  !rest
  !rest

.pattern1_5
  !volume,255
  !loop : dw .sub4F7F : db 2

.pattern2_0
  !loop : dw .sub4CA2 : db 8
  !end

.pattern2_1
  !loop : dw .sub4CD3 : db 2
  !loop : dw .sub4CFC : db 1
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !cs3

.pattern2_2
  !subtranspose,0
  !instr,!instr0B
  !volume,179
  !loop : dw .sub4DA5 : db 2
  !loop : dw .sub4DCE : db 1
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5

.pattern2_3
  !subtranspose,0
  !instr,!instr0B
  !volume,179
  !loop : dw .sub4E6F : db 2
  !loop : dw .sub4E98 : db 1
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !gs5
  db 9,$45
  !b5
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !gs5
  db 9,$45
  !b5
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !gs5
  db 9,$45
  !b5
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !gs5
  db 9,$45
  !b5

.pattern2_4
  !endVibrato
  !pan,10
  !instr,!instr1C
  !volume,255
  !subtranspose,58
  !loop : dw .sub4F61 : db 1
  !ds6
  !as5
  db 72,$36
  !ds6
  db 72,$76
  !b5
  db 36,$56
  !gs5
  !b5
  db 27
  !as5
  db 9,$66
  !gs5
  db 27,$56
  !fs5
  db 9,$66
  !gs5
  db 36,$56
  !as5
  !fs5
  db 72,$76
  !gs5
  db 36,$56
  !as5
  !b5
  db 54,$76
  !as5
  db 9
  !b5
  !as5
  db 36,$75
  !gs5
  !instr,!instr23
  !volume,104
  !dynamicVolume,18,192
  !vibrato,20,15,30
  !subtranspose,0
  !transpose,12
  db 27,$59
  !f5
  db 9,$67
  !ds5

.pattern2_5
  !loop : dw .sub4F7F : db 8

.pattern3_0
  !loop : dw .sub4CA2 : db 8
  !end

.pattern3_1
  !loop : dw .sub4CD3 : db 2
  !loop : dw .sub4CFC : db 1
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !cs3
  db 9,$58
  !cs3
  db 9,$56
  !cs4
  !gs3
  db 9,$5A
  !cs3
  db 9,$58
  !cs3
  db 9,$56
  !cs4
  !gs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3

.pattern3_2
  !loop : dw .sub4DA5 : db 2
  !loop : dw .sub4DCE : db 1
  !loop : dw .sub4FA2 : db 1

.pattern3_3
  !loop : dw .sub4E6F : db 2
  !loop : dw .sub4E98 : db 1
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5

.pattern3_4
  !loop : dw .sub4F61 : db 1
  db 36,$54
  !ds6
  db 36,$56
  !as5
  db 72,$34
  !ds6
  db 72,$76
  !b5
  db 36,$56
  !gs5
  !b5
  !transpose,0
  db 27,$57
  !as6
  db 9,$66
  !gs6
  db 27,$58
  !fs6
  db 9,$66
  !gs6
  db 27,$57
  !as6
  db 9,$63
  !cs7
  db 36,$47
  !fs6
  db 36,$57
  !gs6
  db 27,$56
  !as6
  db 9
  !b6
  db 27
  !as6
  db 9
  !gs6
  db 27
  !cs6
  db 9,$55
  !gs6
  db 36,$36
  !fs6
  db 24,$66
  !cs6
  db 6,$68
  !ds6
  db 6,$67
  !f6
  db 72,$16
  !fs6

.pattern3_5
  !loop : dw .sub4F7F : db 7
  !instr,!instr2E
  db 18,$76
  !d4
  db 9,$73
  !d4
  db 9,$72
  !d4
  db 18,$26
  !g4
  db 9,$23
  !d4
  db 9,$72
  !d4
  db 36,$74
  %percNote(!instr31-!instr2D)
  !volume,239
  db 9
  %percNote(!instr31-!instr2D)
  db 19,$73
  %percNote(!instr31-!instr2D)
  !volume,255
  db 8,$72
  %percNote(!instr31-!instr2D)

.pattern4_0
  !loop : dw .sub4FF3 : db 7
  !end

.pattern4_1
  !loop : dw .sub5024 : db 1
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !as2
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  !as2
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$59
  !fs2
  db 9,$56
  !fs2
  db 9,$59
  !fs3
  db 9,$56
  !cs3
  db 9,$59
  !fs2
  db 9,$56
  !fs2
  db 9,$59
  !fs3
  db 9,$56
  !cs3
  db 9,$59
  !fs2
  db 9,$56
  !fs2
  db 9,$59
  !fs3
  db 9,$56
  !cs3
  db 9,$59
  !fs2
  db 9,$56
  !fs2
  db 9,$59
  !fs3
  db 9,$56
  !cs3
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2

.pattern4_2
  !instr,!instr1D
  !volume,220
  !subtranspose,58
  !pan,7
  !dynamicPan,144,13
  db 9,$46
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !dynamicPan,144,7
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !dynamicPan,144,13
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !dynamicPan,144,7
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  db 9,$55
  !e5
  !g5
  db 9,$64
  !as5
  db 9,$65
  !g5
  !dynamicPan,144,13
  db 9,$46
  !b4
  !ds5
  !fs5
  !ds5
  !b4
  !ds5
  !fs5
  !ds5
  !b4
  !ds5
  !gs5
  !ds5
  !b4
  !ds5
  !gs5
  !ds5
  !dynamicPan,144,7
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5
  !dynamicPan,144,13
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5

.pattern4_3
  !pan,11
  !instr,!instr19
  !volume,93
  !dynamicVolume,50,174
  !subtranspose,60
  !vibrato,20,10,30
  db 72,$75
  !ds7
  db 36,$76
  !cs7
  !b6
  db 27
  !as6
  db 9
  !f6
  db 27
  !f6
  db 9
  !f6
  db 72
  !as6
  !volume,93
  !dynamicVolume,50,174
  db 72,$75
  !ds7
  db 36,$76
  !cs7
  !b6
  db 27
  !as6
  db 9
  !c7
  db 27
  !cs7
  db 9
  !c7
  db 36
  !as6
  !slideIn,0,13,1
  !e6
  !endSlide
  db 72
  !ds6
  db 36
  !fs6
  !b6
  db 27
  !as6
  db 9
  !fs6
  db 27
  !cs6
  db 9
  !fs6
  db 36
  !as6
  !fs6
  !slideIn,0,25,1
  db 72
  !fs6
  !endSlide
  db 36
  !cs6
  !cs6

.pattern4_4
  !pan,9
  !instr,!instr19
  !volume,93
  !dynamicVolume,50,174
  !subtranspose,60
  !vibrato,20,10,30
  db 72,$75
  !fs7
  db 36,$76
  !f7
  !ds7
  db 27
  !cs7
  db 9
  !as6
  db 27
  !gs6
  db 9
  !as6
  db 72
  !cs7
  !volume,93
  !dynamicVolume,50,174
  db 72,$75
  !fs7
  db 36,$76
  !f7
  !ds7
  db 27
  !cs7
  db 9
  !ds7
  db 27
  !f7
  db 9
  !ds7
  db 36
  !cs7
  !slideIn,0,13,1
  db 36,$77
  !as6
  !endSlide
  db 72,$76
  !gs6
  db 36
  !b6
  !ds7
  db 27
  !cs7
  db 9
  !as6
  db 27
  !fs6
  db 9
  !as6
  db 36
  !cs7
  !as6
  !slideIn,0,25,1
  db 72
  !as6
  !endSlide
  db 36
  !fs6
  !gs6

.pattern4_5
  !loop : dw .sub4F7F : db 7

.pattern5_0
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  !end

.pattern5_1
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !cs3
  db 9,$58
  !cs3
  db 9,$56
  !cs4
  !gs3
  db 9,$5A
  !cs3
  db 9,$58
  !cs3
  db 9,$56
  !cs4
  !gs3

.pattern5_2
  !loop : dw .sub5158 : db 1

.pattern5_3
  db 54,$76
  !fs6
  db 9
  !gs6
  !fs6
  db 36
  !f6
  !gs4

.pattern5_4
  db 54,$76
  !as6
  db 9
  !b6
  !as6
  db 36
  !gs6
  !pan,10
  !subtranspose,58
  !instr,!instr1C
  !volume,255
  db 27,$78
  !f5
  db 9
  !ds5

.pattern5_5
  !instr,!instr2E
  db 18,$76
  !d4
  db 9,$73
  !d4
  db 9,$72
  !d4
  db 18,$26
  !g4
  db 9,$23
  !d4
  db 9,$72
  !d4
  db 36,$74
  %percNote(!instr31-!instr2D)
  !volume,239
  db 9
  %percNote(!instr31-!instr2D)
  db 19,$73
  %percNote(!instr31-!instr2D)
  !volume,255
  db 8,$72
  %percNote(!instr31-!instr2D)

.pattern6_0
  !loop : dw .sub4CA2 : db 8
  !end

.pattern6_1
  !loop : dw .sub4CD3 : db 2
  !loop : dw .sub4CFC : db 1
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !cs3

.pattern6_2
  !subtranspose,0
  !instr,!instr0B
  !volume,179
  !loop : dw .sub4DA5 : db 2
  !loop : dw .sub4DCE : db 1
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5

.pattern6_3
  !subtranspose,0
  !instr,!instr0B
  !volume,179
  !loop : dw .sub4E6F : db 2
  !loop : dw .sub4E98 : db 1
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !gs5
  db 9,$45
  !b5
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !gs5
  db 9,$45
  !b5
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !gs5
  db 9,$45
  !b5
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !gs5
  db 9,$45
  !b5

.pattern6_4
  !endVibrato
  !pan,10
  !instr,!instr1C
  !volume,255
  !subtranspose,58
  !loop : dw .sub4F61 : db 1
  !ds6
  !as5
  db 72,$36
  !ds6
  db 72,$76
  !b5
  db 36,$56
  !gs5
  !b5
  db 27
  !as5
  db 9,$66
  !gs5
  db 27,$56
  !fs5
  db 9,$66
  !gs5
  db 36,$56
  !as5
  !fs5
  db 72,$76
  !gs5
  db 36,$56
  !as5
  !b5
  db 54,$76
  !as5
  db 9
  !b5
  !as5
  db 36,$75
  !gs5
  !instr,!instr23
  !volume,104
  !dynamicVolume,18,192
  !vibrato,20,15,30
  !subtranspose,0
  !transpose,12
  db 27,$59
  !f5
  db 9,$67
  !ds5

.pattern6_5
  !loop : dw .sub4F7F : db 8

.pattern7_0
  !loop : dw .sub4CA2 : db 8
  !end

.pattern7_1
  !loop : dw .sub4CD3 : db 2
  !loop : dw .sub4CFC : db 1
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !cs3
  db 9,$58
  !cs3
  db 9,$56
  !cs4
  !gs3
  db 9,$5A
  !cs3
  db 9,$58
  !cs3
  db 9,$56
  !cs4
  !gs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3

.pattern7_2
  !loop : dw .sub4DA5 : db 2
  !loop : dw .sub4DCE : db 1
  !loop : dw .sub4FA2 : db 1

.pattern7_3
  !loop : dw .sub4E6F : db 2
  !loop : dw .sub4E98 : db 1
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5

.pattern7_4
  !loop : dw .sub4F61 : db 1
  db 36,$54
  !ds6
  db 36,$56
  !as5
  db 72,$34
  !ds6
  db 72,$76
  !b5
  db 36,$56
  !gs5
  !b5
  !transpose,0
  db 27,$57
  !as6
  db 9,$66
  !gs6
  db 27,$58
  !fs6
  db 9,$66
  !gs6
  db 27,$57
  !as6
  db 9,$63
  !cs7
  db 36,$47
  !fs6
  db 36,$57
  !gs6
  db 27,$56
  !as6
  db 9
  !b6
  db 27
  !as6
  db 9
  !gs6
  db 27
  !cs6
  db 9,$55
  !gs6
  db 36,$36
  !fs6
  db 24,$66
  !cs6
  db 6,$68
  !ds6
  db 6,$67
  !f6
  db 72,$16
  !fs6

.pattern7_5
  !loop : dw .sub4F7F : db 7
  !instr,!instr2E
  db 18,$76
  !d4
  db 9,$73
  !d4
  db 9,$72
  !d4
  db 18,$26
  !g4
  db 9,$23
  !d4
  db 9,$72
  !d4
  db 36,$74
  %percNote(!instr31-!instr2D)
  !volume,239
  db 9
  %percNote(!instr31-!instr2D)
  db 19,$73
  %percNote(!instr31-!instr2D)
  !volume,255
  db 8,$72
  %percNote(!instr31-!instr2D)

.pattern8_0
  !loop : dw .sub4FF3 : db 7
  !end

.pattern8_1
  !loop : dw .sub5024 : db 1
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !as2
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  !as2
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$59
  !fs2
  db 9,$56
  !fs2
  db 9,$59
  !fs3
  db 9,$56
  !cs3
  db 9,$59
  !fs2
  db 9,$56
  !fs2
  db 9,$59
  !fs3
  db 9,$56
  !cs3
  db 9,$59
  !fs2
  db 9,$56
  !fs2
  db 9,$59
  !fs3
  db 9,$56
  !cs3
  db 9,$59
  !fs2
  db 9,$56
  !fs2
  db 9,$59
  !fs3
  db 9,$56
  !cs3
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2

.pattern8_2
  !instr,!instr1D
  !volume,220
  !subtranspose,58
  !pan,7
  !dynamicPan,144,13
  db 9,$46
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !dynamicPan,144,7
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !dynamicPan,144,13
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !dynamicPan,144,7
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  db 9,$55
  !e5
  !g5
  db 9,$64
  !as5
  db 9,$65
  !g5
  !dynamicPan,144,13
  db 9,$46
  !b4
  !ds5
  !fs5
  !ds5
  !b4
  !ds5
  !fs5
  !ds5
  !b4
  !ds5
  !gs5
  !ds5
  !b4
  !ds5
  !gs5
  !ds5
  !dynamicPan,144,7
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5
  !dynamicPan,144,13
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5
  !cs5
  !fs5
  !as5
  !fs5

.pattern8_3
  !pan,11
  !instr,!instr19
  !volume,93
  !dynamicVolume,50,174
  !subtranspose,60
  !vibrato,20,10,30
  db 72,$75
  !ds7
  db 36,$76
  !cs7
  !b6
  db 27
  !as6
  db 9
  !f6
  db 27
  !f6
  db 9
  !f6
  db 72
  !as6
  !volume,93
  !dynamicVolume,50,174
  db 72,$75
  !ds7
  db 36,$76
  !cs7
  !b6
  db 27
  !as6
  db 9
  !c7
  db 27
  !cs7
  db 9
  !c7
  db 36
  !as6
  !slideIn,0,13,1
  !e6
  !endSlide
  db 72
  !ds6
  db 36
  !fs6
  !b6
  db 27
  !as6
  db 9
  !fs6
  db 27
  !cs6
  db 9
  !fs6
  db 36
  !as6
  !fs6
  !slideIn,0,25,1
  db 72
  !fs6
  !endSlide
  db 36
  !cs6
  !cs6

.pattern8_4
  !pan,9
  !instr,!instr19
  !volume,93
  !dynamicVolume,50,174
  !subtranspose,60
  !vibrato,20,10,30
  db 72,$75
  !fs7
  db 36,$76
  !f7
  !ds7
  db 27
  !cs7
  db 9
  !as6
  db 27
  !gs6
  db 9
  !as6
  db 72
  !cs7
  !volume,93
  !dynamicVolume,50,174
  db 72,$75
  !fs7
  db 36,$76
  !f7
  !ds7
  db 27
  !cs7
  db 9
  !ds7
  db 27
  !f7
  db 9
  !ds7
  db 36
  !cs7
  !slideIn,0,13,1
  db 36,$77
  !as6
  !endSlide
  db 72,$76
  !gs6
  db 36
  !b6
  !ds7
  db 27
  !cs7
  db 9
  !as6
  db 27
  !fs6
  db 9
  !as6
  db 36
  !cs7
  !as6
  !slideIn,0,25,1
  db 72
  !as6
  !endSlide
  db 36
  !fs6
  !gs6

.pattern8_5
  !loop : dw .sub4F7F : db 7

.pattern9_0
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  !end

.pattern9_1
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !cs3
  db 9,$58
  !cs3
  db 9,$56
  !cs4
  !gs3
  db 9,$5A
  !cs3
  db 9,$58
  !cs3
  db 9,$56
  !cs4
  !gs3

.pattern9_2
  !loop : dw .sub5158 : db 1

.pattern9_3
  db 54,$76
  !fs6
  db 9
  !gs6
  !fs6
  db 36
  !f6
  !gs4

.pattern9_4
  db 54,$76
  !as6
  db 9
  !b6
  !as6
  db 36
  !gs6
  !subtranspose,0
  !instr,!instr32
  !volume,174
  !pan,12
  db 7,$78
  !as6
  !pan,8
  !b6
  !pan,12
  !cs7
  !pan,9
  !ds7
  !pan,11
  db 8
  !f7

.pattern9_5
  !instr,!instr2E
  db 18,$76
  !d4
  db 9,$73
  !d4
  db 9,$72
  !d4
  db 18,$26
  !g4
  db 9,$23
  !d4
  db 9,$72
  !d4
  db 36,$74
  %percNote(!instr31-!instr2D)
  !volume,239
  db 9
  %percNote(!instr31-!instr2D)
  db 19,$73
  %percNote(!instr31-!instr2D)
  !volume,255
  db 8,$72
  %percNote(!instr31-!instr2D)

.pattern10_0
  !loop : dw .sub4CA2 : db 12
  !end

.pattern10_1
  !loop : dw .sub5085 : db 1
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2
  db 9,$5D
  !ds2
  db 9,$56
  !ds2
  db 9,$59
  !ds3
  db 9,$56
  !as2
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$56
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$5A
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !c3
  db 9,$56
  !c3
  db 9,$57
  !c4
  db 9,$56
  !fs3
  db 9,$59
  !c3
  db 9,$56
  !c3
  db 9,$57
  !c4
  db 9,$56
  !fs3
  !loop : dw .sub510E : db 2
  !loop : dw .sub5085 : db 1
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3

.pattern10_2
  !instr,!instr1D
  !subtranspose,58
  !volume,206
  !pan,8
  db 9,$44
  !ds5
  db 9,$46
  !fs4
  !b4
  !fs4
  db 9,$44
  !ds5
  db 9,$46
  !fs4
  !b4
  !fs4
  db 9,$44
  !ds5
  db 9,$46
  !fs4
  !b4
  !fs4
  db 9,$44
  !ds5
  db 9,$46
  !fs4
  !b4
  !fs4
  db 9,$44
  !fs5
  db 9,$46
  !gs4
  !b4
  db 9,$44
  !gs4
  db 9,$46
  !fs5
  !gs4
  db 9,$44
  !b4
  db 9,$46
  !gs4
  !fs5
  db 9,$44
  !gs4
  db 9,$46
  !b4
  !gs4
  db 9,$44
  !fs5
  db 9,$46
  !gs4
  !b4
  !gs4
  db 9,$44
  !fs5
  db 9,$46
  !fs4
  !as4
  !fs4
  db 9,$44
  !fs5
  db 9,$46
  !fs4
  !as4
  !fs4
  db 9,$44
  !fs5
  db 9,$46
  !fs4
  !as4
  !fs4
  db 9,$44
  !fs5
  db 9,$46
  !fs4
  !as4
  !fs4
  db 9,$44
  !fs5
  db 9,$46
  !as4
  !cs5
  !as4
  db 9,$44
  !fs5
  db 9,$46
  !as4
  !cs5
  !as4
  db 9,$44
  !fs5
  db 9,$46
  !as4
  !cs5
  !as4
  db 9,$44
  !fs5
  db 9,$46
  !as4
  !cs5
  !as4
  db 9,$44
  !fs5
  db 9,$46
  !fs4
  !gs4
  !fs4
  db 9,$44
  !ds5
  db 9,$46
  !fs4
  !gs4
  !fs4
  db 9,$44
  !gs5
  db 9,$46
  !f4
  !gs4
  !f4
  db 9,$44
  !gs5
  db 9,$46
  !f4
  !gs4
  !f4
  db 9,$44
  !b5
  db 9,$46
  !b4
  !ds5
  !b4
  db 9,$44
  !b5
  db 9,$46
  !b4
  !ds5
  !b4
  db 9,$44
  !c6
  db 9,$46
  !c5
  !ds5
  !c5
  db 9,$44
  !c6
  db 9,$46
  !c5
  !ds5
  !c5
  db 9,$44
  !b5
  db 9,$46
  !gs4
  !b4
  !gs4
  db 9,$44
  !b5
  db 9,$46
  !gs4
  !b4
  !gs4
  db 9,$44
  !b5
  db 9,$46
  !gs4
  !b4
  !gs4
  db 9,$44
  !b5
  db 9,$46
  !gs4
  !b4
  !gs4
  db 9,$44
  !b5
  db 9,$46
  !gs4
  !b4
  !gs4
  db 9,$45
  !gs5
  db 9,$46
  !gs4
  !b4
  !gs4
  db 9,$45
  !f5
  db 9,$46
  !f4
  !gs4
  !f4
  db 9,$45
  !f5
  db 9,$46
  !f4
  !gs4
  !b4
  !volume,186
  !dynamicVolume,144,215
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  !dynamicVolume,144,255
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  !subtranspose,0
  !instr,!instr0B
  !volume,179
  !pan,12
  !loop : dw .sub512F : db 2

.pattern10_3
  !instr,!instr1D
  !subtranspose,58
  !volume,206
  !pan,12
  db 9,$44
  !b5
  db 9,$46
  !b4
  !ds5
  !b4
  db 9,$44
  !b5
  db 9,$46
  !b4
  !ds5
  !b4
  db 9,$44
  !b5
  db 9,$46
  !b4
  !ds5
  !b4
  db 9,$44
  !b5
  db 9,$46
  !b4
  !ds5
  !b4
  db 9,$44
  !b5
  db 9,$46
  !d5
  !fs5
  !d5
  db 9,$44
  !b5
  db 9,$46
  !d5
  !fs5
  !d5
  db 9,$44
  !b5
  db 9,$46
  !d5
  !fs5
  !d5
  db 9,$44
  !b5
  db 9,$46
  !d5
  !fs5
  !d5
  db 9,$44
  !as5
  db 9,$46
  !as4
  !cs5
  !as4
  db 9,$44
  !as5
  db 9,$46
  !as4
  !cs5
  !as4
  db 9,$44
  !as5
  db 9,$46
  !as4
  !cs5
  !as4
  db 9,$44
  !as5
  db 9,$46
  !as4
  !cs5
  !as4
  db 9,$44
  !as5
  db 9,$46
  !ds5
  !fs5
  !ds5
  db 9,$44
  !as5
  db 9,$46
  !ds5
  !fs5
  !ds5
  db 9,$44
  !as5
  db 9,$46
  !ds5
  !fs5
  !ds5
  db 9,$44
  !as5
  db 9,$46
  !ds5
  !fs5
  !ds5
  db 9,$44
  !b5
  db 9,$46
  !b4
  !ds5
  !b4
  db 9,$44
  !b5
  db 9,$46
  !b4
  !ds5
  !b4
  db 9,$44
  !cs6
  db 9,$46
  !as4
  !cs5
  !as4
  db 9,$44
  !cs6
  db 9,$46
  !as4
  !cs5
  !as4
  db 9,$44
  !ds6
  db 9,$46
  !ds5
  !fs5
  !ds5
  db 9,$44
  !ds6
  db 9,$46
  !ds5
  !fs5
  !ds5
  db 9,$44
  !ds6
  db 9,$46
  !fs5
  !a5
  !fs5
  db 9,$44
  !ds6
  db 9,$46
  !fs5
  !a5
  !fs5
  db 9,$43
  !f6
  db 9,$46
  !cs5
  !f5
  !cs5
  db 9,$43
  !f6
  db 9,$46
  !cs5
  !f5
  !cs5
  db 9,$43
  !f6
  db 9,$46
  !cs5
  !f5
  !cs5
  db 9,$43
  !f6
  db 9,$46
  !cs5
  !f5
  !cs5
  db 9,$43
  !f6
  db 9,$46
  !cs5
  !f5
  !cs5
  db 9,$45
  !cs6
  db 9,$46
  !cs5
  !f5
  !cs5
  db 9,$45
  !b5
  db 9,$46
  !gs4
  !cs5
  !gs4
  db 9,$45
  !gs5
  db 9,$46
  !gs4
  !cs5
  !f5
  !volume,186
  !dynamicVolume,144,215
  !ds5
  !fs4
  !ds5
  !fs5
  !ds5
  !fs4
  !ds5
  !fs5
  !ds5
  !fs4
  !ds5
  !fs5
  !ds5
  !fs4
  !ds5
  !fs5
  !dynamicVolume,144,255
  !d5
  !gs4
  !d5
  !fs5
  !d5
  !gs4
  !d5
  !fs5
  !d5
  !gs4
  !d5
  !fs5
  !d5
  !gs4
  !d5
  !fs5
  !subtranspose,0
  !instr,!instr0B
  !volume,179
  !pan,8
  !loop : dw .sub4DA5 : db 2

.pattern10_4
  !vibrato,18,14,30
  !pan,10
  !subtranspose,0
  !instr,!instr32
  !volume,168
  !slideIn,0,4,1
  db 72,$76
  !fs7
  db 36
  !f7
  !endSlide
  !fs7
  !slideIn,0,10,1
  db 72,$75
  !gs7
  !endSlide
  db 36,$76
  !fs7
  !slideIn,0,8,1
  !d7
  !endSlide
  db 72
  !cs7
  db 36
  !as6
  !cs7
  !ds7
  !as6
  db 72,$36
  !ds7
  !slideIn,0,10,1
  db 36,$76
  !b6
  !endSlide
  !as6
  !gs6
  !cs7
  !slideIn,0,10,1
  !ds7
  !endSlide
  !as6
  !ds7
  !fs7
  !slideIn,10,37,1
  db 72,$74
  !gs7
  !tie
  !dynamicVolume,108,87
  db 108
  !tie
  !volume,163
  !endSlide
  db 36,$78
  !cs7
  !vibrato,30,10,100
  !tremolo,20,10,60
  !volume,119
  !dynamicVolume,144,152
  !slideIn,0,10,1
  db 72,$74
  !fs7
  !tie
  !dynamicVolume,144,217
  !tie
  db 67
  !tie
  db 5
  !rest
  !volume,157
  !dynamicVolume,144,128
  db 72,$73
  !fs7
  !endSlide
  !tie
  !dynamicVolume,144,93
  !tie
  !tie

.pattern10_5
  !loop : dw .sub4F7F : db 11
  !instr,!instr2E
  db 18,$76
  !d4
  db 9,$73
  !d4
  db 9,$72
  !d4
  db 18,$26
  !g4
  db 9,$23
  !d4
  db 9,$72
  !d4
  db 36,$74
  %percNote(!instr31-!instr2D)
  !volume,239
  db 9
  %percNote(!instr31-!instr2D)
  db 19,$73
  %percNote(!instr31-!instr2D)
  !volume,255
  db 8,$72
  %percNote(!instr31-!instr2D)

.pattern11_0
  !loop : dw .sub4FF3 : db 16
  !end

.pattern11_1
  !loop : dw .sub516E : db 1
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !as2
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  !as2
  !loop : dw .sub516E : db 1
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !as2
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  !as2
  !loop : dw .sub51FF : db 2
  !loop : dw .sub5230 : db 2
  !loop : dw .sub5261 : db 2
  db 9,$59
  !c3
  db 9,$56
  !c3
  !c4
  !g3
  db 9,$59
  !c3
  db 9,$56
  !c3
  !c4
  !g3
  db 9,$59
  !c3
  db 9,$56
  !c3
  !c4
  !g3
  db 9,$59
  !c3
  db 9,$56
  !c3
  !c4
  !g3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs3
  !cs3
  db 9,$5B
  !fs2
  !fs2
  db 9,$59
  !fs3
  !cs3
  db 9,$5B
  !fs2

.pattern11_2
  !instr,!instr1D
  !volume,201
  !subtranspose,58
  !pan,7
  db 9,$46
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !loop : dw .sub528A : db 2
  !loop : dw .sub529B : db 2
  !loop : dw .sub528A : db 2
  !loop : dw .sub52AC : db 2
  !loop : dw .sub52BD : db 2
  !loop : dw .sub52CE : db 2
  !e5
  !g5
  !b5
  !g5
  !e5
  !g5
  !b5
  !g5
  !e5
  !g5
  !b5
  !g5
  !e5
  !g5
  !b5
  !g5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  db 9,$48
  !as4
  !cs5
  !e5
  !as5
  !as4
  !cs5
  !e5
  !as5

.pattern11_3
  !instr,!instr1D
  !volume,190
  !subtranspose,58
  !pan,13
  db 9,$46
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !loop : dw .sub52DF : db 2
  !loop : dw .sub52F0 : db 2
  !loop : dw .sub52DF : db 2
  !loop : dw .sub5301 : db 2
  !loop : dw .sub529B : db 2
  !loop : dw .sub5312 : db 2
  !g5
  !b5
  !d6
  !b5
  !g5
  !b5
  !d6
  !b5
  !g5
  !b5
  !d6
  !b5
  !g5
  !b5
  !d6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  db 9,$48
  !e5
  !fs5
  !as5
  !cs6
  !e5
  !fs5
  !as5
  !cs6

.pattern11_4
  !volume,184
  !instr,!instr22
  !vibrato,36,11,180
  !tremolo,20,11,60
  db 8,$76
  !fs7
  !dynamicVolume,7,109
  db 7
  !tie
  !dynamicVolume,130,201
  db 57
  !tie
  db 72
  !tie
  !tie
  !slideIn,0,5,1
  db 18
  !f7
  !endSlide
  db 12
  !fs7
  db 13
  !gs7
  db 14
  !fs7
  db 14,$75
  !f7
  db 1
  !ds7
  db 13
  !tie
  db 111
  !cs7
  db 10,$76
  !cs7
  !ds7
  db 104
  !cs7
  db 4
  !rest
  db 14,$46
  !cs7
  db 11,$45
  !ds7
  !f7
  !volume,109
  !dynamicVolume,80,201
  db 123,$76
  !fs7
  db 7
  !f7
  !fs7
  !gs7
  db 36,$75
  !as7
  db 12
  !as7
  db 12,$55
  !as7
  !b7
  db 24,$26
  !as7
  db 24,$27
  !gs7
  !fs7
  db 8,$76
  !f7
  !fs7
  db 110
  !f7
  db 9
  !f7
  !ds7
  db 108
  !cs7
  !instr,!instr04
  !vibrato,8,12,30
  !endTremolo
  !volume,130
  !dynamicVolume,100,163
  db 36,$7B
  !cs6
  !loop : dw .sub5323 : db 1
  db 54
  !fs6
  db 9
  !fs6
  !g6
  db 54
  !fs6
  db 18
  !rest

.pattern11_5
  !loop : dw .sub4F7F : db 15
  !instr,!instr2E
  db 18,$76
  !d4
  db 9,$73
  !d4
  db 9,$72
  !d4
  db 18,$26
  !g4
  db 9,$23
  !d4
  db 9,$72
  !d4
  db 36,$74
  %percNote(!instr31-!instr2D)
  !instr,!instr2E
  !pan,8
  db 9,$77
  !c5
  !c5
  !pan,12
  db 18,$79
  !gs4

.pattern11_6
  db 36
  !rest
  !subtranspose,0
  !endVibrato
  !endTremolo
  !instr,!instr32
  !pan,0
  !volume,136
  db 27,$08
  !cs6
  db 9,$72
  !cs6
  db 27,$07
  !ds6
  db 9,$72
  !ds6
  db 27,$06
  !cs7
  db 9,$72
  !cs7
  db 27,$06
  !b7
  db 28,$02
  !b7
  !b7
  !b7
  db 33
  !b7
  db 36
  !rest
  db 27,$08
  !cs6
  db 9,$72
  !cs6
  db 27,$07
  !ds6
  db 9,$72
  !ds6
  db 27,$06
  !gs6
  db 9,$72
  !gs6
  db 27,$06
  !gs7
  db 28,$02
  !gs7
  !gs7
  !gs7
  db 33
  !gs7
  db 36
  !rest
  !subtranspose,0
  !endVibrato
  !endTremolo
  !instr,!instr32
  !pan,0
  !volume,136
  db 27,$08
  !cs6
  db 9,$72
  !cs6
  db 27,$07
  !ds6
  db 9,$72
  !ds6
  db 27,$06
  !cs7
  db 9,$72
  !cs7
  db 27,$06
  !fs7
  db 27,$02
  !fs7
  !fs7
  !fs7
  !fs7
  db 9
  !fs7
  db 36
  !rest
  db 27,$08
  !cs6
  db 9,$72
  !cs6
  db 27,$07
  !ds6
  db 9,$72
  !ds6
  db 27,$06
  !gs6
  db 9,$72
  !gs6
  db 27,$06
  !gs7
  db 27,$02
  !gs7
  !gs7
  db 27,$01
  !gs7
  !pan,20
  !subtranspose,15
  !instr,!instr04
  !vibrato,8,12,30
  !endTremolo
  !volume,71
  !dynamicVolume,100,109
  db 64,$7B
  !cs6
  !loop : dw .sub5323 : db 1
  db 54
  !fs6
  db 9
  !fs6
  !g6
  db 8
  !fs6
  !subtranspose,60
  !pan,12
  !instr,!instr19
  !volume,163
  db 27,$78
  !as5
  db 9,$79
  !cs6

.pattern11_7
  db 55
  !rest
  !subtranspose,5
  !endVibrato
  !endTremolo
  !instr,!instr32
  !pan,20
  !volume,130
  db 27,$08
  !cs6
  db 9,$72
  !cs6
  db 27,$07
  !ds6
  db 9,$72
  !ds6
  db 27,$06
  !cs7
  db 9,$72
  !cs7
  db 27,$06
  !b7
  db 28,$02
  !b7
  !b7
  !b7
  db 33,$01
  !b7
  db 36
  !rest
  db 27,$08
  !cs6
  db 9,$72
  !cs6
  db 27,$07
  !ds6
  db 9,$72
  !ds6
  db 27,$06
  !gs6
  db 9,$72
  !gs6
  db 27,$06
  !gs7
  db 28,$02
  !gs7
  !gs7
  !gs7
  db 33,$41
  !gs7
  db 36
  !rest
  !subtranspose,10
  !endVibrato
  !endTremolo
  !instr,!instr32
  !pan,20
  !volume,130
  db 27,$08
  !cs6
  db 9,$72
  !cs6
  db 27,$07
  !ds6
  db 9,$72
  !ds6
  db 27,$06
  !cs7
  db 9,$72
  !cs7
  db 27,$06
  !fs7
  db 27,$02
  !fs7
  !fs7
  !fs7
  !fs7
  db 9,$01
  !fs7
  db 36
  !rest
  db 27,$08
  !cs6
  db 9,$72
  !cs6
  db 27,$07
  !ds6
  db 9,$72
  !ds6
  db 27,$06
  !gs6
  db 9,$72
  !gs6
  db 27,$06
  !gs7
  db 27,$02
  !gs7
  !gs7
  db 8,$71
  !gs7
  !pan,0
  !subtranspose,30
  !instr,!instr04
  !vibrato,8,12,30
  !endTremolo
  !volume,71
  !dynamicVolume,100,109
  db 92,$7B
  !cs6
  !loop : dw .sub5323 : db 1
  db 52
  !fs6
  !subtranspose,60
  !instr,!instr19
  !volume,163
  !pan,8
  db 27,$78
  !fs6
  db 9,$79
  !gs6

.pattern12_0
  !loop : dw .sub4CA2 : db 15
  !end

.pattern12_1
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !e3
  db 9,$56
  !e3
  db 9,$58
  !e4
  db 9,$56
  !b3
  db 9,$59
  !e3
  db 9,$56
  !e3
  db 9,$58
  !e4
  db 9,$56
  !b3
  !loop : dw .sub5360 : db 3
  !loop : dw .sub53C1 : db 2
  !loop : dw .sub53F2 : db 2
  !loop : dw .sub5085 : db 1
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3

.pattern12_2
  db 9,$46
  !a5
  !fs5
  !d5
  !b4
  !fs5
  !d5
  !b4
  !d5
  !b5
  !gs5
  !e5
  !b4
  !gs5
  !e5
  !b4
  !e5
  !loop : dw .sub5413 : db 3
  !loop : dw .sub5434 : db 2
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !b4
  !f5
  !gs5
  !f5
  !b4
  !f5
  !gs5
  !f5
  !b4
  !f5
  !gs5
  !f5
  !b4
  !f5
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$46
  !fs5
  !b4
  !fs5
  db 9,$45
  !b5
  !instr,!instr0B
  !volume,174
  !pan,12
  !loop : dw .sub512F : db 2

.pattern12_3
  db 9,$46
  !cs6
  !a5
  !fs5
  !d5
  !a5
  !fs5
  !d5
  !fs5
  !d6
  !b5
  !gs5
  !e5
  !b5
  !gs5
  !e5
  !gs5
  !loop : dw .sub5445 : db 3
  !loop : dw .sub5466 : db 2
  !b5
  !gs5
  !f5
  !gs5
  !b5
  !gs5
  !f5
  !gs5
  !b5
  !gs5
  !f5
  !gs5
  !b5
  !gs5
  !f5
  !gs5
  !cs6
  !gs5
  !f5
  !gs5
  !cs6
  !gs5
  !f5
  !gs5
  !cs6
  !gs5
  !f5
  !gs5
  !cs6
  !gs5
  !f5
  !gs5
  !ds5
  !fs4
  !ds5
  !fs5
  !ds5
  !fs4
  !ds5
  !fs5
  !ds5
  !fs4
  !ds5
  !fs5
  !ds5
  !fs4
  !ds5
  !fs5
  !d5
  !gs4
  !d5
  !fs5
  !d5
  !gs4
  !d5
  !fs5
  !d5
  !gs4
  !d5
  !fs5
  !d5
  !gs4
  !d5
  !fs5
  !instr,!instr0B
  !volume,174
  !pan,8
  !loop : dw .sub4DA5 : db 2

.pattern12_5
  !pan,10
  !loop : dw .sub4F7F : db 14
  !instr,!instr2E
  db 18,$76
  !d4
  db 9,$73
  !d4
  db 9,$72
  !d4
  db 18,$26
  !g4
  db 9,$23
  !d4
  db 9,$72
  !d4
  db 36,$74
  %percNote(!instr31-!instr2D)
  !volume,239
  db 9
  %percNote(!instr31-!instr2D)
  db 19,$73
  %percNote(!instr31-!instr2D)
  !volume,255
  db 8,$72
  %percNote(!instr31-!instr2D)

.pattern12_6
  !loop : dw .sub5477 : db 1
  db 36,$76
  !fs6
  db 27
  !d6
  db 9,$78
  !fs6
  db 36,$76
  !gs6
  db 27
  !fs6
  db 9,$78
  !gs6
  db 72,$76
  !a6
  db 36,$43
  !cs7
  db 27,$76
  !d6
  db 9,$78
  !e6
  !loop : dw .sub5477 : db 1
  db 36,$76
  !fs6
  db 27
  !d6
  db 9,$78
  !fs6
  db 36,$75
  !gs6
  db 27,$74
  !fs6
  db 9,$73
  !gs6
  !instr,!instr18
  db 72,$79
  !ds6
  !tie
  db 108
  !tie
  !instr,!instr16
  db 36
  !gs5
  !instr,!instr18
  db 72
  !ds6
  !tie
  db 108
  !tie
  !instr,!instr16
  db 36
  !cs6
  !instr,!instr18
  db 72
  !ds6
  !tie
  !instr,!instr19
  !volume,109
  !dynamicVolume,40,157
  db 72,$76
  !d6
  !tie
  !instr,!instr19
  !volume,141
  !dynamicVolume,72,174
  !cs6
  !tie
  !dynamicVolume,144,98
  !tie
  !tie

.pattern12_7
  !loop : dw .sub5498 : db 1
  db 36,$76
  !a6
  db 27
  !gs6
  db 9,$78
  !a6
  db 36,$76
  !b6
  db 27
  !a6
  db 9,$78
  !b6
  db 72,$76
  !cs7
  db 36,$43
  !fs7
  db 27,$76
  !fs6
  db 9,$78
  !gs6
  !loop : dw .sub5498 : db 1
  db 36,$76
  !a6
  db 27
  !gs6
  db 9,$78
  !a6
  db 36,$75
  !b6
  db 27,$74
  !a6
  db 9,$73
  !b6
  !instr,!instr18
  db 72,$79
  !gs6
  !tie
  db 108
  !tie
  !instr,!instr16
  db 36
  !cs6
  !instr,!instr18
  db 72
  !gs6
  !tie
  db 108
  !tie
  !instr,!instr16
  !subtranspose,40
  db 36
  !cs6
  !subtranspose,60
  !instr,!instr19
  !volume,109
  !dynamicVolume,255,174
  db 72,$76
  !fs6
  !tie
  !tie
  !tie
  !tie
  !tie
  !dynamicVolume,144,98
  !tie
  !tie

.sub4CA2
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 9,$72
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  db 9,$71
  %percNote(!instr2D-!instr2D)
  db 9,$70
  %percNote(!instr2D-!instr2D)
  !end

.sub4CD3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  !end

.sub512F
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  !end

.sub4DA5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  !end

.sub4F7F
  !instr,!instr2E
  db 18,$76
  !d4
  db 9,$73
  !d4
  db 9,$72
  !d4
  db 18,$26
  !g4
  db 9,$23
  !d4
  db 9,$72
  !d4
  db 36,$74
  %percNote(!instr31-!instr2D)
  !instr,!instr2E
  db 18,$76
  !d4
  db 9,$73
  !d4
  db 9,$72
  !d4
  !end

.sub4CFC
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !ds3
  db 9,$56
  !ds3
  !ds4
  !as3
  db 9,$59
  !ds3
  db 9,$56
  !ds3
  !ds4
  !as3
  db 9,$59
  !ds3
  db 9,$56
  !ds3
  !ds4
  !as3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  !end

.sub4DCE
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5
  db 9,$47
  !cs5
  db 9,$46
  !gs4
  !f5
  db 9,$45
  !gs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  !end

.sub4E6F
  db 9,$47
  !fs5
  db 9,$46
  !cs5
  !as5
  db 9,$45
  !cs6
  db 9,$47
  !fs5
  db 9,$46
  !cs5
  !as5
  db 9,$45
  !cs6
  db 9,$47
  !fs5
  db 9,$46
  !cs5
  !as5
  db 9,$45
  !cs6
  db 9,$47
  !fs5
  db 9,$46
  !cs5
  !as5
  db 9,$45
  !cs6
  !end

.sub4E98
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !as5
  db 9,$45
  !cs6
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !as5
  db 9,$45
  !cs6
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !as5
  db 9,$45
  !cs6
  db 9,$47
  !f5
  db 9,$46
  !cs5
  !as5
  db 9,$45
  !cs6
  db 9,$47
  !ds5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !ds5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !ds5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !ds5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !ds5
  db 9,$46
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$47
  !ds5
  db 9,$46
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$47
  !ds5
  db 9,$46
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$47
  !ds5
  db 9,$46
  !b4
  !fs5
  db 9,$45
  !b5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !cs5
  db 9,$46
  !as4
  !fs5
  db 9,$45
  !as5
  db 9,$47
  !ds5
  db 9,$46
  !b4
  !gs5
  db 9,$45
  !b5
  db 9,$47
  !ds5
  db 9,$46
  !b4
  !gs5
  db 9,$45
  !b5
  db 9,$47
  !ds5
  db 9,$46
  !b4
  !gs5
  db 9,$45
  !b5
  db 9,$47
  !ds5
  db 9,$46
  !b4
  !gs5
  db 9,$45
  !b5
  !end

.sub4F61
  db 72,$76
  !cs5
  db 36,$56
  !fs5
  !as5
  db 27
  !gs5
  db 9,$66
  !fs5
  db 27
  !gs5
  db 9
  !as5
  db 36,$46
  !fs5
  db 36,$66
  !as5
  db 72,$76
  !cs6
  db 36,$56
  !as5
  !cs6
  !end

.sub4FA2
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !b4
  db 9,$46
  !fs4
  !ds5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  db 9,$47
  !as4
  db 9,$46
  !fs4
  !cs5
  db 9,$45
  !fs5
  !end

.sub4FF3
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  db 9,$72
  !b4
  db 9,$70
  !b4
  db 9,$71
  !b4
  db 9,$70
  !b4
  !end

.sub5024
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  !end

.sub5158
  !dynamicPan,144,7
  db 9,$46
  !b4
  !ds5
  !gs5
  !ds5
  !b4
  !ds5
  !gs5
  !ds5
  !cs5
  !f5
  !gs5
  !b5
  !cs6
  !gs5
  !f5
  !cs5
  !end

.sub5085
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !d3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !d3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !d3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !d3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  db 9,$5B
  !fs2
  db 9,$59
  !fs2
  !fs3
  db 9,$56
  !cs3
  !end

.sub510E
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  !end

.sub516E
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  db 9,$59
  !as2
  db 9,$56
  !as2
  db 9,$58
  !as3
  db 9,$56
  !f3
  !end

.sub51FF
  db 9,$59
  !a2
  db 9,$56
  !a2
  db 9,$58
  !a3
  db 9,$56
  !e3
  db 9,$59
  !a2
  db 9,$56
  !a2
  db 9,$58
  !a3
  db 9,$56
  !e3
  db 9,$59
  !a2
  db 9,$56
  !a2
  db 9,$58
  !a3
  db 9,$56
  !e3
  db 9,$59
  !a2
  db 9,$56
  !a2
  db 9,$58
  !a3
  db 9,$56
  !e3
  !end

.sub5230
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$57
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$57
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  !end

.sub5261
  db 9,$59
  !g2
  db 9,$56
  !g2
  db 9,$58
  !g3
  db 9,$56
  !d3
  db 9,$59
  !g2
  db 9,$56
  !g2
  db 9,$58
  !g3
  db 9,$56
  !d3
  !g2
  !g2
  !g3
  !d3
  db 9,$59
  !g2
  db 9,$56
  !g2
  db 9,$58
  !g3
  db 9,$56
  !d3
  !end

.sub528A
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !cs5
  !f5
  !gs5
  !f5
  !end

.sub529B
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !end

.sub52AC
  !cs5
  !e5
  !gs5
  !e5
  !cs5
  !e5
  !gs5
  !e5
  !cs5
  !e5
  !gs5
  !e5
  !cs5
  !e5
  !gs5
  !e5
  !end

.sub52BD
  !b4
  !ds5
  !fs5
  !ds5
  !b4
  !ds5
  !fs5
  !ds5
  !b4
  !ds5
  !fs5
  !ds5
  !b4
  !ds5
  !fs5
  !ds5
  !end

.sub52CE
  !d5
  !fs5
  !b5
  !fs5
  !d5
  !fs5
  !b5
  !fs5
  !d5
  !fs5
  !b5
  !fs5
  !d5
  !fs5
  !b5
  !fs5
  !end

.sub52DF
  !f5
  !gs5
  !cs6
  !gs5
  !f5
  !gs5
  !cs6
  !gs5
  !f5
  !gs5
  !cs6
  !gs5
  !f5
  !gs5
  !cs6
  !gs5
  !end

.sub52F0
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !fs5
  !b5
  !ds6
  !b5
  !end

.sub5301
  !e5
  !gs5
  !cs6
  !gs5
  !e5
  !gs5
  !cs6
  !gs5
  !e5
  !gs5
  !cs6
  !gs5
  !e5
  !gs5
  !cs6
  !gs5
  !end

.sub5312
  !fs5
  !b5
  !d6
  !b5
  !fs5
  !b5
  !d6
  !b5
  !fs5
  !b5
  !d6
  !b5
  !fs5
  !b5
  !d6
  !b5
  !end

.sub5323
  db 126,$75
  !cs7
  db 9,$76
  !cs7
  !d7
  db 54
  !cs7
  db 9
  !b6
  !a6
  db 18
  !gs6
  !fs6
  !e6
  !fs6
  db 72
  !gs6
  db 63
  !fs6
  db 9
  !gs6
  db 72
  !ds6
  db 36,$56
  !b5
  db 36,$76
  !b5
  db 1
  !tie
  !slideIn,0,14,1
  db 125,$75
  !a6
  !endSlide
  db 9,$76
  !a6
  !b6
  db 54
  !a6
  db 9
  !g6
  !fs6
  db 36
  !e6
  !d6
  db 63
  !fs6
  db 9
  !e6
  db 36
  !e6
  !d6
  !end

.sub5360
  db 9,$59
  !a2
  db 9,$56
  !a2
  db 9,$58
  !a3
  db 9,$56
  !e3
  db 9,$59
  !a2
  db 9,$56
  !a2
  db 9,$58
  !a3
  db 9,$56
  !e3
  db 9,$59
  !d3
  db 9,$56
  !d3
  db 9,$58
  !d4
  db 9,$56
  !a3
  db 9,$59
  !d3
  db 9,$56
  !d3
  db 9,$58
  !d4
  db 9,$56
  !a3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !b2
  db 9,$56
  !b2
  db 9,$58
  !b3
  db 9,$56
  !fs3
  db 9,$59
  !e3
  db 9,$56
  !e3
  db 9,$58
  !e4
  db 9,$56
  !b3
  db 9,$59
  !e3
  db 9,$56
  !e3
  db 9,$58
  !e4
  db 9,$56
  !b3
  !end

.sub53C1
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  db 9,$5A
  !gs2
  db 9,$58
  !gs2
  db 9,$59
  !gs3
  db 9,$56
  !ds3
  !end

.sub53F2
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !gs3
  db 9,$59
  !cs3
  db 9,$56
  !cs3
  !cs4
  !cs3
  !end

.sub5413
  !gs5
  !e5
  !cs5
  !a4
  !e5
  !cs5
  !a4
  !cs5
  !a5
  !fs5
  !d5
  !b4
  !fs5
  !d5
  !b4
  !d5
  !a5
  !fs5
  !d5
  !b4
  !fs5
  !d5
  !b4
  !d5
  !b5
  !gs5
  !e5
  !b4
  !gs5
  !e5
  !b4
  !e5
  !end

.sub5434
  !fs5
  !ds5
  !b4
  !ds5
  !fs5
  !ds5
  !b4
  !ds5
  !fs5
  !ds5
  !b4
  !ds5
  !fs5
  !ds5
  !b4
  !ds5
  !end

.sub5445
  !cs6
  !gs5
  !e5
  !cs5
  !gs5
  !e5
  !cs5
  !e5
  !cs6
  !a5
  !fs5
  !d5
  !a5
  !fs5
  !d5
  !fs5
  !cs6
  !a5
  !fs5
  !d5
  !a5
  !fs5
  !d5
  !fs5
  !d6
  !b5
  !gs5
  !e5
  !b5
  !gs5
  !e5
  !gs5
  !end

.sub5466
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !b5
  !fs5
  !ds5
  !fs5
  !end

.sub5477
  db 36,$76
  !fs6
  db 27
  !d6
  db 9,$78
  !fs6
  db 36,$76
  !gs6
  db 27
  !fs6
  db 9,$78
  !gs6
  db 36,$76
  !a6
  db 27
  !gs6
  db 9,$78
  !a6
  db 36,$76
  !d6
  db 27
  !d6
  db 9,$78
  !e6
  !end

.sub5498
  db 36,$76
  !a6
  db 27
  !gs6
  db 9,$78
  !a6
  db 36,$76
  !b6
  db 27
  !a6
  db 9,$78
  !b6
  db 36,$76
  !cs7
  db 27
  !b6
  db 9,$78
  !cs7
  db 36,$76
  !fs6
  db 27
  !fs6
  db 9,$78
  !gs6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
