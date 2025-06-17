asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr03 = $19
!instr06 = $1A
!instr10 = $1B
!instr1B = $1C
!instr1C = $1D
!instr23 = $1E
!instr24 = $1F
!instr25 = $20
!instr27 = $21
!instr28 = $22
!instr2A = $23
!instr2B = $24

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$07,$00
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr02,$AF,$B2,$B8,$0E,$F0
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr28,$8A,$E0,$B8,$03,$C0
  db !instr2A,$FF,$EE,$B8,$11,$F0
  db !instr2B,$FF,$E0,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+819
  dw Sample01,Sample01+1098
  dw Sample02,Sample02+27
  dw Sample03,Sample03+2556
  dw Sample05_06,Sample05_06+216
  dw Sample10,Sample10+27
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
  dw Sample28_29,Sample28_29+27
  dw Sample2A,Sample2A+1665
  dw Sample2B,Sample2B+1620
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_daee1fba1349bada3b2b763cd04133f4.brr"
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample02: incbin "Sample_1086e6fe5f17482c7f004cd2924d0b6b.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample28_29: incbin "Sample_836ad2d2e0c7a830dcc458a1c4ac2247.brr"
  Sample2A: incbin "Sample_5d678d769e05ac18d8061931d0f4f795.brr"
  Sample2B: incbin "Sample_0724cc9b961c011b7ae6e0a4b08230d8.brr"

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
  dw .pattern4
  dw .pattern5
  dw .pattern6
  dw $00C8,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern1_0, .pattern2_1, .pattern1_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern5_0, .pattern2_1, .pattern2_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !musicVolume,255
  !tempo,47
  !echo,%00011100,38,38
  !echoParameters,4,80,0
  !instr,!instr27
  db 9,$71
  !b4
  db 9,$73
  !b4
  !end

.pattern1_0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !loop : dw .sub5251 : db 3
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  db 36
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  db 9,$74
  !b4
  db 9,$72
  !b4
  !end

.pattern1_1
  !instr,!instr02
  !volume,195
  !loop : dw .sub52AF : db 2
  !end

.pattern1_2
  !endVibrato
  !instr,!instr10
  !volume,120
  !pan,12
  db 9,$47
  !b4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !loop : dw .sub52EE : db 1
  !end

.pattern1_3
  !subtranspose,0
  !pan,8
  !instr,!instr10
  !vibrato,0,15,50
  !volume,65
  db 72,$78
  !f5
  !dynamicVolume,60,135
  db 54
  !tie
  db 18,$18
  !tie
  !rest
  db 18,$48
  !g5
  db 18,$46
  !a5
  !b5
  db 18,$48
  !d6
  db 18,$46
  !c6
  db 18,$48
  !b5
  db 18,$46
  !a5
  !dynamicVolume,20,70
  db 20,$78
  !b5
  !dynamicVolume,110,135
  db 106
  !tie
  db 18,$18
  !tie
  !rest
  db 18,$48
  !g5
  db 18,$46
  !a5
  !b5
  db 18,$48
  !d6
  db 18,$46
  !e6
  db 18,$48
  !f6
  db 18,$46
  !a6
  !dynamicVolume,90,80
  db 90,$77
  !g6
  !dynamicVolume,50,150
  db 36
  !tie
  db 18,$18
  !tie
  !rest
  !volume,135
  db 18,$47
  !a6
  db 18,$46
  !g6
  !f6
  db 18,$48
  !d6
  db 18,$46
  !e6
  db 18,$47
  !f6
  db 18,$75
  !d6
  !dynamicVolume,144,80
  db 72
  !tie
  !tie
  db 18
  !rest
  !endVibrato
  !instr,!instr06
  !volume,95
  !pan,12
  db 18,$16
  !c7
  db 18,$1A
  !a7
  db 18,$16
  !c7
  db 18,$1A
  !b7
  db 18,$16
  !c7
  db 18,$1A
  !f7
  db 18,$16
  !c7
  !end

