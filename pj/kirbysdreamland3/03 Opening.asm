asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr10 = $17
!instr19 = $18
!instr1B = $19
!instr1C = $1A
!instr21 = $1B
!instr23 = $1C
!instr24 = $1D
!instr27 = $1E
!instr28 = $1F
!instr29 = $20
!instr2A = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$88,$87,$B8,$02,$40
  db !instr29,$FF,$E0,$B8,$02,$40
  db !instr2A,$FF,$E0,$B8,$05,$B0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample10,Sample10+27
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample26_27,Sample26_27+1683
  dw Sample28_29,Sample28_29+27
  dw Sample28_29,Sample28_29+27
  dw Sample2A,Sample2A+2961
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28_29: incbin "Sample_dd4b4e31068add6398abfb06f6e7a0ba.brr"
  Sample2A: incbin "Sample_e53ba613fb166fae8b26e3da095f04c3.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw .pattern3
-
  dw .pattern4
  dw $00C8,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, .pattern3_6, .pattern3_7
.pattern4: dw .pattern4_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,47
  !volume,255
  !echo,%01111100,42,42
  !echoParameters,4,70,0
  !pan,10
  !instr,!instr27
  db 4,$70
  !a4
  db 11,$76
  !a4
  db 11,$74
  !a4
  db 11,$70
  !a4
  db 11,$72
  !a4
  !end

.pattern0_7
  db 4
  !rest
  !volume,170
  !instr,!instr24
  !pan,14
  db 11,$76
  !e4
  db 11,$74
  !e4
  !endSlide
  !instr,!instr2A
  !pan,6
  db 22,$78
  !b4
  !end

.pattern1_0
  !pan,10
  !instr,!instr23
  db 66,$77
  !e5
  db 22,$73
  !e5
  !pan,10
  !instr,!instr27
  db 66,$77
  !a4
  !instr,!instr23
  db 44
  !e5
  db 22,$73
  !e5
  !instr,!instr27
  db 11,$77
  !a4
  db 22,$75
  !a4
  db 11,$72
  !a4
  !loop : dw .sub5524 : db 3
  !instr,!instr23
  db 66,$77
  !e5
  db 22,$73
  !e5
  !pan,10
  !instr,!instr27
  db 44,$77
  !a4
  !instr,!instr23
  db 18
  !e5
  !instr,!instr27
  db 4,$70
  !a4
  db 22,$77
  !a4
  db 7
  !a4
  db 5,$70
  !a4
  !a4
  !a4
  db 11,$77
  !a4
  db 11,$72
  !a4
  db 11,$77
  !a4
  db 11,$76
  !a4
  db 6,$77
  !a4
  db 5,$72
  !a4
  db 6,$77
  !a4
  db 5,$71
  !a4
  !end

.pattern1_1
  !instr,!instr21
  !volume,185
  !loop : dw .sub5572 : db 1
  db 66,$08
  !f2
  db 66,$07
  !c3
  db 22,$57
  !g3
  db 66,$07
  !f3
  db 22,$57
  !f3
  !a3
  !loop : dw .sub5572 : db 1
  db 66,$08
  !f2
  db 66,$07
  !c3
  db 22,$57
  !g3
  db 66,$07
  !f3
  db 22,$56
  !c4
  db 22,$57
  !f3
  !end

.pattern1_2
  db 22
  !rest
  !endVibrato
  !endSlide
  !instr,!instr1C
  !volume,145
  !pan,12
  db 22,$17
  !f5
  db 22,$57
  !d6
  db 22,$17
  !f5
  db 22,$57
  !d6
  db 22,$17
  !f5
  !rest
  !f5
  db 22,$57
  !d6
  db 22,$17
  !f5
  db 11,$57
  !d6
  !f5
  db 22
  !d6
  !loop : dw .sub55A8 : db 1
  db 22
  !rest
  db 22,$17
  !c5
  db 22,$57
  !a5
  db 22,$17
  !c5
  db 22,$57
  !a5
  db 22,$17
  !c5
  !rest
  !c5
  db 22,$57
  !g5
  db 22,$17
  !c5
  db 11,$57
  !c6
  !ds5
  db 22
  !c6
  !rest
  !instr,!instr1B
  !volume,155
  !pan,12
  db 22,$17
  !f5
  db 22,$57
  !d6
  db 22,$17
  !f5
  db 22,$57
  !d6
  db 22,$17
  !f5
  !rest
  !f5
  db 22,$57
  !d6
  db 22,$17
  !f5
  db 11,$57
  !d6
  !f5
  db 22
  !d6
  !loop : dw .sub55A8 : db 1
  db 22
  !rest
  db 22,$17
  !c5
  db 22,$57
  !a5
  db 22,$17
  !c5
  db 22,$57
  !a5
  db 22,$17
  !c5
  !rest
  !c5
  db 22,$57
  !g5
  db 22,$17
  !c5
  db 11,$57
  !g5
  !c5
  !g5
  !c5
  !end

