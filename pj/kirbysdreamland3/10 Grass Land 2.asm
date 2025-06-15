asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr15 = $17
!instr19 = $18
!instr1B = $19
!instr1C = $1A
!instr1D = $1B
!instr21 = $1C
!instr23 = $1D
!instr24 = $1E
!instr25 = $1F
!instr27 = $20
!instr28 = $21

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr15,$88,$0D,$B8,$03,$C0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample1D,Sample1D+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample28,Sample28+1998
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28: incbin "Sample_6d2f6529cf00df564d41e991d0523929.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4739

Tracker4739:
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
  !percBase,!instr23
  !musicVolume,255
  !tempo,46
  !echo,%00011100,26,26
  !echoParameters,4,196,0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  db 18,$71
  %percNote(!instr24-!instr23)
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  db 18,$71
  %percNote(!instr24-!instr23)
  db 18,$70
  %percNote(!instr24-!instr23)
  !loop : dw .sub4E89 : db 3
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$73
  %percNote(!instr27-!instr23)
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 27,$77
  !gs4
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  db 18
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$72
  %percNote(!instr27-!instr23)
  !end

.pattern0_1
  !pan,10
  !instr,!instr21
  !volume,170
  !loop : dw .sub4ECD : db 1
  !loop : dw .sub4EE9 : db 1
  !loop : dw .sub4ECD : db 1
  !loop : dw .sub4F0D : db 1
  !end

.pattern0_2
  !loop : dw .sub4F30 : db 1
  !loop : dw .sub4FA3 : db 2
  !pan,12
  !volume,190
  !instr,!instr01
  !f4
  !instr,!instr1B
  !volume,150
  !f5
  !c6
  !f5
  !volume,190
  !instr,!instr01
  !a4
  !instr,!instr1B
  !volume,150
  !f5
  !c6
  !f5
  !pan,12
  !volume,190
  !instr,!instr01
  db 18,$18
  !f4
  !instr,!instr1B
  !volume,150
  db 18,$17
  !f5
  !c6
  !volume,190
  !instr,!instr01
  !c5
  !rest
  !instr,!instr1B
  !volume,150
  !f5
  !c6
  !f5
  !end

.pattern0_3
  !endVibrato
  !endTremolo
  !pan,8
  !volume,190
  !instr,!instr01
  db 18,$17
  !g4
  !instr,!instr1B
  !volume,150
  !g5
  !e6
  !g5
  !volume,190
  !instr,!instr01
  !b4
  !instr,!instr1B
  !volume,150
  !g5
  !e6
  !g5
  !loop : dw .sub4FBE : db 1
  !loop : dw .sub5015 : db 2
  !pan,8
  !volume,190
  !instr,!instr01
  !a4
  !instr,!instr1B
  !volume,150
  !a5
  !e6
  !a5
  !volume,190
  !instr,!instr01
  !c5
  !instr,!instr1B
  !volume,150
  !a5
  !e6
  !a5
  !pan,8
  !volume,190
  !instr,!instr01
  !c5
  !instr,!instr1B
  !volume,150
  !a5
  !e6
  !volume,190
  !instr,!instr01
  db 18,$16
  !f5
  !rest
  !instr,!instr1B
  !volume,150
  db 18,$17
  !a5
  !e6
  !a5
  !end

.pattern0_4
  !endTremolo
  !subtranspose,0
  !instr,!instr1C
  !volume,155
  !pan,10
  !vibrato,0,10,40
  db 72,$17
  !c7
  !b6
  !e6
  !g6
  db 18,$57
  !c7
  db 18,$56
  !d7
  db 18,$55
  !e7
  db 54,$57
  !a6
  db 36
  !rest
  !instr,!instr24
  db 27,$78
  !e4
  !pan,12
  db 27,$75
  !e4
  !pan,8
  !e4
  !pan,15
  db 27,$73
  !e4
  !pan,5
  !e4
  !pan,20
  db 9,$72
  !e4
  !instr,!instr1C
  !volume,155
  !pan,10
  !vibrato,0,10,40
  db 72,$17
  !c7
  !b6
  !e6
  !g6
  db 18,$57
  !c7
  db 18,$56
  !d7
  db 18,$55
  !g7
  db 54,$57
  !e7
  db 36
  !rest
  !instr,!instr27
  db 27,$7A
  !a4
  !pan,12
  db 27,$79
  !a4
  !pan,8
  !a4
  !pan,15
  !a4
  !pan,5
  !a4
  !pan,20
  db 9,$7A
  !a4
  !end