.pattern1_4
  !pan,10
  !instr,!instr10
  !vibrato,0,15,50
  !volume,70
  db 72,$78
  !b5
  !dynamicVolume,60,145
  db 54
  !tie
  db 18,$18
  !tie
  !rest
  db 18,$48
  !b5
  db 18,$46
  !c6
  !d6
  db 18,$48
  !f6
  db 18,$46
  !e6
  db 18,$48
  !d6
  db 18,$46
  !c6
  !dynamicVolume,20,80
  db 20,$78
  !d6
  !dynamicVolume,110,145
  db 106
  !tie
  db 18,$18
  !tie
  !rest
  db 18,$48
  !b5
  db 18,$46
  !c6
  !d6
  db 18,$48
  !f6
  db 18,$46
  !g6
  db 18,$48
  !a6
  db 18,$46
  !c7
  !dynamicVolume,90,90
  db 90,$77
  !b6
  !dynamicVolume,50,160
  db 36
  !tie
  db 18,$18
  !tie
  !rest
  !volume,145
  db 18,$47
  !c7
  db 18,$46
  !b6
  !a6
  db 18,$48
  !f6
  db 18,$46
  !g6
  db 18,$47
  !a6
  db 18,$75
  !g6
  !dynamicVolume,144,90
  db 72
  !tie
  !tie
  db 18
  !rest
  !endVibrato
  !instr,!instr06
  !volume,95
  !pan,8
  db 18,$1A
  !g7
  db 18,$16
  !c7
  db 18,$1A
  !g7
  db 18,$16
  !c7
  db 18,$1A
  !g7
  db 18,$16
  !c7
  db 18,$1A
  !a7
  !end

.pattern2_0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !loop : dw .sub5251 : db 3
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  db 36
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 9,$77
  !b4
  db 9,$74
  !b4
  !instr,!instr25
  db 18,$75
  !c5
  !end

.pattern2_1
  !loop : dw .sub52AF : db 2
  !end

.pattern2_2
  !loop : dw .sub535F : db 1
  !end

.pattern2_3
  !subtranspose,20
  !pan,5
  !instr,!instr1C
  !vibrato,0,15,50
  !volume,70
  db 99,$78
  !b5
  !dynamicVolume,60,125
  db 54
  !tie
  db 18
  !tie
  !dynamicVolume,18,40
  db 18,$58
  !tie
  !volume,125
  !dynamicPan,144,15
  db 18,$78
  !b5
  db 18,$76
  !c6
  !d6
  db 21,$78
  !f6
  db 18,$76
  !e6
  db 18,$75
  !d6
  db 15,$74
  !c6
  db 18
  !tie
  !dynamicVolume,20,80
  db 20,$78
  !d6
  !dynamicVolume,105,125
  db 106
  !tie
  !dynamicVolume,18,40
  db 18,$58
  !tie
  !volume,125
  !dynamicPan,144,5
  db 18,$78
  !b5
  db 18,$76
  !c6
  !d6
  db 21,$78
  !f6
  db 18,$76
  !g6
  db 18,$78
  !a6
  db 15,$76
  !c7
  db 18
  !tie
  !dynamicVolume,90,80
  db 90
  !d7
  !dynamicVolume,36,140
  db 36
  !tie
  db 18,$18
  !tie
  !volume,125
  !dynamicPan,144,15
  db 18,$77
  !e7
  db 18,$76
  !d7
  !c7
  db 21,$78
  !b6
  db 18,$76
  !c7
  db 17,$77
  !a6
  db 16,$75
  !b6
  db 18
  !tie
  !dynamicVolume,107,70
  db 108
  !g6
  !instr,!instr03
  !subtranspose,0
  !volume,90
  !vibrato,10,14,200
  db 18,$77
  !a6
  !tie
  !dynamicPan,20,5
  db 99
  !f6
  !end

.pattern2_4
  !pan,10
  !instr,!instr1C
  !vibrato,0,15,50
  !volume,70
  db 72,$78
  !b5
  !dynamicVolume,60,145
  db 54
  !tie
  db 18
  !tie
  !dynamicVolume,18,40
  db 18,$58
  !tie
  !volume,145
  db 18,$78
  !b5
  db 18,$76
  !c6
  !d6
  db 21,$78
  !f6
  db 18,$76
  !e6
  db 18,$75
  !d6
  db 15,$74
  !c6
  db 18
  !tie
  !dynamicVolume,20,80
  db 20,$78
  !d6
  !dynamicVolume,105,145
  db 106
  !tie
  !dynamicVolume,18,40
  db 18,$58
  !tie
  !volume,145
  db 18,$78
  !b5
  db 18,$76
  !c6
  !d6
  db 21,$78
  !f6
  db 18,$76
  !g6
  db 18,$78
  !a6
  db 15,$76
  !c7
  db 18
  !tie
  !dynamicVolume,90,80
  db 90
  !d7
  !dynamicVolume,36,160
  db 36
  !tie
  db 18,$18
  !tie
  !volume,145
  db 18,$77
  !e7
  db 18,$76
  !d7
  !c7
  db 21,$78
  !b6
  db 18,$76
  !c7
  db 17,$77
  !a6
  db 16,$75
  !b6
  db 18
  !tie
  !dynamicVolume,107,80
  db 108
  !g6
  !instr,!instr03
  !volume,100
  !vibrato,10,7,100
  db 18,$77
  !a6
  !tie
  db 126
  !f6
  !end

