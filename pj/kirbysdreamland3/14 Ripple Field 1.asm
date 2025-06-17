asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr06 = $18
!instr09 = $19
!instr16 = $1A
!instr19 = $1B
!instr1B = $1C
!instr1C = $1D
!instr1D = $1E
!instr23 = $1F
!instr24 = $20
!instr27 = $21
!instr2A = $22

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr06,$BF,$13,$B8,$03,$00
  db !instr09,$FF,$F3,$B8,$04,$00
  db !instr16,$87,$0D,$B8,$03,$C0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr1D,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr2A,$FF,$EE,$B8,$11,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample05_06,Sample05_06+216
  dw Sample07_08_09,Sample07_08_09+360
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample1D,Sample1D+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample26_27,Sample26_27+1683
  dw Sample2A,Sample2A+1665
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample05_06: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample07_08_09: incbin "Sample_38e63eed215c29c5a4534a9767604a6d.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample1D: incbin "Sample_adea46e15798ea39b73c5563f18bd91e.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample2A: incbin "Sample_5d678d769e05ac18d8061931d0f4f795.brr"

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
.pattern3: dw .pattern1_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0
.pattern5: dw .pattern1_0, .pattern5_1, .pattern5_2, .pattern5_3, .pattern5_4, 0, 0, 0
.pattern6: dw .pattern6_0, .pattern6_1, .pattern6_2, .pattern6_3, .pattern6_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !musicVolume,255
  !tempo,47
  !echo,%00011100,45,45
  !echoParameters,4,70,0
  !instr,!instr27
  db 9,$72
  !c5
  !c5
  db 9,$73
  !a4
  !f4
  !end

.pattern1_0
  !loop : dw .sub528E : db 8
  !end

.pattern1_1
  !instr,!instr2A
  !pan,10
  !volume,230
  !loop : dw .sub52DF : db 1
  !loop : dw .sub5303 : db 1
  !loop : dw .sub52DF : db 1
  !loop : dw .sub5329 : db 2
  !end

.pattern1_2
  !endVibrato
  !subtranspose,0
  !instr,!instr1B
  !volume,190
  !pan,10
  db 27,$49
  !g6
  db 117
  !rest
  db 54
  !rest
  db 9,$67
  !e6
  !f6
  db 27,$47
  !g6
  !c7
  db 18
  !g6
  db 36
  !g6
  db 108
  !rest
  db 36
  !d6
  db 108
  !rest
  db 27,$49
  !g6
  !pan,11
  db 27,$42
  !g6
  !pan,9
  !g6
  !pan,12
  db 27,$41
  !g6
  !pan,8
  !g6
  !pan,20
  db 27,$40
  !g6
  !pan,0
  !g6
  !pan,20
  db 9,$70
  !g6
  !pan,10
  db 9,$68
  !e6
  db 9,$67
  !f6
  db 27,$47
  !g6
  !c7
  db 18
  !g6
  db 27,$57
  !d7
  !pan,11
  db 27,$51
  !d7
  !pan,9
  !d7
  !pan,12
  db 27,$50
  !d7
  !pan,8
  !d7
  !pan,13
  db 9,$70
  !d7
  !instr,!instr03
  !volume,145
  db 27,$79
  !fs7
  !pan,0
  db 27,$73
  !fs7
  !pan,20
  db 27,$72
  !fs7
  !pan,0
  !fs7
  !pan,20
  db 27,$71
  !fs7
  !pan,0
  db 9
  !fs7
  !end

.pattern1_3
  !instr,!instr06
  !pan,12
  !volume,150
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  !loop : dw .sub533E : db 2
  !loop : dw .sub535F : db 2
  !loop : dw .sub533E : db 2
  !end

.pattern1_4
  !instr,!instr06
  !pan,8
  !volume,150
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  !loop : dw .sub5380 : db 2
  !loop : dw .sub53A1 : db 2
  !loop : dw .sub5380 : db 2
  !end