.pattern1_0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  db 18,$71
  %percNote(!instr24-!instr23)
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  db 18,$71
  %percNote(!instr24-!instr23)
  db 18,$70
  %percNote(!instr24-!instr23)
  !loop : dw .sub4E89 : db 3
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$73
  %percNote(!instr27-!instr23)
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 27,$77
  !gs4
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  db 18
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$72
  %percNote(!instr27-!instr23)
  !end

.pattern1_1
  !loop : dw .sub5030 : db 1
  !end

.pattern1_2
  !pan,12
  !volume,190
  !instr,!instr01
  db 18,$17
  !c4
  !instr,!instr28
  !volume,125
  !f5
  !gs5
  !c6
  !volume,190
  !instr,!instr01
  !f4
  !instr,!instr28
  !volume,125
  !f5
  !gs5
  !c6
  !pan,12
  !volume,190
  !instr,!instr01
  !f4
  !instr,!instr28
  !volume,125
  !f5
  !gs5
  !as5
  !d6
  !as5
  !f5
  !gs5
  !pan,12
  !volume,190
  !instr,!instr01
  !b3
  !instr,!instr28
  !volume,125
  !e5
  !g5
  !b5
  db 18,$16
  !d6
  !e6
  db 18,$15
  !fs6
  !pan,12
  !volume,190
  !instr,!instr01
  db 18,$19
  !e4
  !b3
  !instr,!instr28
  !volume,125
  db 18,$17
  !e5
  !g5
  db 18,$19
  !b5
  db 18,$17
  !d6
  !b5
  !g5
  !b5
  !volume,190
  !instr,!instr01
  !as3
  !instr,!instr28
  !volume,125
  !fs5
  !as5
  !fs5
  db 18,$14
  !as5
  !fs5
  db 18,$17
  !as5
  !fs5
  !volume,190
  !instr,!instr01
  !ds4
  !instr,!instr28
  !volume,125
  !fs5
  !as5
  !volume,190
  !instr,!instr01
  db 18,$1B
  !as3
  !rest
  !volume,125
  !instr,!instr28
  db 18,$17
  !fs5
  !as5
  !fs5
  !volume,190
  !instr,!instr01
  !d4
  !instr,!instr28
  !volume,125
  !d5
  !f5
  !d5
  !f5
  !volume,190
  !instr,!instr01
  !a4
  !instr,!instr28
  !volume,125
  !a5
  !f5
  !volume,190
  !instr,!instr01
  !d4
  !instr,!instr28
  !volume,125
  !f5
  !a5
  !f5
  !volume,190
  !instr,!instr01
  !g4
  !instr,!instr1B
  !volume,150
  db 9,$57
  !c6
  !a5
  db 18,$17
  !a5
  !f5
  !end

.pattern1_3
  !pan,8
  !volume,190
  !instr,!instr01
  db 18,$17
  !f4
  !instr,!instr28
  !volume,115
  !gs5
  !c6
  !ds6
  !volume,190
  !instr,!instr01
  !gs4
  !instr,!instr28
  !volume,115
  !gs5
  !c6
  !ds6
  !pan,8
  !volume,190
  !instr,!instr01
  !as4
  !instr,!instr28
  !volume,115
  !gs5
  !as5
  !d6
  !f6
  !d6
  !as5
  !d6
  !pan,8
  !volume,190
  !instr,!instr01
  !e4
  !instr,!instr28
  !volume,115
  !g5
  !b5
  !d6
  db 18,$16
  !fs6
  !g6
  db 18,$15
  !a6
  !pan,8
  !volume,190
  !instr,!instr01
  db 18,$17
  !b4
  !e4
  !instr,!instr28
  !volume,115
  !g5
  !b5
  !d6
  !fs6
  !d6
  !b5
  !d6
  !volume,190
  !instr,!instr01
  !ds4
  !instr,!instr28
  !volume,115
  !cs6
  !fs6
  !cs6
  db 18,$14
  !fs6
  !cs6
  db 18,$17
  !fs6
  !cs6
  !volume,190
  !instr,!instr01
  !fs4
  !instr,!instr28
  !volume,115
  !cs6
  !fs6
  !volume,190
  !instr,!instr01
  db 18,$1B
  !ds4
  !rest
  !volume,115
  !instr,!instr28
  db 18,$17
  !cs6
  !fs6
  !cs6
  !volume,190
  !instr,!instr01
  !a4
  !instr,!instr28
  !volume,115
  !a5
  !c6
  !a5
  !c6
  !volume,190
  !instr,!instr01
  !c5
  !instr,!instr28
  !volume,115
  !c6
  !a5
  !volume,190
  !instr,!instr01
  !g4
  !instr,!instr28
  !volume,115
  !a5
  !c6
  !a5
  !volume,190
  !instr,!instr01
  !d5
  !instr,!instr1B
  !volume,150
  db 9,$57
  !e6
  !c6
  db 18,$17
  !e6
  !c6
  !end