.pattern1_3
  db 22
  !rest
  !endVibrato
  !endSlide
  !instr,!instr1C
  !volume,145
  !pan,8
  db 22,$17
  !a5
  db 22,$57
  !f6
  db 22,$17
  !a5
  db 22,$57
  !f6
  db 22,$17
  !a5
  !rest
  !a5
  db 22,$57
  !f6
  db 22,$17
  !a5
  db 11,$57
  !f6
  !a5
  db 22
  !f6
  !loop : dw .sub55E6 : db 1
  db 22
  !rest
  db 22,$17
  !e5
  db 22,$57
  !c6
  db 22,$17
  !e5
  db 22,$57
  !c6
  db 22,$17
  !e5
  !rest
  !e5
  db 22,$57
  !c6
  db 22,$17
  !e5
  db 11,$57
  !ds6
  !fs5
  db 22
  !ds6
  !rest
  !instr,!instr1B
  !volume,155
  !pan,8
  db 22,$17
  !a5
  db 22,$57
  !f6
  db 22,$17
  !a5
  db 22,$57
  !f6
  db 22,$17
  !a5
  !rest
  !a5
  db 22,$57
  !f6
  db 22,$17
  !a5
  db 11,$57
  !f6
  !a5
  db 22
  !f6
  !loop : dw .sub55E6 : db 1
  db 22
  !rest
  db 22,$17
  !e5
  db 22,$57
  !c6
  db 22,$17
  !e5
  db 22,$57
  !c6
  db 22,$17
  !e5
  !rest
  !e5
  db 22,$57
  !c6
  db 22,$17
  !e5
  db 11,$57
  !c6
  !e5
  !c6
  !e5
  !end

.pattern1_4
  db 22
  !rest
  !endVibrato
  !endSlide
  !instr,!instr1C
  !volume,145
  !pan,10
  db 22,$17
  !c6
  db 22,$57
  !a6
  db 22,$17
  !c6
  db 22,$57
  !a6
  db 22,$17
  !c6
  !rest
  !c6
  db 22,$57
  !a6
  db 22,$17
  !c6
  db 11,$57
  !a6
  !c6
  db 22
  !a6
  !loop : dw .sub5623 : db 1
  db 22
  !rest
  db 22,$17
  !g5
  db 22,$57
  !e6
  db 22,$17
  !g5
  db 22,$57
  !e6
  db 22,$17
  !g5
  !rest
  !a5
  db 22,$57
  !e6
  db 22,$17
  !a5
  db 11,$57
  !fs6
  !a5
  db 22
  !fs6
  !rest
  !instr,!instr1B
  !volume,155
  !pan,10
  db 22,$17
  !c6
  db 22,$57
  !a6
  db 22,$17
  !c6
  db 22,$57
  !a6
  db 22,$17
  !c6
  !rest
  !c6
  db 22,$57
  !a6
  db 22,$17
  !c6
  db 11,$57
  !a6
  !c6
  db 22
  !a6
  !loop : dw .sub5623 : db 1
  db 22
  !rest
  db 22,$17
  !g5
  db 22,$57
  !e6
  db 22,$17
  !g5
  db 22,$57
  !e6
  db 22,$17
  !g5
  !rest
  !a5
  db 22,$57
  !e6
  db 22,$17
  !a5
  db 11,$57
  !e6
  !a5
  !e6
  !a5
  !end

.pattern1_5
  !pan,10
  !endTremolo
  !instr,!instr28
  !volume,185
  !vibrato,0,10,100
  db 44,$77
  !a6
  !f6
  !d6
  !a6
  !c7
  !d7
  !g6
  db 44,$74
  !g6
  db 44,$77
  !a6
  !g6
  !c6
  !g6
  !f6
  !f6
  !as5
  !d6
  !f6
  !g6
  !e6
  !a5
  !e6
  !d6
  !e6
  !fs6
  !a6
  !f6
  !d6
  !a6
  !c7
  !d7
  !g6
  !e6
  !c6
  !g6
  !b5
  !c6
  !f6
  !d6
  !as5
  !d6
  !f6
  !g6
  !e6
  !a5
  !e6
  !d6
  !pan,7
  db 44,$73
  !d6
  !pan,13
  db 44,$72
  !d6
  !end