.pattern2_0
  !loop : dw .sub528E : db 7
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$76
  %percNote(!instr27-!instr23)
  db 9,$73
  %percNote(!instr27-!instr23)
  !end

.pattern2_1
  !loop : dw .sub53C2 : db 1
  db 27,$48
  !gs2
  db 27,$47
  !gs3
  db 36,$28
  !gs2
  db 18
  !gs2
  db 18,$47
  !gs3
  db 18,$38
  !gs2
  db 27,$48
  !gs2
  db 27,$47
  !gs3
  db 36,$28
  !gs2
  db 18
  !gs2
  db 9,$57
  !gs3
  db 9,$58
  !gs2
  db 18,$57
  !gs3
  db 27,$47
  !d3
  db 27,$44
  !d4
  db 36,$27
  !d3
  db 18
  !d3
  db 18,$44
  !d4
  db 18,$37
  !d3
  db 27,$47
  !g3
  db 27,$44
  !g4
  db 36,$27
  !g3
  db 18
  !g3
  db 9,$54
  !g4
  !d4
  db 18,$57
  !g3
  !end

.pattern2_2
  !loop : dw .sub540B : db 1
  db 27
  !b6
  !e6
  db 27,$47
  !b6
  !dynamicVolume,210,90
  db 63,$78
  !e6
  db 72
  !tie
  !tie
  !volume,130
  !dynamicVolume,144,160
  db 27,$48
  !c6
  db 26,$38
  !g6
  db 19,$2A
  !c6
  db 72,$78
  !g6
  db 54
  !tie
  db 9,$48
  !ds6
  !f6
  db 27
  !g6
  !as6
  db 18
  !gs6
  !volume,160
  db 12,$78
  !g6
  !dynamicVolume,12,90
  !tie
  !dynamicVolume,170,190
  db 60
  !tie
  !tie
  db 50
  !tie
  !dynamicVolume,94,110
  db 94
  !tie
  !end

.pattern2_3
  !loop : dw .sub5433 : db 1
  !loop : dw .sub5476 : db 2
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  !loop : dw .sub5497 : db 1
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  db 9,$48
  !d6
  !b5
  !f5
  !d6
  !b5
  !f5
  !d6
  !gs5
  !end

.pattern2_4
  !loop : dw .sub54D8 : db 1
  !e6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !e6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !e6
  !b5
  !e6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !e6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !e6
  !b5
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  !loop : dw .sub551B : db 1
  !f6
  !d6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !d6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !d6
  db 9,$48
  !f6
  !d6
  !gs5
  !f6
  !d6
  !gs5
  !f6
  !d6
  !end

.pattern3_1
  !loop : dw .sub52DF : db 1
  !loop : dw .sub5303 : db 1
  !loop : dw .sub52DF : db 1
  !loop : dw .sub5329 : db 2
  !end

.pattern3_2
  !instr,!instr1C
  !subtranspose,0
  !pan,10
  !volume,190
  db 8,$79
  !g6
  !dynamicVolume,7,100
  db 7
  !tie
  !dynamicVolume,160,170
  db 57
  !tie
  db 72
  !tie
  db 36
  !tie
  db 18
  !rest
  db 9,$67
  !e6
  !f6
  db 27
  !g6
  db 27,$66
  !c7
  db 19,$67
  !g6
  !volume,190
  db 8,$77
  !g6
  !dynamicVolume,7,100
  db 7
  !tie
  !dynamicVolume,127,180
  db 57
  !tie
  db 71
  !tie
  !volume,120
  !dynamicVolume,120,160
  db 126
  !d6
  db 18
  !rest
  !volume,180
  db 7,$79
  !g6
  !dynamicVolume,7,100
  !tie
  !dynamicVolume,160,160
  db 65
  !tie
  !tie
  db 36
  !tie
  db 18
  !rest
  db 9,$68
  !e6
  db 9,$67
  !f6
  db 27,$37
  !g6
  db 27,$66
  !c7
  db 18,$67
  !g6
  !volume,160
  db 7,$79
  !d7
  !dynamicVolume,7,100
  !tie
  !dynamicVolume,160,160
  db 65
  !tie
  !tie
  !volume,80
  !dynamicVolume,140,175
  db 72,$77
  !fs7
  db 70
  !tie
  db 2
  !rest
  !end