.pattern1_4
  !pan,10
  !instr,!instr15
  !subtranspose,60
  !volume,170
  !vibrato,1,10,50
  db 18,$77
  !ds6
  !f6
  !g6
  db 90
  !c6
  db 54
  !tie
  db 36
  !f6
  db 18
  !ds6
  !d6
  !c6
  !b5
  db 19
  !c6
  !d6
  db 36
  !fs5
  db 37,$74
  !d6
  db 18,$73
  !fs5
  db 87
  !tie
  db 19,$74
  !b5
  db 19,$77
  !d6
  db 18
  !g6
  db 106
  !gs6
  db 18,$74
  !fs6
  !gs6
  db 90
  !gs6
  db 18,$76
  !fs6
  db 18,$77
  !gs6
  db 19
  !as6
  db 71,$75
  !c7
  db 72
  !tie
  !instr,!instr19
  !volume,80
  !dynamicVolume,64,160
  db 64,$76
  !b6
  !dynamicVolume,80,60
  db 8
  !tie
  db 72
  !g6
  !end

.pattern2_0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  db 18,$71
  %percNote(!instr24-!instr23)
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  db 18,$71
  %percNote(!instr24-!instr23)
  db 18,$70
  %percNote(!instr24-!instr23)
  !loop : dw .sub4E89 : db 3
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$73
  %percNote(!instr27-!instr23)
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 27,$77
  !gs4
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  db 18
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$72
  %percNote(!instr27-!instr23)
  !end

.pattern2_1
  !loop : dw .sub4ECD : db 1
  !loop : dw .sub4EE9 : db 1
  !loop : dw .sub4ECD : db 1
  !loop : dw .sub4F0D : db 1
  !end

.pattern2_2
  !loop : dw .sub4F30 : db 1
  !loop : dw .sub4FA3 : db 2
  !pan,12
  !volume,190
  !instr,!instr01
  !f4
  !instr,!instr1B
  !volume,150
  !f5
  !c6
  !f5
  !volume,190
  !instr,!instr01
  !a4
  !instr,!instr1B
  !volume,150
  !f5
  !c6
  !f5
  !pan,12
  !volume,190
  !instr,!instr01
  db 18,$18
  !f4
  !instr,!instr1B
  !volume,150
  db 18,$17
  !f5
  !c6
  !volume,190
  !instr,!instr01
  !c3
  !rest
  !instr,!instr1B
  !volume,150
  !f5
  !c6
  !f5
  !end

.pattern2_3
  !pan,8
  !volume,190
  !instr,!instr01
  db 18,$17
  !g4
  !instr,!instr1B
  !volume,150
  !g5
  !e6
  !g5
  !volume,190
  !instr,!instr01
  !b4
  !instr,!instr1B
  !volume,150
  !g5
  !e6
  !g5
  !loop : dw .sub4FBE : db 1
  !loop : dw .sub5015 : db 2
  !pan,8
  !volume,190
  !instr,!instr01
  !a4
  !instr,!instr1B
  !volume,150
  !a5
  !e6
  !a5
  !volume,190
  !instr,!instr01
  !c5
  !instr,!instr1B
  !volume,150
  !a5
  !e6
  !a5
  !pan,8
  !volume,190
  !instr,!instr01
  !c5
  !instr,!instr1B
  !volume,150
  !a5
  !e6
  !volume,190
  !instr,!instr01
  !f4
  !rest
  !instr,!instr1B
  !volume,150
  !a5
  !e6
  !a5
  !end