.pattern3_0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !loop : dw .sub5251 : db 3
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  db 36
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  db 9
  !b4
  db 9,$73
  !b4
  !end

.pattern3_1
  !loop : dw .sub52AF : db 1
  !loop : dw .sub53E2 : db 1
  db 18,$5A
  !ds2
  db 18,$57
  !ds3
  db 18,$5A
  !ds2
  db 18,$57
  !f3
  db 18,$59
  !f2
  db 18,$57
  !f3
  db 36,$58
  !g2
  db 18
  !rest
  db 36,$07
  !g3
  db 36,$08
  !g2
  db 18,$17
  !g3
  db 18,$76
  !d4
  db 18,$18
  !g3
  !end

.pattern3_2
  !instr,!instr03
  !volume,155
  !pan,10
  !vibrato,6,9,150
  db 54,$77
  !b5
  !d6
  db 36
  !b5
  db 18
  !f5
  db 36,$07
  !a5
  db 90,$77
  !f5
  db 54
  !b5
  !d6
  db 18
  !b5
  !d6
  db 18,$57
  !f6
  db 36,$07
  !e6
  !d6
  db 18,$77
  !c6
  db 36
  !d6
  db 18
  !rest
  db 36
  !b5
  db 54
  !d6
  db 36
  !b5
  db 18
  !f5
  db 36,$07
  !a5
  db 90,$77
  !f5
  db 18
  !g5
  !f5
  !g5
  !a5
  !g5
  !a5
  db 36
  !b5
  db 72
  !tie
  !tie
  !end

.pattern3_3
  db 18
  !rest
  !instr,!instr1B
  !volume,155
  !pan,12
  !endVibrato
  db 18,$17
  !b4
  !d5
  !rest
  !b4
  !d5
  !rest
  !b4
  !rest
  !a4
  !c5
  !rest
  !a4
  !c5
  !rest
  !a4
  !loop : dw .sub5402 : db 2
  !rest
  !as4
  !ds5
  !rest
  !c5
  !f5
  db 36,$77
  !d5
  db 18
  !rest
  db 18,$17
  !g5
  !rest
  !d5
  !rest
  !g5
  db 18,$77
  !a4
  db 18,$17
  !g5
  !end

.pattern3_4
  db 18
  !rest
  !instr,!instr1B
  !volume,155
  !pan,8
  !endVibrato
  db 18,$17
  !d5
  !b4
  !rest
  !d5
  !b4
  !rest
  !d5
  !rest
  !c5
  !a4
  !rest
  !c5
  !a4
  !rest
  !c5
  !loop : dw .sub5413 : db 2
  !rest
  !ds5
  !as4
  !rest
  !f5
  !c5
  db 36,$77
  !g5
  db 18
  !rest
  db 18,$17
  !d5
  !rest
  !g5
  !rest
  !b4
  db 18,$77
  !f5
  db 18,$17
  !b4
  !end