.pattern1_6
  db 33
  !rest
  !subtranspose,50
  !instr,!instr28
  !pan,0
  !volume,135
  !vibrato,0,10,100
  db 44,$77
  !a6
  !pan,20
  !f6
  !pan,0
  !d6
  !pan,20
  !a6
  !pan,0
  !c7
  !pan,20
  !d7
  !pan,0
  !g6
  !pan,20
  db 44,$74
  !g6
  !pan,0
  db 44,$77
  !a6
  !pan,20
  !g6
  !pan,0
  !c6
  !pan,20
  !g6
  !pan,0
  !f6
  !pan,20
  !f6
  !pan,0
  !as5
  !pan,20
  !d6
  !pan,0
  !f6
  !pan,20
  !g6
  !pan,0
  !e6
  !pan,20
  !a5
  !pan,0
  !e6
  !pan,20
  !d6
  !pan,0
  !e6
  !pan,20
  !fs6
  !pan,0
  !a6
  !pan,20
  !f6
  !pan,0
  !d6
  !pan,20
  !a6
  !pan,0
  !c7
  !pan,20
  !d7
  !pan,0
  !g6
  !pan,20
  !e6
  !pan,0
  !c6
  !pan,20
  !g6
  !pan,0
  !b5
  !pan,20
  !c6
  !pan,0
  !f6
  !pan,20
  !d6
  !pan,0
  !as5
  !pan,20
  !d6
  !pan,0
  !f6
  !pan,20
  !g6
  !pan,0
  !e6
  !pan,20
  !a5
  !pan,0
  !e6
  !pan,20
  !d6
  !pan,0
  db 44,$73
  !d6
  !pan,20
  db 11,$72
  !d6
  !end

.pattern1_7
  !volume,180
  !instr,!instr24
  !pan,6
  !dynamicPan,88,14
  !slideOut,2,9,250
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,66,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$76
  !e4
  db 10,$74
  !e4
  !endSlide
  !instr,!instr2A
  !pan,14
  db 22,$78
  !b4
  !instr,!instr24
  !pan,14
  !dynamicPan,88,6
  !slideOut,2,9,250
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,66,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$76
  !e4
  db 10,$74
  !e4
  !endSlide
  !instr,!instr2A
  !pan,6
  db 22,$78
  !b4
  !loop : dw .sub5660 : db 3
  !end

.pattern2_0
  !instr,!instr23
  db 66,$77
  !e5
  db 22,$73
  !e5
  !pan,10
  !instr,!instr27
  db 66,$77
  !a4
  !instr,!instr23
  db 44
  !e5
  db 22,$73
  !e5
  !instr,!instr27
  db 11,$77
  !a4
  db 22,$75
  !a4
  db 11,$72
  !a4
  !loop : dw .sub5524 : db 1
  !instr,!instr23
  db 66,$77
  !e5
  db 22,$73
  !e5
  !pan,10
  !instr,!instr27
  db 62,$77
  !a4
  db 4,$70
  !a4
  db 44,$77
  !a4
  db 22
  !a4
  !instr,!instr23
  !e5
  db 22,$74
  !e5
  !instr,!instr27
  db 22,$77
  !a4
  !instr,!instr23
  db 22,$74
  !e5
  !instr,!instr27
  db 11,$78
  !a4
  db 11,$77
  !a4
  db 11,$73
  !a4
  db 11,$78
  !a4
  !end

.pattern2_1
  db 66,$08
  !g2
  db 66,$07
  !d3
  db 22,$57
  !f3
  db 66,$07
  !g3
  db 22,$57
  !as3
  !g3
  db 66,$07
  !a2
  !e3
  db 22,$56
  !b3
  db 66,$05
  !c4
  db 22,$57
  !a3
  !a2
  db 66,$07
  !as2
  !f3
  db 22,$55
  !d4
  db 66,$07
  !as3
  db 22,$57
  !f3
  !as3
  db 44,$18
  !f2
  db 22,$57
  !f3
  db 44,$18
  !f2
  db 22,$58
  !f2
  db 22,$57
  !f3
  db 44,$08
  !f2
  db 22,$57
  !f3
  db 22,$58
  !f2
  !f2
  db 22,$57
  !f3
  db 22,$58
  !f2
  db 22,$57
  !f3
  db 22,$58
  !f2
  !end

.pattern2_2
  db 22
  !rest
  !instr,!instr01
  !volume,145
  !vibrato,0,20,20
  db 22,$17
  !f5
  db 22,$37
  !d6
  db 22,$17
  !f5
  db 22,$37
  !d6
  db 22,$17
  !f5
  !rest
  !f5
  db 22,$37
  !d6
  db 22,$17
  !f5
  db 22,$37
  !d6
  db 22,$17
  !f5
  !rest
  !g5
  db 22,$37
  !e6
  db 22,$17
  !g5
  db 22,$37
  !e6
  db 22,$17
  !g5
  !rest
  !g5
  db 22,$37
  !e6
  db 22,$17
  !g5
  db 11,$57
  !e6
  !g5
  !e6
  !g5
  db 22
  !rest
  db 22,$17
  !a5
  db 22,$37
  !f6
  db 22,$17
  !a5
  db 22,$37
  !f6
  db 22,$17
  !a5
  !rest
  !a5
  db 22,$37
  !f6
  db 22,$17
  !a5
  db 11,$57
  !f6
  !a5
  !f6
  !a5
  db 22
  !rest
  db 22,$17
  !f5
  db 22,$37
  !g6
  db 22,$17
  !f5
  db 22,$37
  !g6
  db 22,$17
  !f5
  !rest
  !g6
  !rest
  !g6
  db 22,$37
  !f5
  db 22,$17
  !f5
  db 22,$37
  !g6
  db 22,$17
  !f5
  db 22,$37
  !g6
  db 22,$27
  !f5
  !end

