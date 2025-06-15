asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr03 = $17
!instr10 = $18
!instr19 = $19
!instr1C = $1A
!instr1F = $1B
!instr23 = $1C
!instr24 = $1D
!instr27 = $1E
!instr29 = $1F
!instr2A = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr10,$FF,$E0,$B8,$03,$B0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr1F,$FF,$E0,$B8,$02,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
  db !instr29,$FF,$E0,$B8,$07,$A0
  db !instr2A,$FF,$E0,$B8,$11,$F0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample03,Sample03+2556
  dw Sample10,Sample10+27
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1C,Sample1C+27
  dw Sample1E_1F,Sample1E_1F+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample26_27,Sample26_27+1683
  dw Sample29,Sample29+2844
  dw Sample2A,Sample2A+387
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample10: incbin "Sample_00909a2c7ac12f30a998285388a5259c.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample1E_1F: incbin "Sample_9ddfb5e318bb09130c06c0fefb7b2686.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"
  Sample29: incbin "Sample_c133026ddd2bba2c66c3307434bd7c12.brr"
  Sample2A: incbin "Sample_5faf01bc00a237cd0f10ad8657571f93.brr"

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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !musicVolume,255
  !tempo,46
  !echo,%00011100,42,42
  !echoParameters,4,70,0
  !loop : dw .sub4F1D : db 7
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 9,$71
  %percNote(!instr24-!instr23)
  db 18,$73
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$73
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  !instr,!instr27
  db 18
  !gs5
  !pan,10
  !instr,!instr29
  db 18,$77
  !as4
  db 9,$73
  %percNote(!instr27-!instr23)
  db 9,$72
  %percNote(!instr27-!instr23)
  !end

.pattern0_1
  !instr,!instr2A
  !volume,200
  !loop : dw .sub4F50 : db 1
  !end

.pattern0_2
  !subtranspose,0
  !vibrato,10,30,150
  !instr,!instr1C
  !volume,150
  db 108,$47
  !g6
  db 18,$57
  !b5
  !c6
  db 54
  !e6
  !d6
  db 36,$67
  !g5
  db 108,$47
  !g6
  db 18,$67
  !b5
  !c6
  db 54
  !b6
  !a6
  db 36
  !g6
  db 90,$57
  !a6
  db 18,$67
  !b6
  !c7
  !d7
  db 27,$57
  !g6
  !e6
  db 18
  !g6
  db 54
  !c6
  db 9,$73
  !c6
  db 9,$72
  !d6
  db 54,$67
  !e6
  !d6
  db 18
  !c6
  db 18,$65
  !d6
  db 54,$67
  !e6
  db 9,$74
  !g6
  db 9,$73
  !e6
  db 36,$77
  !d6
  !instr,!instr01
  !volume,145
  !vibrato,10,20,60
  !g5
  !end

.pattern0_3
  !instr,!instr10
  !volume,125
  !pan,8
  !loop : dw .sub5015 : db 1
  !f4
  !g4
  !c5
  !f5
  !f4
  !g4
  !c5
  !f5
  !f4
  !g4
  !c5
  !f5
  !f4
  !g4
  !c5
  !f5
  !loop : dw .sub5058 : db 1
  !f4
  !b4
  !d5
  !f5
  !f4
  !b4
  !d5
  !f5
  !f4
  !b4
  !d5
  !f5
  !gs4
  !b4
  !d5
  !f5
  !end

.pattern0_4
  !instr,!instr10
  !volume,125
  !pan,12
  !loop : dw .sub5079 : db 1
  !a4
  !c5
  !g5
  !a5
  !a4
  !c5
  !g5
  !a5
  !a4
  !c5
  !g5
  !a5
  !a4
  !c5
  !g5
  !a5
  !loop : dw .sub50BC : db 1
  !b4
  !d5
  !f5
  !b5
  !b4
  !d5
  !f5
  !b5
  !b4
  !d5
  !f5
  !b5
  !b4
  !d5
  !f5
  !b5
  !end

.pattern1_0
  !loop : dw .sub4F1D : db 9
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 9,$71
  %percNote(!instr24-!instr23)
  db 18,$73
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$73
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  !instr,!instr27
  db 18
  !gs5
  !pan,10
  !instr,!instr29
  db 18,$77
  !as4
  db 9,$75
  !as4
  db 9,$73
  !as4
  !end