.pattern4_3
  !subtranspose,0
  !pan,8
  !instr,!instr01
  !vibrato,0,9,30
  !volume,95
  !dynamicVolume,140,145
  db 72,$78
  !f5
  db 54
  !tie
  db 18,$18
  !tie
  !rest
  db 18,$77
  !g5
  !a5
  !b5
  !d6
  !c6
  !b5
  !a5
  !dynamicVolume,20,125
  db 20,$78
  !b5
  !dynamicVolume,110,145
  db 106
  !tie
  db 18,$18
  !tie
  !rest
  db 18,$77
  !g5
  !a5
  !b5
  !d6
  !e6
  db 18,$76
  !f6
  !a6
  !dynamicVolume,90,125
  db 90,$77
  !g6
  !dynamicVolume,50,145
  db 36
  !tie
  db 18,$18
  !tie
  !rest
  !volume,145
  !slideIn,0,5,1
  db 18,$76
  !a6
  !endSlide
  !g6
  db 18,$77
  !f6
  !d6
  !e6
  !f6
  !d6
  !dynamicVolume,144,100
  db 72
  !tie
  !tie
  db 18
  !rest
  !endVibrato
  !instr,!instr06
  !volume,95
  !pan,12
  db 18,$16
  !c7
  db 18,$1A
  !a7
  db 18,$16
  !c7
  db 18,$1A
  !b7
  db 18,$16
  !c7
  db 18,$1A
  !f7
  db 18,$16
  !c7
  !end

.pattern4_4
  !subtranspose,0
  !pan,10
  !instr,!instr01
  !vibrato,0,9,30
  !volume,100
  !dynamicVolume,140,155
  db 72,$78
  !b5
  db 54
  !tie
  db 18,$18
  !tie
  !rest
  db 18,$77
  !b5
  !c6
  !d6
  !f6
  !e6
  !d6
  !c6
  !dynamicVolume,20,120
  db 20,$78
  !d6
  !dynamicVolume,110,155
  db 106
  !tie
  db 18,$18
  !tie
  !rest
  db 18,$77
  !b5
  !c6
  !d6
  !f6
  !g6
  !a6
  db 18,$76
  !c7
  !dynamicVolume,90,120
  db 90,$77
  !b6
  !dynamicVolume,50,155
  db 36
  !tie
  db 18,$18
  !tie
  !rest
  !volume,155
  !slideIn,0,5,1
  db 18,$76
  !c7
  !endSlide
  db 18,$77
  !b6
  !a6
  !f6
  !g6
  !a6
  !g6
  !dynamicVolume,144,115
  db 72
  !tie
  !tie
  db 18
  !rest
  !endVibrato
  !instr,!instr06
  !volume,95
  !pan,8
  db 18,$1A
  !g7
  db 18,$16
  !c7
  db 18,$1A
  !g7
  db 18,$16
  !c7
  db 18,$1A
  !g7
  db 18,$16
  !c7
  db 18,$1A
  !a7
  !end

.pattern5_0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !loop : dw .sub5251 : db 3
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  db 36
  %percNote(!instr23-!instr23)
  !pan,10
  !instr,!instr27
  db 18,$75
  !b4
  db 9,$77
  !b4
  db 9,$74
  !b4
  !instr,!instr25
  db 18,$75
  !c5
  !end

.pattern5_3
  !subtranspose,75
  !pan,5
  !instr,!instr28
  !vibrato,0,8,45
  !volume,120
  db 14,$78
  !b4
  !dynamicVolume,19,110
  db 47
  !tie
  !dynamicVolume,110,140
  db 110
  !tie
  !dynamicVolume,18,110
  db 18,$28
  !tie
  !dynamicPan,144,15
  !volume,140
  !slideIn,0,8,1
  db 18,$78
  !b4
  !endSlide
  db 18,$76
  !c5
  !d5
  !slideIn,0,9,1
  db 21,$77
  !f5
  !endSlide
  db 19,$76
  !e5
  db 19,$75
  !d5
  db 13,$74
  !c5
  db 18
  !tie
  !dynamicVolume,20,110
  db 20,$78
  !d5
  !dynamicVolume,105,140
  db 106
  !tie
  !dynamicVolume,18,90
  db 18,$58
  !tie
  !dynamicPan,144,5
  !volume,140
  !slideIn,0,8,1
  db 18,$78
  !b4
  !endSlide
  db 18,$76
  !c5
  !d5
  db 21,$78
  !f5
  db 19,$76
  !g5
  db 19,$78
  !a5
  db 13,$76
  !c6
  db 18
  !tie
  !dynamicVolume,90,110
  db 90
  !d6
  !dynamicVolume,36,185
  db 36
  !tie
  db 18,$18
  !tie
  !volume,140
  !dynamicPan,144,15
  !slideIn,0,8,1
  db 18,$77
  !e6
  !endSlide
  db 18,$76
  !d6
  !c6
  db 21,$78
  !b5
  db 18,$76
  !c6
  db 17,$77
  !a5
  db 16,$75
  !b5
  db 18
  !tie
  !dynamicVolume,107,90
  db 99
  !g5
  !subtranspose,0
  !pan,12
  !instr,!instr03
  !volume,130
  !endVibrato
  !slideOut,18,36,254
  db 54,$76
  !f5
  !slideOut,18,54,254
  db 90,$79
  !f5
  !end