.pattern3_3
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  !loop : dw .sub533E : db 2
  !loop : dw .sub535F : db 2
  !loop : dw .sub533E : db 2
  !end

.pattern3_4
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  !loop : dw .sub5380 : db 2
  !loop : dw .sub53A1 : db 2
  !loop : dw .sub5380 : db 2
  !end

.pattern4_0
  !loop : dw .sub528E : db 7
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !instr,!instr27
  !c5
  db 9,$77
  !c5
  db 9,$73
  !c5
  db 9,$77
  !a4
  db 9,$72
  !f4
  !end

.pattern4_1
  !loop : dw .sub53C2 : db 1
  db 27,$47
  !gs2
  !gs3
  db 36,$27
  !gs2
  db 18
  !gs2
  db 18,$47
  !gs3
  db 18,$37
  !gs2
  db 27,$47
  !d3
  db 9,$54
  !d4
  db 9,$57
  !d3
  db 9,$54
  !d4
  db 18,$47
  !d3
  db 27,$38
  !g2
  db 9,$57
  !g3
  db 9,$58
  !g2
  db 9,$57
  !g3
  db 18,$58
  !g2
  db 27,$48
  !gs2
  db 27,$47
  !gs3
  db 36,$28
  !gs2
  db 18,$37
  !as2
  db 18,$46
  !as3
  db 18,$37
  !as2
  db 27,$47
  !c3
  db 27,$44
  !c4
  db 36,$27
  !c3
  db 18
  !c3
  db 9,$54
  !c4
  db 9,$57
  !g3
  !c3
  db 9,$54
  !c4
  !end

.pattern4_2
  !loop : dw .sub540B : db 1
  db 27
  !b6
  db 27,$47
  !c7
  db 18,$45
  !d7
  db 27,$46
  !g6
  db 27,$45
  !b6
  db 18,$74
  !e6
  !tie
  !volume,120
  !dynamicVolume,60,170
  db 60,$48
  !g6
  !dynamicVolume,66,100
  db 66,$78
  !tie
  !volume,130
  !dynamicVolume,144,160
  db 27,$48
  !c6
  db 26,$38
  !g6
  db 19,$2A
  !c6
  db 72,$78
  !g6
  !dynamicVolume,35,200
  db 38
  !tie
  db 16
  !rest
  !volume,160
  db 18,$48
  !d6
  db 27
  !f6
  !e6
  db 18
  !d6
  !volume,170
  db 12,$79
  !c6
  !dynamicVolume,12,90
  !tie
  !dynamicVolume,120,160
  db 120
  !tie
  !dynamicVolume,144,90
  db 72
  !tie
  !tie
  !end

.pattern4_3
  !loop : dw .sub5433 : db 1
  !loop : dw .sub5476 : db 2
  !loop : dw .sub5497 : db 1
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  !b5
  !g5
  db 9,$43
  !c5
  db 9,$47
  !b5
  !g5
  db 9,$43
  !c5
  db 9,$47
  !b5
  !g5
  !b5
  !g5
  db 9,$43
  !c5
  db 9,$47
  !b5
  !g5
  db 9,$43
  !c5
  db 9,$47
  !b5
  !g5
  !end

.pattern4_4
  !loop : dw .sub54D8 : db 1
  !e6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !e6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !e6
  !b5
  !e6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !e6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !e6
  !b5
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  !loop : dw .sub551B : db 1
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  !end