.pattern1_1
  !loop : dw .sub4F50 : db 1
  db 27,$58
  !gs2
  db 9,$57
  !gs3
  db 18,$38
  !gs2
  !gs2
  !rest
  db 9,$57
  !as2
  !as2
  !as2
  !as2
  !as2
  !as2
  db 27
  !c3
  db 9
  !c3
  db 18,$37
  !c3
  !c3
  !rest
  db 9,$57
  !c3
  !c3
  !c3
  !c3
  !c3
  !as2
  !end

.pattern1_2
  db 108,$47
  !g6
  db 18,$67
  !b5
  !c6
  db 54
  !e6
  !d6
  db 36
  !g5
  db 108,$47
  !g6
  db 18,$67
  !b5
  !c6
  db 54
  !b6
  !a6
  db 18
  !a6
  !b6
  db 90,$56
  !c7
  !slideIn,4,2,1
  db 18,$66
  !c7
  !endSlide
  !d7
  !c7
  !slideIn,4,2,1
  db 27,$67
  !g6
  !endSlide
  !e6
  db 18
  !g6
  db 54,$57
  !c6
  db 9,$73
  !c6
  db 9,$72
  !d6
  db 54,$67
  !e6
  !d6
  db 18
  !c6
  !d6
  db 54,$77
  !e6
  db 9,$74
  !g6
  db 9,$73
  !e6
  db 36,$67
  !d6
  !g5
  db 72,$77
  !c6
  !tie
  !dynamicVolume,143,70
  !tie
  !tie
  !end

.pattern1_3
  !instr,!instr1F
  !volume,120
  !loop : dw .sub5015 : db 1
  !f4
  !g4
  !c5
  !f5
  !f4
  !g4
  !c5
  !f5
  !f4
  !gs4
  !c5
  !f5
  !f4
  !gs4
  !c5
  !f5
  !loop : dw .sub5058 : db 1
  !f4
  !b4
  !d5
  !f5
  !f4
  !b4
  !d5
  !f5
  !f4
  !b4
  !d5
  !f5
  !f4
  !b4
  !d5
  !b4
  !ds4
  !gs4
  !c5
  !ds5
  !ds4
  !gs4
  !c5
  !ds5
  !f4
  !as4
  !d5
  !f5
  !f4
  !as4
  !d5
  !f5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !d5
  !e4
  !g4
  !c5
  !d5
  !end

.pattern1_4
  !instr,!instr1F
  !volume,120
  !loop : dw .sub5079 : db 1
  !a4
  !c5
  !g5
  !a5
  !a4
  !c5
  !g5
  !a5
  !gs4
  !c5
  !f5
  !gs5
  !gs4
  !c5
  !f5
  !gs5
  !loop : dw .sub50BC : db 1
  !b4
  !d5
  !f5
  !b5
  !b4
  !d5
  !f5
  !b5
  !b4
  !d5
  !f5
  !b5
  !b4
  !d5
  !f5
  !d5
  !gs4
  !c5
  !ds5
  !gs5
  !gs4
  !c5
  !ds5
  !gs5
  !as4
  !d5
  !f5
  !as5
  !as4
  !d5
  !f5
  !as5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !d5
  !e5
  !g5
  !g4
  !d5
  !e5
  !g5
  !end

.pattern2_0
  !loop : dw .sub4F1D : db 7
  !loop : dw .sub50DD : db 3
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 9,$71
  %percNote(!instr24-!instr23)
  db 18,$73
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$73
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,10
  !instr,!instr29
  db 18,$76
  !as4
  db 9,$77
  !as4
  db 9,$73
  !as4
  db 9,$76
  !as4
  db 9,$74
  !as4
  !end