.pattern2_3
  db 22
  !rest
  !instr,!instr01
  !volume,145
  !vibrato,0,20,20
  db 22,$17
  !as5
  db 22,$37
  !f6
  db 22,$17
  !as5
  db 22,$37
  !f6
  db 22,$17
  !as5
  !rest
  !as5
  db 22,$37
  !f6
  db 22,$17
  !as5
  db 22,$37
  !f6
  db 22,$17
  !as5
  !rest
  !c6
  db 22,$37
  !g6
  db 22,$17
  !c6
  db 22,$37
  !g6
  db 22,$17
  !c6
  !rest
  !c6
  db 22,$37
  !g6
  db 22,$17
  !c6
  db 11,$57
  !g6
  !c6
  !g6
  !c6
  db 22
  !rest
  db 22,$17
  !d6
  db 22,$37
  !a6
  db 22,$17
  !d6
  db 22,$37
  !a6
  db 22,$17
  !d6
  !rest
  !d6
  db 22,$37
  !a6
  db 22,$17
  !d6
  db 11,$57
  !a6
  !d6
  !a6
  !d6
  db 22
  !rest
  db 22,$17
  !as5
  db 22,$37
  !as6
  db 22,$17
  !as5
  db 22,$37
  !as6
  db 22,$17
  !as5
  !rest
  !as6
  !rest
  !as6
  db 22,$37
  !as5
  db 22,$17
  !as5
  db 22,$37
  !as6
  db 22,$17
  !as5
  db 22,$37
  !as6
  db 22,$27
  !as5
  !end

.pattern2_4
  db 22
  !rest
  !instr,!instr01
  !volume,140
  !vibrato,0,20,20
  db 22,$17
  !d6
  db 22,$36
  !a6
  db 22,$17
  !d6
  db 22,$36
  !a6
  db 22,$17
  !d6
  !rest
  !d6
  db 22,$36
  !a6
  db 22,$17
  !d6
  db 22,$36
  !a6
  db 22,$17
  !d6
  !rest
  !e6
  db 22,$36
  !b6
  db 22,$17
  !e6
  db 22,$36
  !b6
  db 22,$17
  !e6
  !rest
  !e6
  db 22,$36
  !b6
  db 22,$17
  !e6
  db 11,$56
  !b6
  db 11,$57
  !e6
  db 11,$56
  !b6
  db 11,$57
  !e6
  db 22
  !rest
  db 22,$17
  !f6
  db 22,$36
  !c7
  db 22,$17
  !f6
  db 22,$36
  !c7
  db 22,$17
  !f6
  !rest
  !f6
  db 22,$36
  !c7
  db 22,$17
  !f6
  db 11,$56
  !c7
  db 11,$57
  !f6
  db 11,$56
  !c7
  db 11,$57
  !f6
  db 22
  !rest
  db 22,$17
  !ds6
  db 22,$35
  !d7
  db 22,$17
  !ds6
  db 22,$35
  !d7
  db 22,$17
  !ds6
  !rest
  db 22,$15
  !d7
  !rest
  !d7
  db 22,$37
  !ds6
  db 22,$17
  !ds6
  db 22,$35
  !d7
  db 22,$17
  !ds6
  db 22,$35
  !d7
  db 22,$27
  !ds6
  !end

.pattern2_5
  !vibrato,0,14,50
  !pan,0
  !instr,!instr19
  !volume,90
  !dynamicVolume,80,140
  !subtranspose,60
  db 100,$77
  !a6
  db 32
  !tie
  db 44
  !g6
  !a6
  !d7
  !loop : dw .sub5717 : db 1
  db 11
  !tie
  !volume,110
  !dynamicVolume,50,140
  db 77,$76
  !g7
  db 44,$77
  !ds7
  db 55
  !f7
  !volume,110
  !dynamicVolume,100,140
  db 88
  !g7
  db 77
  !tie
  !end