.pattern5_1
  db 27,$47
  !f3
  db 27,$44
  !c4
  db 36,$27
  !f3
  db 18
  !f3
  db 18,$44
  !c4
  db 18,$37
  !f3
  db 27,$47
  !as3
  db 27,$43
  !as4
  db 36,$27
  !as3
  db 18
  !as3
  db 9,$54
  !as4
  !f4
  db 18,$57
  !as3
  db 27,$47
  !e3
  db 27,$44
  !e4
  db 36,$27
  !e3
  db 18
  !e3
  db 18,$44
  !e4
  db 18,$37
  !e3
  db 27,$47
  !a3
  db 27,$44
  !a4
  db 36,$27
  !a3
  db 18
  !a3
  db 9,$54
  !g4
  !d4
  db 18,$57
  !g3
  db 27,$47
  !f3
  db 27,$44
  !f4
  db 36,$27
  !f3
  db 18
  !f3
  db 18,$44
  !f4
  db 18,$37
  !f3
  db 27,$47
  !f3
  db 27,$44
  !f4
  db 18,$47
  !f3
  db 27,$17
  !f3
  db 9,$57
  !f3
  db 9,$54
  !f4
  !c4
  db 9,$57
  !f3
  db 9,$54
  !f4
  db 27,$47
  !e3
  db 27,$44
  !e4
  db 36,$27
  !e3
  db 18
  !e3
  db 18,$44
  !e4
  db 18,$37
  !e3
  db 27,$47
  !a3
  db 27,$44
  !a4
  db 36,$27
  !a3
  db 18
  !a3
  db 18,$44
  !a4
  db 18,$37
  !a3
  !end

.pattern5_2
  !subtranspose,0
  !vibrato,18,11,40
  !instr,!instr01
  !volume,140
  !dynamicVolume,200,160
  db 27,$79
  !c6
  db 27,$77
  !g6
  db 18
  !c6
  db 72
  !g6
  db 54
  !tie
  db 18
  !c7
  !as6
  !gs6
  db 18,$78
  !g6
  db 18,$77
  !f6
  db 27,$78
  !g6
  db 27,$76
  !d7
  db 18,$77
  !g6
  db 27,$78
  !b6
  db 27,$77
  !c7
  db 18,$76
  !d7
  !dynamicVolume,144,140
  db 72,$77
  !c7
  !tie
  !volume,160
  !slideIn,0,5,1
  db 27
  !a6
  !endSlide
  !b6
  db 90
  !c7
  db 54
  !tie
  db 18
  !e7
  db 18,$78
  !d7
  db 18,$77
  !c7
  db 18,$78
  !b6
  db 18,$77
  !a6
  db 27,$78
  !b6
  db 27,$77
  !c7
  db 18,$76
  !d7
  db 27,$78
  !e6
  db 27,$77
  !b6
  db 18,$76
  !d7
  !dynamicVolume,105,150
  db 72,$78
  !cs7
  db 36,$66
  !a6
  !pan,10
  !instr,!instr19
  !subtranspose,60
  !vibrato,0,20,30
  !volume,185
  !slideIn,0,7,1
  db 36,$77
  !a6
  !end