.pattern5_4
  !subtranspose,60
  !pan,10
  !instr,!instr28
  !vibrato,0,8,45
  !volume,175
  db 14,$78
  !b4
  !dynamicVolume,19,130
  db 20
  !tie
  !dynamicVolume,110,185
  db 110
  !tie
  !dynamicVolume,18,130
  db 18,$28
  !tie
  !volume,185
  !slideIn,0,8,1
  db 18,$78
  !b4
  !endSlide
  db 18,$76
  !c5
  !d5
  !slideIn,0,9,1
  db 21,$77
  !f5
  !endSlide
  db 19,$76
  !e5
  db 19,$75
  !d5
  db 13,$74
  !c5
  db 18
  !tie
  !dynamicVolume,20,130
  db 20,$78
  !d5
  !dynamicVolume,105,185
  db 106
  !tie
  !dynamicVolume,18,90
  db 18,$58
  !tie
  !volume,185
  !slideIn,0,8,1
  db 18,$78
  !b4
  !endSlide
  db 18,$76
  !c5
  !d5
  db 21,$78
  !f5
  db 19,$76
  !g5
  db 19,$78
  !a5
  db 13,$76
  !c6
  db 18
  !tie
  !dynamicVolume,90,130
  db 90
  !d6
  !dynamicVolume,36,200
  db 36
  !tie
  db 18,$18
  !tie
  !volume,185
  !slideIn,0,8,1
  db 18,$77
  !e6
  !endSlide
  db 18,$76
  !d6
  !c6
  db 21,$78
  !b5
  db 18,$76
  !c6
  db 17,$77
  !a5
  db 16,$75
  !b5
  db 18
  !tie
  !dynamicVolume,107,90
  db 126
  !g5
  !subtranspose,0
  !pan,8
  !instr,!instr03
  !volume,130
  !endVibrato
  !slideOut,18,36,254
  db 54,$79
  !a5
  !slideOut,18,54,254
  db 90,$76
  !c5
  !end

.pattern6_0
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !loop : dw .sub5251 : db 2
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  db 36
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  db 9,$74
  !b4
  db 9,$72
  !b4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  db 9,$71
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  db 36
  !b4
  !instr,!instr25
  db 36,$76
  !d5
  db 6,$77
  !g4
  !pan,11
  db 6,$73
  !g4
  !pan,9
  !g4
  !end

.pattern6_1
  !loop : dw .sub52AF : db 1
  !loop : dw .sub53E2 : db 1
  !instr,!instr2A
  !volume,255
  !ds2
  !ds2
  db 18,$57
  !ds3
  db 36,$59
  !ds2
  db 18,$57
  !ds3
  db 18,$59
  !ds2
  db 18,$57
  !ds3
  !loop : dw .sub5424 : db 2
  !f3
  db 18,$59
  !f2
  db 18,$57
  !f3
  db 18,$39
  !f3
  db 72
  !rest
  !end

.pattern6_2
  !endVibrato
  !endSlide
  !pan,0
  !instr,!instr1B
  !subtranspose,15
  !volume,120
  db 18,$79
  !g6
  db 9,$53
  !b5
  !d6
  db 18,$13
  !g6
  db 18,$79
  !b6
  db 9,$53
  !b5
  !d6
  db 18,$13
  !g6
  db 18,$78
  !g6
  db 9,$53
  !b5
  !d6
  !loop : dw .sub5438 : db 1
  !vibrato,6,17,45
  !endSlide
  !subtranspose,0
  !pan,8
  !instr,!instr2B
  !volume,175
  db 18,$57
  !as4
  !as4
  !as4
  db 36
  !as4
  db 18
  !g4
  !g4
  !as4
  !c5
  !c5
  !c5
  db 36
  !c5
  db 18
  !a4
  !c5
  !c5
  !ds5
  !ds5
  !ds5
  db 36
  !ds5
  db 18
  !as4
  !as4
  !ds5
  !f5
  !f5
  !f5
  db 18,$38
  !a5
  db 72
  !rest
  !end