.pattern2_4
  !subtranspose,0
  !instr,!instr01
  !volume,185
  !pan,10
  !vibrato,0,10,40
  db 72,$07
  !c5
  !b4
  !e4
  !g4
  db 18,$57
  !c5
  db 18,$56
  !d5
  db 18,$55
  !e5
  db 36,$77
  !a4
  !volume,165
  !pan,0
  !dynamicPan,90,20
  db 10
  !d5
  db 8,$73
  !c5
  db 10,$77
  !e5
  db 8,$73
  !d5
  db 10,$77
  !a4
  db 8,$73
  !e5
  db 10,$77
  !c5
  db 8,$73
  !a4
  db 10,$77
  !d5
  db 8,$73
  !c5
  !dynamicPan,108,0
  db 10,$77
  !e5
  db 8,$73
  !d5
  db 10,$77
  !a4
  db 8,$73
  !e5
  db 10,$77
  !c5
  db 8,$74
  !a4
  db 10,$78
  !d5
  db 8,$74
  !c5
  db 10,$78
  !e5
  db 8,$75
  !d5
  db 10,$79
  !a4
  db 8,$76
  !e5
  !instr,!instr01
  !volume,185
  !pan,10
  !vibrato,0,10,40
  db 27,$57
  !c5
  !pan,7
  db 27,$52
  !c5
  !pan,13
  db 18
  !c5
  !pan,10
  db 27,$57
  !b4
  !pan,7
  db 27,$52
  !b4
  !pan,13
  db 18
  !b4
  !pan,10
  db 27,$57
  !e4
  !pan,7
  db 27,$52
  !e4
  !pan,13
  db 18
  !e4
  !pan,10
  db 27,$57
  !g4
  !pan,7
  db 27,$52
  !g4
  !pan,13
  db 18
  !g4
  !pan,10
  db 18,$57
  !c5
  db 18,$56
  !d5
  db 18,$55
  !g5
  db 36,$67
  !e5
  !volume,125
  !pan,0
  db 18
  !g5
  !dynamicPan,26,20
  db 36,$17
  !e5
  db 18,$67
  !g5
  !dynamicPan,36,0
  db 36,$17
  !e5
  db 18,$67
  !g5
  !dynamicPan,36,20
  db 36,$17
  !e5
  !dynamicPan,18,0
  db 18,$67
  !g5
  !dynamicPan,18,20
  !e5
  !end

.pattern3_0
  !echo,%00011100,42,42
  !echoParameters,4,196,0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  db 18,$71
  %percNote(!instr24-!instr23)
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  db 18,$71
  %percNote(!instr24-!instr23)
  db 18,$70
  %percNote(!instr24-!instr23)
  !loop : dw .sub4E89 : db 3
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$73
  %percNote(!instr27-!instr23)
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  !echo,%00011100,26,26
  !echoParameters,4,196,0
  db 18,$77
  !gs4
  db 18,$74
  !gs4
  !pan,12
  db 9
  !gs4
  !pan,8
  !gs4
  !pan,10
  db 18
  !gs4
  !end

.pattern3_1
  !loop : dw .sub5030 : db 1
  !end

.pattern3_2
  !instr,!instr1D
  !volume,135
  !pan,20
  db 18,$17
  !c4
  !gs4
  !c5
  !pan,0
  !gs4
  !ds5
  !gs4
  !pan,20
  !c5
  !gs4
  !pan,0
  !d4
  !gs4
  !as4
  !pan,20
  !gs4
  !d5
  !gs4
  !pan,0
  !as4
  !gs4
  !pan,20
  !b3
  !g4
  !b4
  !pan,0
  !g4
  !d5
  !g4
  !pan,20
  !b4
  !g4
  !pan,0
  !b3
  !g4
  !d5
  !pan,20
  !b4
  !fs5
  !b4
  !pan,0
  !d5
  !g4
  !pan,20
  !ds4
  !fs4
  !as4
  !pan,0
  !fs4
  !cs5
  !fs4
  !pan,20
  !as4
  !fs4
  !pan,0
  !as3
  !fs4
  !as4
  !pan,20
  !fs4
  !cs5
  !fs4
  !pan,0
  !as4
  !fs4
  !pan,20
  !d4
  !f4
  !a4
  !pan,0
  !f4
  !c5
  !f4
  !pan,20
  !a4
  !f4
  !pan,0
  !d4
  !f4
  !pan,20
  !a4
  !c5
  !pan,0
  !f4
  !pan,20
  !g4
  !pan,0
  !b4
  !pan,20
  !d5
  !end