.pattern5_3
  !subtranspose,0
  !instr,!instr09
  !volume,180
  db 9,$47
  !ds5
  !c5
  !ds4
  !ds5
  !c5
  !ds4
  !ds5
  !c5
  !ds5
  !c5
  !ds4
  !ds5
  !c5
  !ds4
  !ds5
  !c5
  !d5
  !gs4
  !d4
  !d5
  !gs4
  !d4
  !d5
  !gs4
  !d5
  !gs4
  !d4
  !d5
  !gs4
  !d4
  !d5
  !gs4
  !d5
  !b4
  !e4
  !d5
  !b4
  !e4
  !d5
  !b4
  !d5
  !b4
  !e4
  !d5
  !b4
  !e4
  !d5
  !b4
  !e5
  !c5
  !e4
  !e5
  !c5
  !e4
  !e5
  !c5
  !e5
  !c5
  !e4
  !e5
  !c5
  !e4
  !e5
  !c5
  !e5
  !c5
  !c4
  !e5
  !c5
  !c4
  !e5
  !c5
  !e5
  !c5
  !c4
  !e5
  !c5
  !c4
  !e5
  !c5
  !d5
  !b4
  !c4
  !d5
  !b4
  !c4
  !d5
  !b4
  !d5
  !b4
  !c4
  !d5
  !b4
  !c4
  !d5
  !b4
  !e5
  !d5
  !e4
  !e5
  !d5
  !e4
  !e5
  !d5
  !e5
  !d5
  !e4
  !e5
  !d5
  !e4
  !e5
  !d5
  !g5
  !e5
  !e4
  !g5
  !e5
  !e4
  !g5
  !e5
  !cs6
  !g5
  !e4
  !cs6
  !g5
  !e4
  !cs6
  !g5
  !end

.pattern5_4
  !subtranspose,0
  !instr,!instr09
  !volume,180
  db 9,$47
  !g5
  !ds5
  !gs4
  !g5
  !ds5
  !gs4
  !g5
  !ds5
  !g5
  !ds5
  !gs4
  !g5
  !ds5
  !gs4
  !g5
  !ds5
  !f5
  !d5
  !f4
  !f5
  !d5
  !f4
  !f5
  !d5
  !f5
  !d5
  !f4
  !f5
  !d5
  !f4
  !f5
  !d5
  !g5
  !d5
  !g4
  !g5
  !d5
  !g4
  !g5
  !d5
  !g5
  !d5
  !g4
  !g5
  !d5
  !g4
  !g5
  !d5
  !g5
  !e5
  !a4
  !g5
  !e5
  !a4
  !g5
  !e5
  !g5
  !e5
  !a4
  !g5
  !e5
  !a4
  !g5
  !e5
  !loop : dw .sub555C : db 2
  !b5
  !g5
  !g4
  !b5
  !g5
  !g4
  !b5
  !g5
  !b5
  !g5
  !g4
  !b5
  !g5
  !g4
  !b5
  !g5
  !cs6
  !a5
  !a4
  !cs6
  !a5
  !a4
  !cs6
  !a5
  !e6
  !cs6
  !a4
  !e6
  !cs6
  !a4
  !e6
  !cs6
  !end

.pattern6_0
  !loop : dw .sub528E : db 11
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr27
  db 9,$77
  !c5
  db 9,$72
  !c5
  db 9,$77
  !c5
  db 9,$73
  !c5
  db 9,$77
  !a4
  db 9,$72
  !f4
  !end

.pattern6_1
  !loop : dw .sub556D : db 2
  db 27,$47
  !e3
  db 27,$45
  !b3
  db 36,$27
  !e3
  db 18
  !e3
  db 18,$44
  !e4
  db 18,$37
  !e3
  db 27,$47
  !a3
  db 27,$44
  !a4
  db 36,$27
  !a3
  db 18
  !a3
  db 9,$54
  !g4
  !d4
  db 18,$57
  !g3
  db 27,$47
  !d3
  db 27,$44
  !d4
  db 36,$27
  !d3
  db 18
  !d3
  db 18,$44
  !d4
  db 18,$37
  !d3
  db 27,$47
  !e3
  db 27,$44
  !e4
  db 36,$27
  !e3
  db 18
  !e3
  db 18,$44
  !e4
  db 18,$37
  !e3
  db 27,$47
  !f3
  db 27,$44
  !f4
  db 36,$27
  !f3
  db 18
  !f3
  db 18,$44
  !f4
  db 18,$37
  !f3
  db 27,$47
  !d3
  db 27,$44
  !d4
  db 36,$27
  !d3
  db 18
  !g3
  db 18,$44
  !g4
  db 18,$37
  !g3
  db 27,$48
  !gs2
  db 27,$47
  !gs3
  db 36,$28
  !gs2
  db 18
  !gs2
  db 18,$47
  !gs3
  db 18,$38
  !gs2
  db 27,$47
  !as2
  !as3
  db 36,$27
  !as2
  db 18
  !as2
  db 18,$47
  !as3
  db 18,$37
  !as2
  !loop : dw .sub557F : db 2
  !end