.pattern2_1
  db 27,$37
  !gs2
  db 9,$67
  !gs3
  db 18,$37
  !gs2
  !gs2
  !rest
  db 9,$57
  !gs2
  !gs2
  !gs2
  !gs3
  db 18,$37
  !gs2
  db 27,$38
  !g2
  db 9,$67
  !g3
  db 18,$38
  !g2
  !g2
  !rest
  db 9,$57
  !c3
  !c3
  !c3
  !c3
  !as2
  !as2
  db 27,$37
  !gs2
  db 9,$67
  !gs3
  db 18,$37
  !gs2
  !gs2
  !rest
  db 9,$57
  !gs2
  !gs2
  !gs2
  !gs3
  db 18,$37
  !gs2
  db 27,$38
  !g2
  db 9,$57
  !g3
  db 9,$58
  !g2
  db 9,$57
  !g3
  db 18,$38
  !g2
  db 27,$37
  !c3
  db 9,$54
  !c4
  db 9,$57
  !c3
  !c3
  !as2
  !as2
  db 27,$39
  !f2
  db 9,$67
  !f3
  db 18,$39
  !f2
  !f2
  !rest
  db 9,$59
  !as2
  db 9,$57
  !as2
  db 9,$59
  !as2
  db 9,$56
  !as3
  db 18,$39
  !as2
  db 27,$3B
  !e2
  db 9,$57
  !e3
  db 9,$5B
  !e2
  db 9,$57
  !e3
  db 18,$3B
  !e2
  db 27,$37
  !a2
  db 9,$56
  !a3
  db 9,$57
  !a2
  !a2
  db 9,$58
  !g2
  !g2
  db 27,$39
  !f2
  db 9,$67
  !f3
  db 18,$39
  !f2
  !f2
  !rest
  db 9,$59
  !f2
  !f2
  !f2
  db 9,$57
  !f3
  db 18,$3B
  !f2
  db 27,$39
  !f2
  db 9,$67
  !f3
  db 18,$39
  !f2
  !f2
  !rest
  db 9,$59
  !f2
  !f2
  !f2
  db 9,$57
  !f3
  db 9,$59
  !f2
  !f2
  db 27,$3A
  !e2
  db 9,$67
  !e3
  db 18,$3A
  !e2
  !e2
  !rest
  db 9,$5A
  !e2
  !e2
  !e2
  db 9,$57
  !e3
  db 18,$3A
  !e2
  db 27
  !e2
  db 9,$67
  !e3
  db 18,$3A
  !e2
  !e2
  !rest
  db 9,$5A
  !e2
  !e2
  !e2
  db 9,$57
  !e3
  db 9,$5A
  !e2
  !e2
  db 27,$3B
  !ds2
  db 9,$67
  !ds3
  db 18,$3B
  !ds2
  !ds2
  !rest
  db 9,$5B
  !ds2
  !ds2
  !ds2
  db 9,$57
  !ds3
  db 18,$3B
  !ds2
  db 27
  !ds2
  db 9,$67
  !ds3
  db 18,$3B
  !ds2
  !ds2
  !rest
  db 9,$57
  !ds3
  !ds3
  db 9,$5B
  !ds2
  db 9,$57
  !ds3
  db 9,$5B
  !ds2
  !ds2
  db 27,$3B
  !d2
  db 9,$67
  !d3
  db 18,$3B
  !d2
  !d2
  !rest
  db 9,$57
  !d3
  !d3
  db 9,$5B
  !d2
  db 9,$57
  !d3
  db 18,$3B
  !d2
  db 27,$38
  !g2
  db 9,$67
  !g3
  db 18,$38
  !g2
  !g2
  !rest
  db 9,$57
  !g3
  !g3
  db 9,$58
  !g2
  !g2
  db 9,$57
  !a2
  !b2
  !end

.pattern2_2
  !volume,155
  !instr,!instr19
  !subtranspose,60
  !vibrato,0,12,40
  db 90,$67
  !c7
  db 18
  !d7
  !ds7
  !f7
  db 27
  !d7
  !g6
  db 18
  !as6
  db 72
  !c7
  db 90
  !c7
  db 18
  !d7
  !ds7
  !f7
  db 27,$66
  !g7
  db 27,$67
  !as6
  db 18
  !d7
  db 36,$77
  !e7
  !dynamicVolume,40,125
  !c7
  !pitchSlide,32,12 : !g7
  db 90,$68
  !tie
  !volume,155
  db 18,$67
  !f7
  !ds7
  !f7
  db 27
  !d7
  !g6
  db 18
  !b6
  db 36
  !cs7
  !a6
  db 27
  !c7
  !b6
  db 90,$77
  !a6
  !dynamicVolume,125,80
  db 126,$68
  !tie
  !volume,155
  db 9,$67
  !g6
  !a6
  db 27
  !b6
  !a6
  db 90,$77
  !g6
  !dynamicVolume,143,80
  db 72
  !tie
  !tie
  !volume,160
  db 29,$67
  !as6
  db 33
  !a6
  db 82,$77
  !g6
  !dynamicVolume,143,80
  db 72
  !tie
  !tie
  !dynamicVolume,80,160
  db 108
  !a6
  db 18,$67
  !g6
  !a6
  db 72
  !a6
  db 70,$77
  !b6
  !pitchSlide,26,17 : !g6
  db 2
  !rest
  !end