.pattern2_6
  db 1
  !rest
  !vibrato,0,12,50
  !pan,20
  !instr,!instr19
  !volume,90
  !dynamicVolume,80,140
  !subtranspose,65
  db 100,$77
  !a6
  db 32
  !tie
  db 44
  !g6
  !a6
  !d7
  !loop : dw .sub5717 : db 1
  db 11
  !tie
  !volume,110
  !dynamicVolume,50,140
  db 77,$76
  !g7
  db 44,$77
  !ds7
  db 55
  !f7
  !volume,110
  !dynamicVolume,100,140
  db 87
  !g7
  db 77
  !tie
  !end

.pattern2_7
  !loop : dw .sub5660 : db 1
  !instr,!instr24
  !pan,6
  !dynamicPan,88,14
  !slideOut,2,9,250
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,66,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$76
  !e4
  db 10,$74
  !e4
  !endSlide
  !instr,!instr2A
  !pan,14
  db 22,$78
  !b4
  !instr,!instr24
  !pan,14
  !dynamicPan,88,6
  !slideOut,2,9,250
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,66,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$76
  !e4
  db 10,$74
  !e4
  !endSlide
  !instr,!instr2A
  !pan,6
  db 22,$78
  !b4
  !pan,14
  !instr,!instr24
  db 12,$77
  !f4
  db 10,$72
  !e4
  !instr,!instr2A
  db 22,$78
  !b4
  !pan,6
  !instr,!instr24
  db 12,$77
  !f4
  db 10,$72
  !e4
  !instr,!instr2A
  db 22,$78
  !b4
  !end

.pattern3_0
  !instr,!instr23
  db 66,$77
  !e5
  db 22,$73
  !e5
  !pan,10
  !instr,!instr27
  db 66,$77
  !a4
  !instr,!instr23
  db 44
  !e5
  !instr,!instr27
  !a4
  !instr,!instr23
  db 22,$74
  !e5
  !instr,!instr27
  db 44,$77
  !a4
  db 22
  !a4
  db 22,$72
  !a4
  !instr,!instr23
  db 66,$77
  !e5
  db 22,$73
  !e5
  !pan,10
  !instr,!instr27
  db 62,$77
  !a4
  db 4,$70
  !a4
  db 44,$77
  !a4
  db 22
  !a4
  !instr,!instr23
  !e5
  db 22,$74
  !e5
  !instr,!instr27
  db 22,$77
  !a4
  !instr,!instr23
  db 22,$74
  !e5
  !instr,!instr27
  db 22,$77
  !a4
  !instr,!instr23
  db 22,$72
  !e5
  !instr,!instr23
  db 66,$77
  !e5
  db 22,$73
  !e5
  !pan,10
  !instr,!instr27
  db 66,$77
  !a4
  !instr,!instr23
  db 44
  !e5
  !instr,!instr27
  !a4
  !instr,!instr23
  db 22,$74
  !e5
  !instr,!instr27
  db 44,$77
  !a4
  db 22
  !a4
  db 22,$72
  !a4
  !instr,!instr23
  db 66,$77
  !e5
  db 22,$73
  !e5
  !pan,10
  !instr,!instr27
  db 62,$77
  !a4
  db 4,$70
  !a4
  db 44,$77
  !a4
  db 22
  !a4
  !instr,!instr23
  !e5
  db 22,$74
  !e5
  !instr,!instr27
  db 11,$77
  !a4
  !a4
  db 22
  !a4
  !instr,!instr23
  db 18
  !e5
  !instr,!instr27
  db 4,$71
  !a4
  db 22,$78
  !a4
  db 12
  !a4
  db 11,$76
  !a4
  db 11,$78
  !a4
  db 10,$77
  !a4
  !instr,!instr23
  db 44,$79
  !e5
  db 100,$77
  !e5
  !tie
  !end

.pattern3_1
  db 66,$07
  !ds3
  !as3
  db 22,$57
  !ds4
  db 44,$07
  !ds3
  db 22,$55
  !g4
  !f4
  !ds4
  db 22,$57
  !as3
  db 22,$55
  !ds4
  db 22,$57
  !ds3
  db 22,$55
  !ds4
  db 66,$07
  !d3
  !a3
  db 22,$55
  !d4
  db 44,$07
  !d3
  db 22,$53
  !a4
  db 22,$57
  !d3
  !d3
  db 22,$55
  !d4
  db 22,$57
  !d3
  db 22,$55
  !d4
  db 22,$57
  !d3
  db 66,$08
  !g2
  db 66,$07
  !d3
  db 22,$57
  !g3
  db 44,$08
  !g2
  db 22,$55
  !d4
  db 22,$58
  !g2
  !g2
  db 22,$57
  !g3
  db 22,$58
  !g2
  db 22,$57
  !g3
  db 22,$58
  !g2
  db 22,$57
  !a2
  !a3
  !rest
  !a2
  !rest
  !a3
  !a2
  !a2
  !rest
  !d3
  !rest
  db 22,$59
  !d2
  db 22,$57
  !d3
  !d3
  !rest
  db 22,$48
  !cs3
  !cs2
  !cs3
  db 44
  !rest
  db 100,$77
  !c3
  !dynamicVolume,100,80
  !tie
  !end