.pattern6_2
  !endSlide
  !pan,10
  !instr,!instr19
  !subtranspose,60
  !vibrato,0,12,50
  !volume,165
  db 12,$77
  !a7
  !dynamicVolume,12,90
  !tie
  !dynamicVolume,160,165
  db 60
  !tie
  !tie
  db 54
  !tie
  !instr,!instr19
  !slideIn,0,3,1
  db 18,$76
  !a7
  !endSlide
  !g7
  !f7
  !e7
  !d7
  db 27,$77
  !e7
  db 27,$75
  !f7
  db 18
  !g7
  db 27,$77
  !f7
  db 27,$75
  !e7
  db 18
  !d7
  !instr,!instr16
  db 72,$77
  !cs7
  !dynamicVolume,72,150
  db 36,$57
  !a6
  db 36,$78
  !a6
  !volume,165
  db 54,$77
  !e7
  !a6
  !instr,!instr19
  db 18
  !c7
  !d7
  !instr,!instr16
  db 54
  !e7
  db 36
  !g6
  db 27
  !c7
  !d7
  db 63
  !e7
  db 81
  !a6
  db 54
  !d7
  !e7
  !instr,!instr19
  !volume,90
  !dynamicVolume,30,165
  db 36
  !d7
  db 12
  !c7
  !dynamicVolume,11,90
  !tie
  !dynamicVolume,255,165
  db 60
  !tie
  !tie
  db 72
  !tie
  !tie
  !dynamicVolume,255,90
  !tie
  !tie
  !tie
  !tie
  !end

.pattern6_3
  !instr,!instr1D
  !volume,125
  db 9,$27
  !e5
  !c5
  !c4
  !e5
  !c5
  !c4
  !e5
  !c5
  !e5
  !c5
  !c4
  !e5
  !c5
  !c4
  !e5
  !c5
  !d5
  !b4
  !c4
  !d5
  !b4
  !c4
  !d5
  !b4
  !d5
  !b4
  !c4
  !d5
  !b4
  !c4
  !d5
  !b4
  !d5
  !b4
  !b3
  !d5
  !b4
  !b3
  !d5
  !b4
  !d5
  !b4
  !b3
  !d5
  !b4
  !b3
  !d5
  !b4
  !e5
  !cs5
  !cs4
  !e5
  !cs5
  !cs4
  !e5
  !cs5
  !e5
  !cs5
  !cs4
  !e5
  !cs5
  !cs4
  !e5
  !cs5
  !f5
  !c5
  !d4
  !f5
  !c5
  !d4
  !f5
  !c5
  !f5
  !c5
  !d4
  !f5
  !c5
  !d4
  !f5
  !c5
  !g5
  !d5
  !e4
  !g5
  !d5
  !e4
  !g5
  !d5
  !g5
  !d5
  !e4
  !g5
  !d5
  !e4
  !g5
  !d5
  !a5
  !e5
  !f4
  !a5
  !e5
  !f4
  !a5
  !e5
  !a5
  !e5
  !f4
  !a5
  !e5
  !f4
  !a5
  !e5
  !f5
  !d5
  !d4
  !f5
  !d5
  !d4
  !f5
  !d5
  !f5
  !d5
  !d4
  !f5
  !d5
  !d4
  !f5
  !d5
  !g5
  !ds5
  !ds4
  !g5
  !ds5
  !ds4
  !g5
  !ds5
  !g5
  !ds5
  !ds4
  !g5
  !ds5
  !ds4
  !g5
  !ds5
  !g5
  !ds5
  !f4
  !g5
  !ds5
  !f4
  !g5
  !ds5
  !g5
  !ds5
  !f4
  !g5
  !ds5
  !f4
  !g5
  !ds5
  !loop : dw .sub5591 : db 2
  !end