.pattern6_3
  !endVibrato
  !endSlide
  !pan,20
  !instr,!instr1B
  !volume,120
  db 18,$79
  !g6
  db 9,$53
  !b5
  !d6
  db 18,$13
  !g6
  db 18,$79
  !b6
  db 9,$53
  !b5
  !d6
  db 18,$13
  !g6
  db 18,$78
  !g6
  db 9,$53
  !b5
  !d6
  !loop : dw .sub5438 : db 1
  !vibrato,6,17,45
  !pan,12
  !instr,!instr2B
  !volume,175
  db 18,$57
  !ds5
  !ds5
  !ds5
  db 36
  !ds5
  db 18
  !as4
  !as4
  !ds5
  !f5
  !f5
  !f5
  db 36
  !f5
  db 18
  !c5
  !f5
  !f5
  !g5
  !g5
  !g5
  db 36
  !g5
  db 18
  !ds5
  !ds5
  !g5
  !a5
  !g5
  !a5
  db 18,$38
  !c6
  db 72
  !rest
  !end

.pattern6_4
  !endVibrato
  !endSlide
  !pan,10
  !instr,!instr1B
  !volume,155
  db 18,$79
  !b6
  db 9,$53
  !d6
  !g6
  db 18,$13
  !b6
  db 18,$79
  !d7
  db 9,$53
  !d6
  !g6
  db 18,$13
  !b6
  db 18,$79
  !b6
  db 9,$53
  !d6
  !g6
  db 18,$79
  !f6
  db 18,$19
  !a6
  db 18,$13
  !c6
  db 36,$59
  !f6
  db 9,$53
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  db 18,$79
  !b6
  db 9,$53
  !d6
  !g6
  db 18,$13
  !b6
  db 18,$79
  !d7
  db 9,$53
  !d6
  !g6
  db 18,$13
  !b6
  db 18,$79
  !b6
  !d7
  !f7
  db 18,$19
  !e7
  !rest
  !d7
  !rest
  !c7
  db 36,$59
  !d7
  db 9,$53
  !d6
  !g6
  db 18,$79
  !b6
  db 9,$53
  !d6
  !g6
  db 18,$79
  !d7
  db 9,$53
  !d6
  !g6
  !d6
  !g6
  db 18,$79
  !b6
  db 9,$53
  !d6
  !g6
  db 18,$79
  !f6
  db 18,$19
  !a6
  db 18,$13
  !c6
  db 36,$59
  !f6
  db 9,$53
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !vibrato,6,17,45
  !instr,!instr00
  !volume,170
  !pan,10
  db 18,$57
  !g5
  !f5
  !g5
  db 36
  !g5
  db 18
  !ds5
  !f5
  !g5
  !a5
  !g5
  !a5
  db 36
  !a5
  db 18
  !f5
  !g5
  !a5
  !as5
  !a5
  !as5
  db 36
  !as5
  db 18
  !g5
  !a5
  !as5
  db 18,$58
  !c6
  !as5
  !c6
  db 18,$38
  !f6
  db 72
  !rest
  !end

.sub5251
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  db 36
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  !instr,!instr24
  db 9,$72
  !a4
  db 9,$70
  !a4
  !pan,10
  !instr,!instr27
  db 18,$77
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  db 18,$73
  !a4
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !instr,!instr27
  !b4
  !pan,12
  !instr,!instr24
  db 9,$71
  !a4
  db 9,$70
  !a4
  !end

.sub52AF
  db 36,$58
  !g2
  db 18,$57
  !g3
  db 36,$09
  !g2
  db 18,$58
  !g2
  db 18,$57
  !g3
  !f3
  db 54
  !rest
  db 18,$17
  !f3
  !rest
  db 18,$59
  !f2
  db 18,$57
  !f3
  db 18,$59
  !f2
  db 36,$58
  !g2
  db 18,$57
  !g3
  db 36,$09
  !g2
  db 18,$58
  !g2
  db 18,$57
  !g3
  !f3
  db 54
  !rest
  db 18,$14
  !c4
  !rest
  db 18,$59
  !f2
  db 18,$57
  !f3
  db 18,$59
  !f2
  !end