.pattern3_2
  db 22
  !rest
  !instr,!instr10
  !volume,125
  !vibrato,0,13,20
  db 22,$17
  !as5
  db 22,$57
  !f6
  db 22,$17
  !as5
  db 44,$57
  !f6
  db 22,$17
  !as5
  !cs6
  !rest
  !cs6
  db 22,$47
  !f5
  db 22,$17
  !f5
  db 22,$47
  !cs6
  db 22,$17
  !f5
  db 22,$47
  !cs6
  db 22,$17
  !f5
  !rest
  !a5
  db 22,$57
  !e6
  db 22,$17
  !a5
  db 44,$57
  !e6
  db 22,$17
  !a5
  !e6
  !rest
  !e6
  db 22,$47
  !e5
  db 22,$17
  !e5
  db 22,$47
  !e6
  db 22,$17
  !e5
  db 22,$47
  !c6
  db 22,$17
  !e5
  db 22,$37
  !c5
  db 22,$17
  !f5
  db 22,$57
  !c6
  db 22,$17
  !f5
  db 44,$57
  !c6
  db 22,$17
  !f5
  !e6
  !rest
  !e6
  db 22,$47
  !f5
  db 22,$17
  !f5
  db 22,$47
  !e6
  db 22,$17
  !f5
  db 22,$47
  !e6
  db 22,$17
  !f5
  db 22,$37
  !d5
  db 22,$17
  !g5
  db 22,$57
  !d6
  db 22,$17
  !g5
  db 44,$57
  !d6
  db 22,$17
  !g5
  !c6
  !rest
  !c6
  !rest
  db 22,$19
  !c5
  db 11,$38
  !c6
  !c6
  db 22,$17
  !c6
  !rest
  !e6
  db 22,$13
  !g5
  db 22,$17
  !e6
  db 44
  !rest
  !slideIn,0,12,1
  db 100,$77
  !d6
  !dynamicVolume,100,70
  !tie
  !end

.pattern3_3
  db 22
  !rest
  !instr,!instr10
  !volume,125
  !vibrato,0,13,20
  db 22,$17
  !cs6
  db 22,$57
  !gs6
  db 22,$17
  !cs6
  db 44,$57
  !gs6
  db 22,$17
  !cs6
  !f6
  !rest
  !f6
  db 22,$47
  !as5
  db 22,$17
  !as5
  db 22,$47
  !f6
  db 22,$17
  !as5
  db 22,$47
  !f6
  db 22,$17
  !as5
  !rest
  !c6
  db 22,$57
  !g6
  db 22,$17
  !c6
  db 44,$57
  !g6
  db 22,$17
  !c6
  !g6
  !rest
  !g6
  db 22,$47
  !a5
  db 22,$17
  !a5
  db 22,$47
  !g6
  db 22,$17
  !a5
  db 22,$47
  !e6
  db 22,$17
  !a5
  db 22,$37
  !f5
  db 22,$17
  !a5
  db 22,$57
  !e6
  db 22,$17
  !a5
  db 44,$57
  !e6
  db 22,$17
  !a5
  !f6
  !rest
  !f6
  db 22,$47
  !a5
  db 22,$17
  !a5
  db 22,$47
  !f6
  db 22,$17
  !a5
  db 22,$47
  !f6
  db 22,$17
  !a5
  db 22,$37
  !g5
  db 22,$17
  !b5
  db 22,$57
  !g6
  db 22,$17
  !b5
  db 44,$57
  !g6
  db 22,$17
  !b5
  !fs6
  !rest
  !fs6
  !rest
  db 22,$19
  !fs5
  db 11,$38
  !fs6
  !fs6
  db 22,$17
  !fs6
  !rest
  !g6
  db 22,$13
  !a5
  db 22,$17
  !g6
  db 44
  !rest
  !slideIn,0,12,1
  db 100,$77
  !f6
  !dynamicVolume,100,70
  !tie
  !end