.pattern2_3
  !pan,13
  !dynamicPan,143,7
  !instr,!instr03
  !volume,145
  db 9,$77
  !c6
  !ds5
  !ds6
  !c6
  !c6
  !ds5
  !ds6
  !c6
  !c6
  !ds5
  !ds6
  !c6
  !c6
  !ds5
  !ds6
  !c6
  !dynamicPan,143,13
  !as5
  !d5
  !d6
  !as5
  !as5
  !d5
  !d6
  !as5
  !g5
  !c5
  !c6
  !g5
  !g5
  !as4
  !as5
  !g5
  !dynamicPan,143,7
  !c6
  !ds5
  !ds6
  !c6
  !c6
  !ds5
  !d6
  !c6
  !c6
  !ds5
  !d6
  !c6
  !c6
  !ds5
  !d6
  !c6
  !dynamicPan,143,13
  !as5
  !d5
  !d6
  !a5
  !as5
  !d5
  !d6
  !a5
  !g5
  !c5
  !c6
  !g5
  !g5
  !as4
  !as5
  !g5
  !dynamicPan,143,7
  !gs5
  !c5
  !c6
  !gs5
  !gs5
  !c5
  !c6
  !gs5
  !gs5
  !d5
  !d6
  !gs5
  !gs5
  !d5
  !d6
  !gs5
  !dynamicPan,143,13
  !b5
  !b4
  !d6
  !b5
  !b5
  !b4
  !d6
  !b5
  !a5
  !cs5
  !cs6
  !a5
  !a5
  !cs5
  !cs6
  !g5
  !dynamicPan,143,7
  !a5
  !c5
  !c6
  !a5
  !a5
  !c5
  !c6
  !a5
  !a5
  !c5
  !b5
  !a5
  !a5
  !c5
  !b5
  !a5
  !dynamicPan,143,13
  !a5
  !c5
  !c6
  !a5
  !a5
  !c5
  !b5
  !a5
  !a5
  !c5
  !b5
  !a5
  !a5
  !c5
  !b5
  !a5
  !dynamicPan,143,7
  !g5
  !b4
  !b5
  !g5
  !g5
  !b4
  !b5
  !g5
  !g5
  !b4
  !b5
  !g5
  !g5
  !b4
  !b5
  !g5
  !dynamicPan,143,13
  !fs5
  !b4
  !b5
  !fs5
  !g5
  !b4
  !b5
  !fs5
  !g5
  !b4
  !b5
  !fs5
  !g5
  !b4
  !b5
  !g5
  !dynamicPan,143,7
  !g5
  !as4
  !as5
  !g5
  !g5
  !as4
  !as5
  !g5
  !g5
  !as4
  !as5
  !g5
  !g5
  !as4
  !as5
  !g5
  !dynamicPan,143,13
  !g5
  !as4
  !a5
  !g5
  !g5
  !as4
  !a5
  !g5
  !g5
  !as4
  !a5
  !g5
  !g5
  !as4
  !a5
  !g5
  !dynamicPan,143,7
  !f5
  !a4
  !a5
  !f5
  !f5
  !a4
  !a5
  !f5
  !f5
  !a4
  !a5
  !f5
  !f5
  !a4
  !a5
  !f5
  !dynamicPan,143,13
  !f5
  !a4
  !a5
  !f5
  !f5
  !a4
  !a5
  !f5
  !f5
  !b4
  !b5
  !f5
  !f5
  !b4
  !d5
  !b4
  !end