.pattern3_3
  !instr,!instr1C
  !volume,135
  !pan,12
  !vibrato,0,10,40
  !tremolo,30,10,95
  !slideIn,0,9,1
  db 27,$77
  !c6
  !endSlide
  !d6
  db 36
  !ds6
  db 54
  !gs5
  !tie
  db 36
  !d6
  !as5
  db 18
  !gs5
  !slideIn,0,7,1
  db 27
  !g5
  !endSlide
  !a5
  db 24
  !b5
  db 27,$74
  !d5
  !e5
  db 12
  !fs5
  db 72
  !tie
  db 24,$77
  !fs5
  !a5
  !d6
  db 18
  !tie
  db 90
  !ds6
  db 18,$74
  !cs6
  !ds6
  db 54
  !ds6
  db 54,$76
  !ds6
  db 36,$77
  !fs6
  db 72
  !f6
  !tie
  db 72,$75
  !a6
  db 18,$3A
  !f6
  !instr,!instr1B
  !volume,160
  db 9,$57
  !c6
  !a5
  db 18,$17
  !a5
  !f5
  !end

.pattern3_4
  !instr,!instr1C
  !volume,135
  !pan,8
  !vibrato,0,10,40
  !tremolo,30,10,95
  !slideIn,0,9,1
  db 27,$77
  !ds6
  !endSlide
  !f6
  db 36
  !g6
  db 54
  !c6
  !tie
  db 36
  !f6
  !d6
  db 18
  !c6
  !slideIn,0,7,1
  db 27
  !b5
  !endSlide
  !c6
  db 24
  !d6
  db 27,$74
  !fs5
  !g5
  db 12
  !a5
  db 72
  !tie
  db 24,$77
  !a5
  !d6
  !g6
  db 18
  !tie
  db 90
  !gs6
  db 18,$74
  !fs6
  !gs6
  db 54
  !gs6
  db 54,$76
  !gs6
  db 36,$77
  !as6
  db 72
  !c7
  !tie
  db 72,$75
  !c7
  db 18,$3A
  !b6
  !instr,!instr1B
  !volume,160
  db 9,$57
  !e6
  !c6
  db 18,$17
  !e6
  !c6
  !end