.pattern6_4
  !instr,!instr1D
  !volume,125
  db 9,$27
  !a5
  !f5
  !f4
  !a5
  !f5
  !f4
  !a5
  !f5
  !a5
  !f5
  !f4
  !a5
  !f5
  !f4
  !a5
  !f5
  !a5
  !f5
  !f4
  !a5
  !f5
  !f4
  !a5
  !f5
  !a5
  !f5
  !f4
  !a5
  !f5
  !f4
  !a5
  !f5
  !g5
  !e5
  !e4
  !g5
  !e5
  !e4
  !g5
  !e5
  !g5
  !e5
  !e4
  !g5
  !e5
  !e4
  !g5
  !e5
  !g5
  !e5
  !a4
  !g5
  !e5
  !a4
  !g5
  !e5
  !g5
  !e5
  !a4
  !g5
  !e5
  !a4
  !g5
  !e5
  !a5
  !f5
  !a4
  !a5
  !f5
  !a4
  !a5
  !f5
  !a5
  !f5
  !a4
  !a5
  !f5
  !a4
  !a5
  !f5
  !b5
  !g5
  !g4
  !b5
  !g5
  !g4
  !b5
  !g5
  !b5
  !g5
  !g4
  !b5
  !g5
  !g4
  !b5
  !g5
  !c6
  !a5
  !a4
  !c6
  !a5
  !a4
  !c6
  !a5
  !c6
  !a5
  !a4
  !c6
  !a5
  !a4
  !c6
  !a5
  !c6
  !a5
  !a4
  !c6
  !a5
  !a4
  !c6
  !a5
  !c6
  !a5
  !g4
  !c6
  !a5
  !g4
  !c6
  !a5
  !c6
  !g5
  !gs4
  !c6
  !g5
  !gs4
  !c6
  !g5
  !c6
  !g5
  !gs4
  !c6
  !g5
  !gs4
  !c6
  !g5
  !c6
  !g5
  !as4
  !c6
  !g5
  !as4
  !c6
  !g5
  !c6
  !g5
  !as4
  !c6
  !g5
  !as4
  !c6
  !g5
  !loop : dw .sub55A2 : db 2
  !end

.sub528E
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$77
  %percNote(!instr27-!instr23)
  !pan,12
  db 9,$71
  %percNote(!instr24-!instr23)
  !pan,10
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  db 9,$71
  %percNote(!instr24-!instr23)
  !end

.sub52DF
  db 27,$47
  !f3
  db 27,$44
  !c4
  db 36,$27
  !f3
  db 18
  !f3
  db 18,$44
  !c4
  db 18,$37
  !f3
  db 27,$47
  !f3
  db 27,$44
  !c4
  db 36,$27
  !f3
  db 18
  !f3
  db 9,$54
  !f4
  !c4
  db 18,$57
  !f3
  !end

.sub5303
  db 27,$47
  !e3
  db 27,$45
  !b3
  db 36,$27
  !e3
  db 18
  !e3
  db 18,$44
  !e4
  db 18,$37
  !e3
  db 27,$47
  !e3
  db 27,$45
  !b3
  db 36,$27
  !e3
  db 18
  !e3
  db 9,$54
  !e4
  db 9,$55
  !b3
  db 18,$57
  !e3
  !end

.sub5329
  db 27,$47
  !e3
  db 27,$45
  !b3
  db 36,$27
  !e3
  db 18
  !e3
  db 9,$54
  !e4
  db 9,$55
  !b3
  db 18,$57
  !e3
  !end