.pattern2_4
  !instr,!instr10
  !volume,105
  !pan,12
  db 9,$47
  !ds6
  !pan,8
  !gs5
  !pan,12
  !g6
  !pan,8
  !ds6
  !pan,12
  !ds6
  !pan,8
  !gs5
  !pan,12
  !g6
  !pan,8
  !ds6
  !pan,12
  !ds6
  !pan,8
  !gs5
  !pan,12
  !g6
  !pan,8
  !ds6
  !pan,12
  !ds6
  !pan,8
  !gs5
  !pan,12
  !g6
  !pan,8
  !ds6
  !pan,12
  !d6
  !pan,8
  !g5
  !pan,12
  !f6
  !pan,8
  !d6
  !pan,12
  !d6
  !pan,8
  !g5
  !pan,12
  !f6
  !pan,8
  !d6
  !pan,12
  !c6
  !pan,8
  !e5
  !pan,12
  !e6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !e5
  !pan,12
  !e6
  !pan,8
  !c6
  !pan,12
  !ds6
  !pan,8
  !gs5
  !pan,12
  !g6
  !pan,8
  !ds6
  !pan,12
  !ds6
  !pan,8
  !gs5
  !pan,12
  !g6
  !pan,8
  !ds6
  !pan,12
  !ds6
  !pan,8
  !gs5
  !pan,12
  !g6
  !pan,8
  !ds6
  !pan,12
  !ds6
  !pan,8
  !gs5
  !pan,12
  !g6
  !pan,8
  !ds6
  !pan,12
  !d6
  !pan,8
  !g5
  !pan,12
  !f6
  !pan,8
  !d6
  !pan,12
  !d6
  !pan,8
  !g5
  !pan,12
  !f6
  !pan,8
  !d6
  !pan,12
  !c6
  !pan,8
  !e5
  !pan,12
  !e6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !e5
  !pan,12
  !e6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !f5
  !pan,12
  !ds6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !f5
  !pan,12
  !ds6
  !pan,8
  !c6
  !pan,12
  !d6
  !pan,8
  !f5
  !pan,12
  !f6
  !pan,8
  !d6
  !pan,12
  !d6
  !pan,8
  !f5
  !pan,12
  !f6
  !pan,8
  !d6
  !pan,12
  !d6
  !pan,8
  !e5
  !pan,12
  !g6
  !pan,8
  !d6
  !pan,12
  !d6
  !pan,8
  !e5
  !pan,12
  !g6
  !pan,8
  !d6
  !pan,12
  !cs6
  !pan,8
  !e5
  !pan,12
  !e6
  !pan,8
  !cs6
  !pan,12
  !cs6
  !pan,8
  !e5
  !pan,12
  !e6
  !pan,8
  !cs6
  !pan,12
  !c6
  !pan,8
  !f5
  !pan,12
  !e6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !f5
  !pan,12
  !e6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !f5
  !pan,12
  !e6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !f5
  !pan,12
  !e6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !f5
  !pan,12
  !e6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !f5
  !pan,12
  !e6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !f5
  !pan,12
  !d6
  !pan,8
  !c6
  !pan,12
  !c6
  !pan,8
  !f5
  !pan,12
  !d6
  !pan,8
  !c6
  !loop : dw .sub5140 : db 2
  !pan,12
  !as5
  !pan,8
  !ds5
  !pan,12
  !d6
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,8
  !ds5
  !pan,12
  !d6
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,8
  !ds5
  !pan,12
  !d6
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,8
  !ds5
  !pan,12
  !d6
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,8
  !ds5
  !pan,12
  !d6
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,8
  !ds5
  !pan,12
  !d6
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,8
  !ds5
  !pan,12
  !c6
  !pan,8
  !as5
  !pan,12
  !as5
  !pan,8
  !ds5
  !pan,12
  !c6
  !pan,8
  !as5
  !pan,12
  !a5
  !pan,8
  !d5
  !pan,12
  !c6
  !pan,8
  !a5
  !pan,12
  !a5
  !pan,8
  !d5
  !pan,12
  !c6
  !pan,8
  !a5
  !pan,12
  !a5
  !pan,8
  !d5
  !pan,12
  !c6
  !pan,8
  !a5
  !pan,12
  !a5
  !pan,8
  !d5
  !pan,12
  !c6
  !pan,8
  !a5
  !pan,12
  !a5
  !pan,8
  !d5
  !pan,12
  !c6
  !pan,8
  !a5
  !pan,12
  !a5
  !pan,8
  !d5
  !pan,12
  !c6
  !pan,8
  !a5
  !pan,12
  !b5
  !pan,8
  !d5
  !pan,12
  !d6
  !pan,8
  !b5
  !pan,12
  !b5
  !pan,8
  !d5
  !pan,12
  !f5
  !pan,8
  !g5
  !end

.sub4F1D
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 9,$71
  %percNote(!instr24-!instr23)
  db 18,$73
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$73
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  !instr,!instr27
  db 18
  !gs5
  !pan,10
  !instr,!instr29
  db 18,$77
  !as4
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 9,$71
  %percNote(!instr24-!instr23)
  !end