.pattern3_4
  db 22
  !rest
  !instr,!instr10
  !volume,125
  !vibrato,0,13,20
  db 22,$17
  !ds6
  db 22,$57
  !c7
  db 22,$17
  !ds6
  db 44,$57
  !c7
  db 22,$17
  !ds6
  !c7
  !rest
  !c7
  db 22,$47
  !ds6
  db 22,$17
  !ds6
  db 22,$47
  !c7
  db 22,$17
  !ds6
  db 22,$47
  !c7
  db 22,$17
  !ds6
  !rest
  !d6
  db 22,$57
  !b6
  db 22,$17
  !d6
  db 44,$57
  !b6
  db 22,$17
  !d6
  !b6
  !rest
  !b6
  db 22,$47
  !d6
  db 22,$17
  !d6
  db 22,$47
  !b6
  db 22,$17
  !d6
  db 22,$47
  !b6
  db 22,$17
  !d6
  db 22,$37
  !a5
  db 22,$17
  !c6
  db 22,$57
  !a6
  db 22,$17
  !c6
  db 44,$57
  !a6
  db 22,$17
  !c6
  !a6
  !rest
  !a6
  db 22,$47
  !c6
  db 22,$17
  !c6
  db 22,$47
  !a6
  db 22,$17
  !c6
  db 22,$47
  !a6
  db 22,$17
  !c6
  db 22,$37
  !b5
  db 22,$17
  !d6
  db 22,$57
  !b6
  db 22,$17
  !d6
  db 44,$57
  !b6
  db 22,$17
  !d6
  !b6
  !rest
  !b6
  !rest
  db 22,$19
  !b5
  db 11,$38
  !b6
  !b6
  db 22,$17
  !b6
  !rest
  !as6
  db 22,$13
  !e6
  db 22,$17
  !as6
  db 44
  !rest
  !slideIn,0,12,1
  db 100,$77
  !a6
  !dynamicVolume,100,70
  !tie
  !end

.pattern3_5
  !instr,!instr1C
  !subtranspose,0
  !tremolo,5,10,100
  !endVibrato
  !volume,150
  !pan,10
  db 88,$77
  !c7
  !ds7
  !f7
  db 44
  !ds7
  !c7
  db 88
  !b6
  !e7
  !b6
  !g6
  !a6
  !c7
  !d7
  db 44
  !c7
  !d7
  db 88
  !b6
  db 44
  !g6
  !a6
  db 22
  !rest
  db 78,$78
  !b6
  !pitchSlide,43,23 : !fs6
  db 76,$28
  !tie
  db 44
  !rest
  !rest
  !instr,!instr28
  !volume,165
  !tremolo,0,50,150
  !pan,0
  db 100,$77
  !b6
  !dynamicVolume,100,100
  !tie
  !end

.pattern3_6
  !instr,!instr28
  !subtranspose,0
  !vibrato,0,9,100
  !volume,180
  !pan,10
  db 88,$77
  !c6
  !ds6
  !f6
  db 44
  !ds6
  !c6
  db 88
  !b5
  !e6
  !b5
  !g5
  !a5
  !c6
  !d6
  db 44
  !c6
  !d6
  db 88
  !b5
  db 44
  !g5
  !a5
  db 22
  !rest
  !instr,!instr29
  db 78,$78
  !b5
  !pitchSlide,43,23 : !fs5
  db 76,$28
  !tie
  db 44
  !rest
  !rest
  !instr,!instr28
  !volume,165
  !tremolo,0,50,150
  !pan,20
  db 100,$77
  !d7
  !dynamicVolume,100,100
  !tie
  !end

.pattern3_7
  !instr,!instr24
  !pan,14
  !dynamicPan,88,6
  !slideOut,2,9,250
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,66,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 10,$72
  !e4
  !instr,!instr2A
  !endSlide
  db 22,$78
  !b4
  !instr,!instr24
  !pan,6
  !dynamicPan,88,14
  !slideOut,2,9,250
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,66,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 10,$72
  !e4
  !instr,!instr2A
  !endSlide
  db 22,$78
  !b4
  !instr,!instr24
  !pan,14
  !dynamicPan,88,6
  !slideOut,2,9,250
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,66,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 10,$72
  !e4
  !instr,!instr2A
  !endSlide
  db 22,$78
  !b4
  !instr,!instr24
  !pan,14
  !dynamicPan,88,6
  !slideOut,2,9,250
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !pan,14
  db 12,$73
  !f4
  db 10,$72
  !e4
  !endSlide
  !instr,!instr2A
  db 22,$78
  !b4
  !pan,6
  !instr,!instr24
  !slideOut,2,9,250
  db 12,$73
  !f4
  db 10,$72
  !e4
  !endSlide
  !instr,!instr2A
  db 22,$78
  !b4
  !pan,14
  !slideOut,2,9,250
  !instr,!instr24
  db 12,$74
  !f4
  db 10,$72
  !e4
  !endSlide
  !instr,!instr2A
  db 22,$78
  !b4
  !pan,10
  db 44,$74
  !c5
  !endSlide
  db 100,$79
  !a3
  !tie
  !end

.pattern4_0
  db 72
  !rest
  !endEcho
  !rest
  !loop : dw .sub5739 : db 6
  !end