.sub533E
  !b5
  !g5
  db 9,$43
  !b4
  db 9,$47
  !b5
  !g5
  db 9,$43
  !b4
  db 9,$47
  !b5
  !g5
  !b5
  !g5
  db 9,$43
  !b4
  db 9,$47
  !b5
  !g5
  db 9,$43
  !b4
  db 9,$47
  !b5
  !g5
  !end

.sub535F
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !a5
  !end

.sub5380
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  db 9,$43
  !e5
  db 9,$47
  !d6
  !b5
  !end

.sub53A1
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !e6
  !c6
  !end

.sub53C2
  db 27,$47
  !d3
  !a3
  db 36,$27
  !d3
  db 18
  !d3
  db 18,$47
  !a3
  db 18,$37
  !d3
  db 27,$47
  !g3
  db 27,$44
  !g4
  db 36,$27
  !g3
  db 18
  !g3
  db 9,$54
  !g4
  !d4
  db 18,$57
  !g3
  db 27,$47
  !c3
  !g3
  db 18
  !c3
  db 27,$17
  !c3
  db 9,$67
  !c3
  db 18,$44
  !c4
  db 18,$37
  !c3
  db 27,$47
  !c3
  !g3
  db 18
  !c3
  db 27,$17
  !c3
  db 9,$67
  !c3
  db 9,$64
  !c4
  db 9,$67
  !g3
  db 18,$57
  !c3
  !end

.sub540B
  !pan,10
  !instr,!instr19
  !subtranspose,60
  !vibrato,0,20,30
  !volume,170
  db 12,$79
  !a6
  !dynamicVolume,12,90
  !tie
  !dynamicVolume,160,160
  db 60
  !tie
  !tie
  db 45
  !tie
  db 9
  !rest
  db 9,$68
  !a6
  !b6
  db 27,$48
  !e7
  !d7
  db 18
  !c7
  !end

.sub5433
  db 9,$47
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  !end

.sub5476
  !b5
  !g5
  db 9,$43
  !c5
  db 9,$47
  !b5
  !g5
  db 9,$43
  !c5
  db 9,$47
  !b5
  !g5
  !b5
  !g5
  db 9,$43
  !c5
  db 9,$47
  !b5
  !g5
  db 9,$43
  !c5
  db 9,$47
  !b5
  !g5
  !end

.sub5497
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  db 9,$43
  !c5
  db 9,$47
  !c6
  !g5
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  db 9,$43
  !d5
  db 9,$47
  !c6
  !a5
  !end

.sub54D8
  db 9,$47
  !f6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !c6
  !f6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !c6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !c6
  !f6
  !d6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !d6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !d6
  !f6
  !d6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !d6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !d6
  !end

.sub551B
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  db 9,$43
  !ds5
  db 9,$47
  !ds6
  !c6
  !f6
  !d6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !d6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !d6
  !f6
  !d6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !d6
  db 9,$43
  !f5
  db 9,$47
  !f6
  !d6
  !end

.sub555C
  !a5
  !f5
  !f4
  !a5
  !f5
  !f4
  !a5
  !f5
  !a5
  !f5
  !f4
  !a5
  !f5
  !f4
  !a5
  !f5
  !end

.sub556D
  db 27,$47
  !f3
  db 27,$44
  !c4
  db 36,$27
  !f3
  db 18
  !f3
  db 18,$44
  !c4
  db 18,$37
  !f3
  !end

.sub557F
  db 27,$47
  !c3
  db 27,$44
  !c4
  db 36,$27
  !c3
  db 18
  !c3
  db 18,$44
  !c4
  db 18,$37
  !c3
  !end

.sub5591
  !g5
  !d5
  !e4
  !g5
  !d5
  !e4
  !g5
  !d5
  !g5
  !d5
  !e4
  !g5
  !d5
  !e4
  !g5
  !d5
  !end

.sub55A2
  !b5
  !g5
  !g4
  !b5
  !g5
  !g4
  !b5
  !g5
  !b5
  !g5
  !g4
  !b5
  !g5
  !g4
  !b5
  !g5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