.sub52EE
  !c5
  !a4
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !a5
  !c5
  !a5
  !c5
  !f5
  !c5
  !f5
  !c5
  !d5
  !b4
  !d5
  !f5
  !d5
  !b4
  !d5
  !f5
  !d5
  !b4
  !d5
  !f5
  !d5
  !b4
  !d5
  !g5
  !c5
  !a4
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !a5
  !f5
  !a5
  !f5
  !c6
  !a5
  !f6
  !c6
  !d6
  !b5
  !d6
  !f6
  !d6
  !b5
  !d6
  !f6
  !d6
  !b5
  !d6
  !f6
  !d6
  !b5
  !d6
  !f6
  !c6
  !a5
  !f6
  !c6
  !f6
  !c6
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !g5
  !f5
  !g5
  !b5
  !g5
  !f5
  !g5
  !b5
  !g5
  !f5
  !g5
  !b5
  !g5
  !f5
  !g5
  !b5
  !f5
  !c5
  !f5
  !a5
  !f5
  !c5
  !f5
  !a5
  !c5
  !a4
  !c5
  !f5
  !a4
  !f4
  !a4
  !c5
  !end

.sub535F
  db 9,$47
  !b4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !b4
  !g4
  !b4
  !d5
  !c5
  !a4
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !a5
  !c5
  !a5
  !c5
  !f5
  !c5
  !f5
  !c5
  !d5
  !b4
  !d5
  !f5
  !d5
  !b4
  !d5
  !f5
  !d5
  !b4
  !d5
  !f5
  !d5
  !b4
  !d5
  !g5
  !c5
  !a4
  !f5
  !c5
  !f5
  !c5
  !f5
  !c5
  !a5
  !f5
  !a5
  !f5
  !c6
  !a5
  !f6
  !c6
  !d6
  !b5
  !d6
  !f6
  !d6
  !b5
  !d6
  !f6
  !d6
  !b5
  !d6
  !f6
  !d6
  !b5
  !d6
  !f6
  !c6
  !a5
  !f6
  !c6
  !f6
  !c6
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !c6
  !a5
  !g5
  !f5
  !g5
  !b5
  !g5
  !f5
  !g5
  !b5
  !g5
  !f5
  !g5
  !b5
  !g5
  !f5
  !g5
  !b5
  !f5
  !c5
  !f5
  !a5
  !f5
  !c5
  !f5
  !a5
  !c5
  !a4
  !c5
  !f5
  !a4
  !f4
  !a4
  !c5
  !end

.sub53E2
  db 36,$58
  !g2
  db 18,$57
  !g3
  db 36,$09
  !g2
  db 18,$58
  !g2
  db 18,$57
  !g3
  !f3
  db 54
  !rest
  db 18,$17
  !f3
  !rest
  db 18,$59
  !f2
  db 18,$57
  !f3
  db 18,$59
  !f2
  !end

.sub5402
  !rest
  !b4
  !d5
  !rest
  !b4
  !d5
  !rest
  !b4
  !rest
  !a4
  !c5
  !rest
  !a4
  !c5
  !rest
  !a4
  !end

.sub5413
  !rest
  !d5
  !b4
  !rest
  !d5
  !b4
  !rest
  !d5
  !rest
  !c5
  !a4
  !rest
  !c5
  !a4
  !rest
  !c5
  !end

.sub5424
  db 18,$59
  !ds2
  !ds2
  db 18,$57
  !ds3
  db 36,$59
  !ds2
  db 18,$57
  !ds3
  db 18,$59
  !ds2
  db 18,$57
  !ds3
  !end

.sub5438
  db 18,$79
  !d6
  db 18,$19
  !f6
  db 18,$13
  !a5
  db 36,$59
  !d6
  db 9,$53
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  db 18,$79
  !g6
  db 9,$53
  !b5
  !d6
  db 18,$13
  !g6
  db 18,$79
  !b6
  db 9,$53
  !b5
  !d6
  db 18,$13
  !g6
  db 18,$79
  !g6
  !b6
  !d7
  db 18,$19
  !c7
  !rest
  !b6
  !rest
  !a6
  db 36,$59
  !a6
  db 9,$53
  !b5
  !d6
  db 18,$79
  !g6
  db 9,$53
  !b5
  !d6
  db 18,$79
  !b6
  db 9,$53
  !b5
  !d6
  !b5
  !d6
  db 18,$79
  !g6
  db 9,$53
  !b5
  !d6
  db 18,$79
  !d6
  db 18,$19
  !f6
  db 18,$13
  !a5
  db 36,$59
  !d6
  db 9,$53
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