.sub5524
  !instr,!instr23
  db 66,$77
  !e5
  db 22,$73
  !e5
  !pan,10
  !instr,!instr27
  db 62,$77
  !a4
  db 4,$70
  !a4
  db 44,$77
  !a4
  db 22
  !a4
  !instr,!instr23
  db 11,$76
  !e5
  db 11,$73
  !e5
  !instr,!instr27
  db 6,$77
  !a4
  db 5,$72
  !a4
  db 6,$71
  !a4
  db 5
  !a4
  !instr,!instr23
  db 66,$77
  !e5
  db 22,$73
  !e5
  !pan,10
  !instr,!instr27
  db 66,$77
  !a4
  !instr,!instr23
  db 44
  !e5
  db 22,$73
  !e5
  !instr,!instr27
  db 11,$77
  !a4
  db 22,$75
  !a4
  db 11,$72
  !a4
  !end

.sub5572
  db 66,$07
  !as2
  !f3
  db 22,$57
  !as3
  db 66,$07
  !as2
  db 22,$55
  !d4
  db 22,$57
  !as3
  db 66,$07
  !a2
  !e3
  db 22,$57
  !b3
  db 66,$06
  !c4
  db 22,$55
  !e4
  db 22,$57
  !a3
  db 66,$08
  !g2
  db 66,$07
  !d3
  db 22,$57
  !as3
  db 44,$07
  !g3
  db 22,$57
  !c3
  db 22,$56
  !c4
  db 22,$57
  !c3
  !end

.sub55A8
  !rest
  db 22,$17
  !e5
  db 22,$57
  !c6
  db 22,$17
  !e5
  db 22,$57
  !c6
  db 22,$17
  !e5
  !rest
  !e5
  db 22,$57
  !c6
  db 22,$17
  !c5
  db 11,$57
  !c6
  !c5
  db 22
  !c6
  !rest
  db 22,$17
  !d5
  db 22,$57
  !as5
  db 22,$17
  !d5
  db 22,$57
  !as5
  db 22,$17
  !d5
  !rest
  !d5
  db 22,$57
  !as5
  db 22,$17
  !c5
  db 11
  !as5
  db 11,$57
  !c5
  !as5
  !c5
  !end

.sub55E6
  !rest
  db 22,$17
  !g5
  db 22,$57
  !e6
  db 22,$17
  !g5
  db 22,$57
  !e6
  db 22,$17
  !g5
  !rest
  !g5
  db 22,$57
  !e6
  db 22,$17
  !g5
  db 11,$57
  !e6
  !g5
  db 22
  !e6
  !rest
  db 22,$17
  !f5
  db 22,$57
  !d6
  db 22,$17
  !f5
  db 22,$57
  !d6
  db 22,$17
  !f5
  !rest
  !f5
  db 22,$57
  !d6
  db 22,$17
  !f5
  db 11,$57
  !d6
  !f5
  !d6
  !f5
  !end

.sub5623
  !rest
  db 22,$17
  !b5
  db 22,$57
  !g6
  db 22,$17
  !b5
  db 22,$57
  !g6
  db 22,$17
  !b5
  !rest
  !b5
  db 22,$57
  !g6
  db 22,$17
  !b5
  db 11,$57
  !g6
  !b5
  db 22
  !g6
  !rest
  db 22,$17
  !a5
  db 22,$57
  !f6
  db 22,$17
  !a5
  db 22,$57
  !f6
  db 22,$17
  !a5
  !rest
  !a5
  db 22,$57
  !f6
  db 22,$17
  !a5
  db 11,$57
  !f6
  !a5
  !f6
  !a5
  !end

.sub5660
  !instr,!instr24
  !pan,6
  !dynamicPan,88,14
  !slideOut,2,9,250
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,66,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$76
  !e4
  db 10,$74
  !e4
  !endSlide
  !instr,!instr2A
  !pan,14
  db 22,$78
  !b4
  !instr,!instr24
  !pan,14
  !dynamicPan,88,6
  !slideOut,2,9,250
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,88,14
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$75
  !e4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  !dynamicPan,66,6
  db 12,$77
  !f4
  db 11,$72
  !e4
  db 11,$73
  !e4
  db 10,$72
  !e4
  db 12,$76
  !e4
  db 10,$74
  !e4
  !endSlide
  !instr,!instr2A
  !pan,6
  db 22,$78
  !b4
  !end

.sub5717
  !volume,110
  !dynamicVolume,80,140
  db 100,$76
  !e7
  db 76
  !tie
  db 44,$77
  !d7
  !e7
  !volume,110
  !dynamicVolume,80,140
  !slideIn,0,30,1
  db 100,$76
  !f7
  db 76
  !tie
  !endSlide
  db 44,$77
  !d7
  !f7
  !end

.sub5739
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