.sub4F50
  db 27,$37
  !c3
  db 9,$64
  !c4
  db 18,$37
  !c3
  !c3
  !rest
  db 9,$57
  !c3
  !c3
  !c3
  !c3
  db 18,$37
  !c3
  db 27,$39
  !f2
  db 9,$67
  !f3
  db 18,$39
  !f2
  !f2
  !rest
  db 9,$58
  !g2
  !g2
  !g2
  !g2
  !g2
  db 9,$57
  !b2
  db 27,$37
  !c3
  db 9,$64
  !c4
  db 18,$37
  !c3
  !c3
  !rest
  db 9,$57
  !c3
  !c3
  !c3
  !c3
  db 18,$37
  !c3
  db 27,$3A
  !e2
  db 9,$57
  !e3
  db 9,$5A
  !e2
  db 9,$57
  !e3
  db 18,$3A
  !e2
  db 27,$37
  !a2
  db 9,$56
  !a3
  db 9,$57
  !a2
  db 9,$56
  !a3
  db 9,$57
  !a2
  db 9,$58
  !g2
  db 27,$39
  !f2
  db 9,$67
  !f3
  db 18,$39
  !f2
  !f2
  !rest
  db 9,$57
  !f3
  !f3
  db 9,$59
  !f2
  db 9,$57
  !f3
  db 18,$39
  !f2
  db 27,$3A
  !e2
  db 9,$57
  !e3
  db 9,$5A
  !e2
  db 9,$57
  !e3
  db 18,$3A
  !e2
  db 27,$37
  !a2
  db 9,$56
  !a3
  db 9,$57
  !a2
  db 9,$56
  !a3
  db 9,$57
  !a2
  db 9,$58
  !g2
  db 27,$3B
  !d2
  db 9,$67
  !d3
  db 18,$3B
  !d2
  !d2
  !rest
  db 9,$57
  !d3
  !d3
  db 9,$5B
  !d2
  db 9,$57
  !d3
  db 18,$3B
  !d2
  db 27,$38
  !g2
  db 9,$67
  !g3
  db 18,$38
  !g2
  !g2
  !rest
  db 9,$58
  !g2
  !g2
  !g2
  !g2
  db 9,$57
  !a2
  !b2
  !end

.sub5015
  db 9,$57
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !b4
  !d5
  !f5
  !f4
  !b4
  !d5
  !b4
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !b4
  !d5
  !e4
  !g4
  !b4
  !d5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !end

.sub5058
  !e4
  !g4
  !b4
  !d5
  !e4
  !g4
  !b4
  !d5
  !e4
  !g4
  !c5
  !e5
  !e4
  !g4
  !c5
  !e5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !f4
  !a4
  !c5
  !f5
  !end

.sub5079
  db 9,$57
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !a5
  !b4
  !d5
  !f5
  !b5
  !b4
  !d5
  !f5
  !d5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !c5
  !e5
  !g5
  !g4
  !b4
  !d5
  !g5
  !g4
  !b4
  !d5
  !g5
  !a4
  !c5
  !e5
  !g5
  !a4
  !c5
  !e5
  !g5
  !end

.sub50BC
  !g4
  !b4
  !d5
  !fs5
  !g4
  !b4
  !d5
  !fs5
  !a4
  !c5
  !e5
  !g5
  !a4
  !c5
  !e5
  !rest
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !a5
  !a4
  !c5
  !f5
  !a5
  !end

.sub50DD
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 9,$71
  %percNote(!instr24-!instr23)
  db 18,$73
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$73
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  !instr,!instr27
  db 18
  !gs5
  !pan,10
  !instr,!instr29
  db 18,$77
  !as4
  db 9,$72
  %percNote(!instr27-!instr23)
  db 9,$73
  %percNote(!instr27-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 9,$71
  %percNote(!instr24-!instr23)
  db 18,$73
  %percNote(!instr24-!instr23)
  !pan,10
  db 18,$77
  %percNote(!instr23-!instr23)
  !pan,12
  db 9,$73
  %percNote(!instr24-!instr23)
  db 9,$72
  %percNote(!instr24-!instr23)
  !pan,8
  !instr,!instr27
  db 18
  !gs5
  !pan,10
  !instr,!instr29
  db 18,$77
  !as4
  !pan,12
  db 9,$72
  %percNote(!instr24-!instr23)
  db 9,$71
  %percNote(!instr24-!instr23)
  !end

.sub5140
  !pan,12
  !b5
  !pan,8
  !e5
  !pan,12
  !d6
  !pan,8
  !b5
  !pan,12
  !b5
  !pan,8
  !e5
  !pan,12
  !d6
  !pan,8
  !b5
  !pan,12
  !b5
  !pan,8
  !e5
  !pan,12
  !d6
  !pan,8
  !b5
  !pan,12
  !b5
  !pan,8
  !e5
  !pan,12
  !d6
  !pan,8
  !b5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