.sub4E89
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$73
  %percNote(!instr27-!instr23)
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr25
  db 27,$77
  !gs4
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  db 18
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$72
  %percNote(!instr27-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  db 18,$71
  %percNote(!instr24-!instr23)
  db 18,$70
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 18,$70
  %percNote(!instr24-!instr23)
  db 18,$71
  %percNote(!instr24-!instr23)
  db 18,$70
  %percNote(!instr24-!instr23)
  !end

.sub4ECD
  db 54,$47
  !c3
  db 18,$37
  !c3
  db 54,$38
  !g2
  db 18
  !g2
  !rest
  db 36,$17
  !c3
  db 18,$37
  !c3
  db 36,$58
  !g2
  db 18,$47
  !c3
  db 18,$48
  !g2
  !end

.sub4EE9
  db 18,$57
  !d3
  db 18,$56
  !f3
  db 18,$54
  !a3
  db 36,$47
  !a2
  db 18
  !d3
  db 36,$6A
  !d2
  db 18
  !rest
  db 18,$67
  !d3
  !a2
  db 18,$6A
  !d2
  db 18,$67
  !d3
  db 18,$6A
  !d2
  db 36,$67
  !d3
  !end

.sub4F0D
  !rest
  db 18,$57
  !f3
  !c3
  db 36,$4A
  !f2
  db 18,$47
  !f3
  db 36,$6A
  !f2
  db 18
  !rest
  db 36,$07
  !f3
  db 18,$2A
  !f2
  db 27,$37
  !f3
  db 9,$6A
  !f2
  db 18,$27
  !f3
  db 18,$2A
  !f2
  !end

.sub4F30
  !pan,12
  !volume,190
  !instr,!instr01
  db 18,$17
  !c4
  !instr,!instr1B
  !volume,150
  !e5
  !c6
  !e5
  !volume,190
  !instr,!instr01
  !e4
  !instr,!instr1B
  !volume,150
  !e5
  !c6
  !e5
  !pan,12
  !volume,190
  !instr,!instr01
  !c4
  !instr,!instr1B
  !volume,150
  !e5
  !c6
  !e5
  !volume,190
  !instr,!instr01
  !e4
  !instr,!instr1B
  !volume,150
  !e5
  !c6
  !e5
  !pan,12
  !volume,190
  !instr,!instr01
  !d4
  !instr,!instr1B
  !volume,150
  !f5
  !d6
  !f5
  !volume,190
  !instr,!instr01
  !f4
  !instr,!instr1B
  !volume,150
  !f5
  !d6
  !f5
  !pan,12
  !volume,190
  !instr,!instr01
  db 18,$18
  !d4
  !instr,!instr1B
  !volume,150
  db 18,$17
  !f5
  !d6
  !volume,190
  !instr,!instr01
  db 18,$19
  !f4
  !rest
  !instr,!instr1B
  !volume,150
  db 18,$17
  !f5
  !d6
  !f5
  !end

.sub4FA3
  !pan,12
  !volume,190
  !instr,!instr01
  !c4
  !instr,!instr1B
  !volume,150
  !e5
  !c6
  !e5
  !volume,190
  !instr,!instr01
  !e4
  !instr,!instr1B
  !volume,150
  !e5
  !c6
  !e5
  !end

.sub4FBE
  !pan,8
  !volume,190
  !instr,!instr01
  !g4
  !instr,!instr1B
  !volume,150
  !g5
  !e6
  !g5
  !volume,190
  !instr,!instr01
  !b4
  !instr,!instr1B
  !volume,150
  !g5
  !e6
  !g5
  !pan,8
  !volume,190
  !instr,!instr01
  !f4
  !instr,!instr1B
  !volume,150
  !a5
  !f6
  !a5
  !volume,190
  !instr,!instr01
  !a4
  !instr,!instr1B
  !volume,150
  !a5
  !f6
  !a5
  !pan,8
  !volume,190
  !instr,!instr01
  db 18,$18
  !f4
  !instr,!instr1B
  !volume,150
  db 18,$17
  !a5
  !f6
  !volume,190
  !instr,!instr01
  db 18,$19
  !a4
  !rest
  !instr,!instr1B
  !volume,150
  db 18,$17
  !a5
  !f6
  !a5
  !end

.sub5015
  !pan,8
  !volume,190
  !instr,!instr01
  !g4
  !instr,!instr1B
  !volume,150
  !g5
  !e6
  !g5
  !volume,190
  !instr,!instr01
  !b4
  !instr,!instr1B
  !volume,150
  !g5
  !e6
  !g5
  !end

.sub5030
  db 54,$47
  !f3
  db 18,$37
  !f3
  !c3
  db 36,$17
  !f3
  db 18,$37
  !c3
  !rest
  db 18,$57
  !as2
  !as2
  !as2
  db 18,$56
  !as3
  db 18,$57
  !f3
  db 36,$47
  !as2
  db 18
  !rest
  db 36,$17
  !e3
  db 18,$57
  !e3
  db 36
  !b2
  db 18,$47
  !e3
  !b2
  !rest
  db 18,$57
  !e3
  !e3
  !e3
  db 36
  !b2
  db 18
  !e3
  !b2
  !ds3
  !as2
  db 18,$5B
  !ds2
  db 36
  !ds2
  db 18,$57
  !ds3
  db 36,$5B
  !ds2
  db 18
  !rest
  db 18,$57
  !ds3
  db 18,$5B
  !ds2
  !ds2
  db 18,$57
  !ds3
  db 18,$5B
  !ds2
  db 36,$57
  !ds3
  db 54,$37
  !d3
  db 18,$57
  !d3
  !a2
  db 36,$17
  !d3
  db 18,$47
  !a2
  !rest
  db 36,$07
  !g3
  db 18,$28
  !g2
  db 27,$37
  !g3
  db 9,$68
  !g2
  db 18,$27
  !g3
  db 18,$28
  !g2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
