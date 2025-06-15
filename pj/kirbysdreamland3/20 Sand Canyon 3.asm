asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr09 = $17
!instr15 = $18
!instr16 = $19
!instr19 = $1A
!instr1B = $1B
!instr1C = $1C
!instr21 = $1D
!instr23 = $1E
!instr24 = $1F
!instr27 = $20

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$04,$00
  db !instr09,$FF,$F3,$B8,$04,$00
  db !instr15,$88,$0D,$B8,$03,$C0
  db !instr16,$87,$0D,$B8,$03,$C0
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+1098
  dw Sample07_08_09,Sample07_08_09+360
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample15_16_17_18_19,Sample15_16_17_18_19+18
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample07_08_09: incbin "Sample_38e63eed215c29c5a4534a9767604a6d.brr"
  Sample15_16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"

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
  dw .pattern4
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, 0, 0, 0
.pattern3: dw .pattern3_0, .pattern3_1, .pattern3_2, .pattern3_3, .pattern3_4, 0, 0, 0
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !musicVolume,255
  !tempo,46
  !echo,%00011100,45,45
  !echoParameters,4,60,0
  !volume,255
  !pan,10
  db 18,$76
  %percNote(!instr23-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,0
  !c5
  !pan,10
  db 36,$75
  %percNote(!instr27-!instr23)
  db 18,$73
  %percNote(!instr23-!instr23)
  !loop : dw .sub5405 : db 3
  db 18,$76
  %percNote(!instr23-!instr23)
  db 18,$73
  %percNote(!instr27-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,10
  db 18,$73
  %percNote(!instr23-!instr23)
  db 18,$77
  %percNote(!instr27-!instr23)
  !pan,0
  !instr,!instr24
  db 18,$72
  !c4
  !end

.pattern0_1
  !instr,!instr21
  !volume,180
  !pan,10
  !loop : dw .sub5439 : db 1
  db 54,$38
  !g2
  db 18,$17
  !d3
  db 36,$68
  !g2
  db 18
  !rest
  db 18,$17
  !g3
  !d3
  db 18,$18
  !g2
  db 18,$17
  !g3
  db 18,$58
  !g2
  !loop : dw .sub5439 : db 1
  db 54,$37
  !as2
  db 18,$17
  !f3
  db 36,$67
  !as2
  db 18
  !rest
  db 18,$17
  !as3
  !f3
  !as2
  db 18,$46
  !as3
  db 18,$57
  !as2
  !end

.pattern0_2
  !subtranspose,0
  !instr,!instr1B
  !volume,175
  !vibrato,18,10,40
  !pan,10
  db 54,$58
  !b6
  db 18,$67
  !c7
  db 36
  !d7
  !b6
  !pitchSlide,5,1 : !c7
  !pitchSlide,4,1 : !b6
  db 36,$57
  !a6
  !g6
  !as6
  !a6
  !g6
  !f6
  !d6
  !as5
  db 54
  !b6
  db 18,$67
  !c7
  db 36
  !d7
  !b6
  !pitchSlide,6,1 : !c7
  !pitchSlide,4,1 : !b6
  db 36,$57
  !a6
  !g6
  !e7
  !f7
  !g7
  db 72,$77
  !d7
  db 36,$28
  !tie
  !end

.pattern0_3
  !endTremolo
  !endVibrato
  !subtranspose,0
  !instr,!instr09
  !pan,12
  !volume,190
  !loop : dw .sub5450 : db 2
  !loop : dw .sub5475 : db 2
  !loop : dw .sub5450 : db 2
  !loop : dw .sub549A : db 2
  !end

.pattern0_4
  !endTremolo
  !endVibrato
  !instr,!instr09
  !pan,8
  !volume,190
  !loop : dw .sub54BF : db 2
  !loop : dw .sub54E4 : db 2
  !loop : dw .sub54BF : db 2
  !loop : dw .sub5509 : db 2
  !end

.pattern1_0
  !pan,10
  db 18,$76
  %percNote(!instr23-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,0
  !c5
  !pan,10
  db 36,$75
  %percNote(!instr27-!instr23)
  db 18,$73
  %percNote(!instr23-!instr23)
  !loop : dw .sub5405 : db 3
  db 18,$76
  %percNote(!instr23-!instr23)
  db 18,$73
  %percNote(!instr27-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,10
  db 18,$73
  %percNote(!instr23-!instr23)
  db 18,$77
  %percNote(!instr27-!instr23)
  %percNote(!instr27-!instr23)
  !end

.pattern1_1
  db 54,$37
  !cs3
  db 18,$17
  !gs3
  db 18,$57
  !cs3
  !c3
  !rest
  db 18,$17
  !as2
  !as2
  !f3
  db 36,$47
  !as2
  db 54,$37
  !ds3
  db 18,$17
  !ds3
  db 18,$57
  !as3
  !ds3
  !rest
  db 18,$17
  !d3
  db 18,$57
  !d3
  db 18,$17
  !a3
  db 18,$57
  !d3
  db 18,$17
  !a3
  db 54,$37
  !c3
  db 18,$17
  !g3
  db 36,$67
  !c3
  db 18
  !rest
  db 18,$17
  !cs3
  db 18,$57
  !cs3
  db 18,$17
  !gs3
  db 36,$37
  !cs3
  db 18
  !rest
  db 18,$17
  !fs3
  db 18,$57
  !fs3
  db 18,$17
  !cs4
  db 18,$67
  !fs3
  !f3
  !e3
  db 18,$17
  !e3
  db 18,$67
  !e3
  db 18,$17
  !b3
  db 36,$67
  !e3
  !end

.pattern1_2
  !subtranspose,60
  !volume,165
  !instr,!instr16
  !vibrato,0,12,60
  db 36,$77
  !cs7
  db 36,$76
  !ds7
  !f7
  db 36,$77
  !c7
  db 36,$76
  !gs6
  !f6
  db 36,$77
  !g6
  db 36,$74
  !gs6
  db 36,$77
  !as6
  !c7
  db 72,$74
  !f6
  db 36,$77
  !ds6
  !f6
  !g6
  db 36,$78
  !gs6
  db 36,$76
  !as6
  db 36,$74
  !b6
  db 36,$78
  !as6
  db 36,$76
  !b6
  !cs7
  db 54,$77
  !d7
  db 54,$73
  !e7
  !end

.pattern1_3
  !instr,!instr1C
  !volume,170
  !pan,12
  db 9,$67
  !gs4
  db 9,$63
  !gs4
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !f4
  db 9,$63
  !f4
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !ds4
  db 9,$63
  !ds4
  db 9,$67
  !g5
  db 9,$63
  !g5
  db 9,$67
  !as5
  db 9,$63
  !as5
  db 9,$67
  !g5
  db 9,$63
  !g5
  db 9,$67
  !as5
  db 9,$63
  !as5
  db 9,$67
  !g5
  db 9,$63
  !g5
  db 9,$67
  !d4
  db 9,$63
  !d4
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !a5
  db 9,$63
  !a5
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !a5
  db 9,$63
  !a5
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !c4
  db 9,$63
  !c4
  db 9,$67
  !ds5
  db 9,$63
  !ds5
  db 9,$67
  !g5
  db 9,$63
  !g5
  db 9,$67
  !ds5
  db 9,$63
  !ds5
  db 9,$67
  !g5
  db 9,$63
  !g5
  db 9,$67
  !ds5
  db 9,$63
  !ds5
  db 9,$67
  !gs4
  db 9,$63
  !gs4
  db 9,$67
  !e5
  db 9,$63
  !e5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !e5
  db 9,$63
  !e5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !e5
  db 9,$63
  !e5
  db 9,$67
  !cs4
  db 9,$63
  !cs4
  db 9,$67
  !e5
  db 9,$63
  !e5
  db 9,$67
  !fs5
  db 9,$63
  !fs5
  db 9,$67
  !e5
  db 9,$63
  !e5
  db 9,$67
  !fs5
  db 9,$63
  !fs5
  db 9,$67
  !e5
  db 9,$63
  !e5
  db 9,$67
  !e4
  db 9,$63
  !e4
  db 9,$67
  !e5
  db 9,$63
  !e5
  db 9,$67
  !a5
  db 9,$63
  !a5
  db 9,$67
  !e5
  db 9,$63
  !e5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !d5
  db 9,$63
  !d5
  !end

.pattern1_4
  !instr,!instr1C
  !volume,170
  !pan,8
  db 9,$67
  !cs5
  db 9,$63
  !cs5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !cs6
  db 9,$63
  !cs6
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !cs6
  db 9,$63
  !cs6
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !as4
  db 9,$63
  !as4
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !cs6
  db 9,$63
  !cs6
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !cs6
  db 9,$63
  !cs6
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !as4
  db 9,$63
  !as4
  db 9,$67
  !as5
  db 9,$63
  !as5
  db 9,$67
  !cs6
  db 9,$63
  !cs6
  db 9,$67
  !as5
  db 9,$63
  !as5
  db 9,$67
  !cs6
  db 9,$63
  !cs6
  db 9,$67
  !as5
  db 9,$63
  !as5
  db 9,$67
  !a4
  db 9,$63
  !a4
  db 9,$67
  !a5
  db 9,$63
  !a5
  db 9,$67
  !c6
  db 9,$63
  !c6
  db 9,$67
  !a5
  db 9,$63
  !a5
  db 9,$67
  !c6
  db 9,$63
  !c6
  db 9,$67
  !a5
  db 9,$63
  !a5
  db 9,$67
  !g4
  db 9,$63
  !g4
  db 9,$67
  !g5
  db 9,$63
  !g5
  db 9,$67
  !as5
  db 9,$63
  !as5
  db 9,$67
  !g5
  db 9,$63
  !g5
  db 9,$67
  !as5
  db 9,$63
  !as5
  db 9,$67
  !g5
  db 9,$63
  !g5
  db 9,$67
  !cs5
  db 9,$63
  !cs5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !b5
  db 9,$63
  !b5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !b5
  db 9,$63
  !b5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  db 9,$67
  !fs4
  db 9,$63
  !fs4
  db 9,$67
  !fs5
  db 9,$63
  !fs5
  db 9,$67
  !as5
  db 9,$63
  !as5
  db 9,$67
  !fs5
  db 9,$63
  !fs5
  db 9,$67
  !as5
  db 9,$63
  !as5
  db 9,$67
  !fs5
  db 9,$63
  !fs5
  db 9,$67
  !b4
  db 9,$63
  !b4
  db 9,$67
  !a5
  db 9,$63
  !a5
  db 9,$67
  !b5
  db 9,$63
  !b5
  db 9,$67
  !a5
  db 9,$63
  !a5
  db 9,$67
  !b5
  db 9,$63
  !b5
  db 9,$67
  !gs5
  db 9,$63
  !gs5
  !end

.pattern2_0
  !percBase,!instr23
  !musicVolume,255
  !tempo,46
  !echo,%00011100,45,45
  !echoParameters,4,60,0
  !volume,255
  !pan,10
  db 18,$76
  %percNote(!instr23-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,0
  !c5
  !pan,10
  db 36,$75
  %percNote(!instr27-!instr23)
  db 18,$73
  %percNote(!instr23-!instr23)
  !loop : dw .sub5405 : db 3
  db 18,$76
  %percNote(!instr23-!instr23)
  db 18,$73
  %percNote(!instr27-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,10
  db 18,$73
  %percNote(!instr23-!instr23)
  db 18,$77
  %percNote(!instr27-!instr23)
  !pan,0
  !instr,!instr24
  db 18,$72
  !c4
  !end

.pattern2_1
  !instr,!instr21
  !volume,180
  !pan,10
  !loop : dw .sub5439 : db 1
  db 54,$38
  !g2
  db 18,$17
  !d3
  db 36,$68
  !g2
  db 18
  !rest
  db 18,$17
  !g3
  !d3
  db 18,$18
  !g2
  db 18,$17
  !g3
  db 18,$58
  !g2
  !loop : dw .sub5439 : db 1
  db 54,$37
  !as2
  db 18,$17
  !f3
  db 36,$67
  !as2
  db 18
  !rest
  db 18,$17
  !as3
  !f3
  !as2
  db 18,$46
  !as3
  db 18,$57
  !as2
  !end

.pattern2_2
  !subtranspose,0
  !instr,!instr1B
  !volume,175
  !vibrato,18,10,40
  !pan,10
  db 54,$58
  !b6
  db 18,$67
  !c7
  db 36
  !d7
  !b6
  !pitchSlide,5,1 : !c7
  !pitchSlide,4,1 : !b6
  db 36,$57
  !a6
  !g6
  !as6
  !a6
  !g6
  !f6
  !d6
  !as5
  db 54
  !b6
  db 18,$67
  !c7
  db 36
  !d7
  !b6
  !pitchSlide,6,1 : !c7
  !pitchSlide,4,1 : !b6
  db 36,$57
  !a6
  !g6
  !e7
  !f7
  !g7
  db 72,$77
  !d7
  db 36,$28
  !tie
  !end

.pattern2_3
  !endTremolo
  !endVibrato
  !subtranspose,0
  !instr,!instr09
  !pan,12
  !volume,190
  !loop : dw .sub5450 : db 2
  !loop : dw .sub5475 : db 2
  !loop : dw .sub5450 : db 2
  !loop : dw .sub549A : db 2
  !end

.pattern2_4
  !endTremolo
  !endVibrato
  !instr,!instr09
  !pan,8
  !volume,190
  !loop : dw .sub54BF : db 2
  !loop : dw .sub54E4 : db 2
  !loop : dw .sub54BF : db 2
  !loop : dw .sub5509 : db 2
  !end

.pattern3_0
  !pan,10
  db 18,$76
  %percNote(!instr23-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,0
  !c5
  !pan,10
  db 36,$75
  %percNote(!instr27-!instr23)
  db 18,$73
  %percNote(!instr23-!instr23)
  !loop : dw .sub5405 : db 3
  db 18,$76
  %percNote(!instr23-!instr23)
  db 18,$73
  %percNote(!instr27-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,10
  db 18,$73
  %percNote(!instr23-!instr23)
  db 9,$77
  %percNote(!instr27-!instr23)
  db 9,$74
  %percNote(!instr27-!instr23)
  db 18,$77
  %percNote(!instr27-!instr23)
  !end

.pattern3_1
  db 54,$37
  !c3
  db 18,$17
  !g3
  db 36,$47
  !c3
  db 18
  !rest
  db 18,$17
  !cs3
  db 18,$57
  !cs3
  db 18,$17
  !gs3
  db 36,$47
  !cs3
  db 18
  !rest
  db 18,$17
  !fs3
  db 18,$57
  !fs3
  db 18,$27
  !cs4
  db 9,$77
  !fs3
  !cs4
  db 18,$57
  !fs3
  !g3
  db 18,$17
  !c3
  db 18,$57
  !c3
  !g3
  !c3
  db 18,$17
  !g3
  !rest
  db 18,$67
  !f3
  !f3
  db 18,$17
  !c4
  db 18,$57
  !f3
  !c4
  !rest
  !as2
  !as2
  !as3
  db 36,$37
  !as2
  db 18
  !rest
  db 18,$17
  !d3
  db 18,$57
  !d3
  !d4
  !f3
  db 18,$52
  !f4
  db 18,$57
  !e4
  !b3
  db 18,$17
  !e3
  !e4
  db 18,$68
  !e3
  !ds3
  !end

.pattern3_2
  !endVibrato
  !instr,!instr21
  !volume,135
  !pan,0
  !dynamicPan,108,15
  db 9,$67
  !ds5
  db 9,$62
  !c5
  db 9,$67
  !c5
  db 9,$62
  !ds5
  db 9,$67
  !g5
  db 9,$62
  !c5
  db 9,$67
  !ds5
  db 9,$62
  !g5
  db 9,$67
  !as5
  db 9,$62
  !ds5
  db 9,$67
  !g5
  db 9,$62
  !as5
  !dynamicPan,108,5
  db 9,$67
  !e5
  db 9,$62
  !cs5
  db 9,$67
  !cs5
  db 9,$62
  !e5
  db 9,$67
  !gs5
  db 9,$62
  !cs5
  db 9,$67
  !e5
  db 9,$62
  !gs5
  db 9,$67
  !b5
  db 9,$62
  !e5
  db 9,$67
  !gs5
  db 9,$62
  !b5
  !dynamicPan,108,15
  db 9,$67
  !e5
  db 9,$62
  !cs5
  db 9,$67
  !cs5
  db 9,$62
  !e5
  db 9,$67
  !fs5
  db 9,$62
  !cs5
  db 9,$67
  !e5
  db 9,$62
  !fs5
  db 9,$67
  !as5
  db 9,$62
  !e5
  db 9,$67
  !fs5
  db 9,$62
  !as5
  !dynamicPan,108,5
  db 9,$67
  !ds5
  db 9,$62
  !c5
  db 9,$67
  !c5
  db 9,$62
  !ds5
  db 9,$67
  !g5
  db 9,$62
  !c5
  db 9,$67
  !ds5
  db 9,$62
  !g5
  db 9,$67
  !as5
  db 9,$62
  !ds5
  db 9,$67
  !g5
  db 9,$62
  !as5
  !dynamicPan,108,15
  db 9,$67
  !ds5
  db 9,$62
  !c5
  db 9,$67
  !c5
  db 9,$62
  !ds5
  db 9,$67
  !f5
  db 9,$62
  !c5
  db 9,$67
  !ds5
  db 9,$62
  !f5
  db 9,$67
  !a5
  db 9,$62
  !ds5
  db 9,$67
  !f5
  db 9,$62
  !a5
  !dynamicPan,108,5
  db 9,$67
  !d5
  db 9,$62
  !as4
  db 9,$67
  !as4
  db 9,$62
  !d5
  db 9,$67
  !f5
  db 9,$62
  !as4
  db 9,$67
  !d5
  db 9,$62
  !f5
  db 9,$67
  !a5
  db 9,$62
  !d5
  db 9,$67
  !f5
  db 9,$62
  !a5
  !dynamicPan,108,15
  db 9,$67
  !d5
  db 9,$62
  !b4
  db 9,$67
  !b4
  db 9,$62
  !d5
  db 9,$67
  !f5
  db 9,$62
  !b4
  db 9,$67
  !d5
  db 9,$62
  !f5
  db 9,$67
  !gs5
  db 9,$62
  !d5
  db 9,$67
  !f5
  db 9,$62
  !gs5
  !dynamicPan,108,5
  db 9,$67
  !d5
  db 9,$62
  !b4
  db 9,$67
  !b4
  db 9,$62
  !d5
  db 9,$67
  !e5
  db 9,$62
  !b4
  db 9,$67
  !d5
  db 9,$62
  !e5
  db 9,$67
  !gs5
  db 9,$62
  !d5
  db 9,$67
  !e5
  db 9,$62
  !gs5
  !end

.pattern3_3
  !subtranspose,0
  !volume,170
  !pan,9
  !instr,!instr1C
  !tremolo,0,12,100
  !vibrato,18,16,40
  db 36,$68
  !c6
  db 36,$66
  !d6
  !ds6
  db 36,$68
  !e6
  db 36,$66
  !fs6
  !gs6
  db 36,$68
  !fs6
  db 36,$66
  !gs6
  !as6
  db 36,$68
  !c7
  db 36,$66
  !ds6
  !as6
  db 36,$68
  !c7
  db 36,$66
  !f6
  !c7
  db 36,$68
  !a6
  db 36,$66
  !d6
  !a6
  db 36,$68
  !b6
  db 36,$66
  !f6
  db 36,$68
  !b6
  db 54,$67
  !a6
  db 54,$63
  !gs6
  !end

.pattern3_4
  !subtranspose,0
  !volume,175
  !pan,11
  !instr,!instr1C
  !tremolo,0,12,100
  !vibrato,18,16,40
  db 36,$68
  !ds6
  db 36,$66
  !f6
  !g6
  db 36,$68
  !gs6
  db 36,$66
  !as6
  !b6
  db 36,$68
  !as6
  db 36,$66
  !b6
  !cs7
  db 36,$68
  !ds7
  db 36,$66
  !g6
  !ds7
  db 36,$68
  !ds7
  db 36,$66
  !a6
  !ds7
  db 36,$68
  !d7
  db 36,$66
  !f6
  !d7
  db 36,$68
  !d7
  db 36,$66
  !gs6
  db 36,$68
  !d7
  db 54,$67
  !d7
  db 54,$63
  !e7
  !end

.pattern4_0
  !pan,10
  db 18,$76
  %percNote(!instr23-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,0
  !c5
  !pan,10
  db 36,$75
  %percNote(!instr27-!instr23)
  db 18,$73
  %percNote(!instr23-!instr23)
  !loop : dw .sub5405 : db 3
  db 18,$76
  %percNote(!instr23-!instr23)
  db 18,$73
  %percNote(!instr27-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,10
  db 18,$73
  %percNote(!instr23-!instr23)
  db 18,$77
  %percNote(!instr27-!instr23)
  %percNote(!instr27-!instr23)
  !pan,10
  db 18,$76
  %percNote(!instr23-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,0
  !c5
  !pan,10
  db 36,$75
  %percNote(!instr27-!instr23)
  db 18,$73
  %percNote(!instr23-!instr23)
  !loop : dw .sub5405 : db 3
  db 18,$76
  %percNote(!instr23-!instr23)
  db 18,$73
  %percNote(!instr27-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,10
  db 18,$73
  %percNote(!instr23-!instr23)
  db 9,$77
  %percNote(!instr27-!instr23)
  db 9,$74
  %percNote(!instr27-!instr23)
  db 18,$77
  %percNote(!instr27-!instr23)
  !end

.pattern4_1
  db 54,$38
  !d3
  db 18,$17
  !a3
  db 18,$57
  !d3
  db 18,$17
  !a3
  db 18,$16
  !d4
  db 36,$57
  !d3
  db 18,$17
  !a3
  db 18,$56
  !d4
  db 18,$17
  !d3
  db 54,$37
  !a2
  db 18,$17
  !e3
  db 18,$56
  !b3
  db 18,$16
  !c4
  db 18,$18
  !a3
  db 36,$67
  !c3
  db 18,$17
  !a3
  db 18,$57
  !a2
  db 18,$17
  !e3
  db 54,$37
  !d3
  db 18,$17
  !d3
  db 18,$57
  !a3
  db 18,$17
  !d3
  db 18,$16
  !d4
  db 36,$57
  !d3
  db 18,$17
  !a3
  db 18,$57
  !d3
  db 18,$17
  !a3
  db 54,$37
  !c3
  db 18,$17
  !g3
  db 18,$56
  !c4
  db 18,$17
  !g3
  db 18,$16
  !c4
  db 18,$57
  !c3
  !c3
  db 18,$27
  !g3
  db 18,$56
  !c4
  db 18,$17
  !g3
  db 54,$37
  !as2
  db 18,$17
  !f3
  db 18,$57
  !as3
  db 18,$17
  !f3
  !rest
  !as3
  db 18,$57
  !f3
  !as3
  !as2
  !as3
  db 54,$37
  !d3
  db 18,$17
  !a3
  db 18,$56
  !d4
  db 18,$17
  !a3
  !rest
  !d3
  db 18,$57
  !d3
  db 18,$17
  !a3
  db 18,$56
  !d4
  db 18,$57
  !a3
  db 54,$37
  !g2
  db 18,$17
  !g3
  db 18,$57
  !g2
  !g3
  !rest
  db 18,$27
  !a2
  db 18,$57
  !a2
  !a3
  !a2
  !a3
  !rest
  db 18,$27
  !as2
  db 18,$57
  !as2
  !as3
  !as2
  !as3
  !rest
  !e3
  !e3
  !d4
  db 9,$77
  !e4
  !b3
  db 18
  !e3
  !end

.pattern4_2
  !subtranspose,60
  !instr,!instr19
  !pan,10
  !vibrato,0,17,40
  !volume,60
  !dynamicVolume,60,165
  db 72,$76
  !e7
  db 18,$77
  !d7
  !c7
  db 36
  !b6
  !c7
  !instr,!instr15
  !d7
  !instr,!instr19
  db 54
  !a6
  db 27,$76
  !b6
  db 27,$74
  !c7
  !instr,!instr15
  db 72,$76
  !e6
  !instr,!instr19
  !volume,60
  !dynamicVolume,20,165
  db 36,$78
  !e6
  !volume,60
  !dynamicVolume,50,165
  db 72,$76
  !e7
  db 18,$77
  !d7
  !c7
  db 36
  !b6
  !c7
  !instr,!instr15
  !d7
  !instr,!instr19
  !volume,60
  !dynamicVolume,60,165
  db 72,$76
  !g7
  db 36,$75
  !a7
  db 36,$66
  !e7
  db 36,$76
  !e7
  !g7
  !instr,!instr19
  !volume,60
  !dynamicVolume,60,165
  db 72,$75
  !a7
  db 18,$76
  !g7
  !f7
  db 36,$77
  !e7
  db 37,$76
  !f7
  db 35,$75
  !g7
  !volume,100
  !dynamicVolume,50,165
  db 54,$78
  !a6
  db 27,$77
  !f7
  db 27,$76
  !e7
  !instr,!instr15
  db 72,$75
  !a6
  !instr,!instr19
  db 18,$76
  !g6
  db 18,$77
  !a6
  !volume,60
  !dynamicVolume,60,165
  db 72
  !as6
  db 18
  !a6
  !as6
  db 36
  !c7
  !as6
  !c7
  !volume,60
  !dynamicVolume,80,165
  db 108
  !d7
  !volume,60
  !dynamicVolume,80,175
  db 90
  !e7
  db 18
  !rest
  !end

.pattern4_3
  !instr,!instr01
  !volume,155
  !endTremolo
  !endVibrato
  !pan,12
  db 8,$67
  !d5
  !pan,0
  db 9,$62
  !d5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !d5
  !pan,0
  db 9,$62
  !d5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !loop : dw .sub552E : db 2
  !pan,12
  db 9,$67
  !d5
  !pan,0
  db 9,$62
  !d5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !d5
  !pan,0
  db 9,$62
  !d5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !b5
  !pan,0
  db 9,$62
  !b5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !loop : dw .sub556B : db 2
  !loop : dw .sub55A8 : db 3
  !pan,12
  db 9,$67
  !c5
  !pan,0
  db 9,$62
  !c5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !d5
  !pan,0
  db 9,$62
  !d5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !d5
  !pan,0
  db 9,$62
  !d5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !d5
  !pan,0
  db 9,$62
  !d5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !pan,12
  db 9,$67
  !g5
  !pan,0
  db 9,$62
  !g5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !pan,12
  db 9,$67
  !g5
  !pan,0
  db 9,$62
  !g5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !pan,12
  db 9,$67
  !g5
  !pan,0
  db 9,$62
  !g5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !gs5
  !pan,0
  db 9,$62
  !gs5
  !pan,12
  db 9,$67
  !b5
  !pan,0
  db 10,$62
  !b5
  !end

.pattern4_4
  !instr,!instr01
  !volume,155
  !endTremolo
  !endVibrato
  !pan,8
  db 8,$67
  !f5
  !pan,20
  db 9,$62
  !f5
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !f5
  !pan,20
  db 9,$62
  !f5
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !d6
  !pan,20
  db 9,$62
  !d6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !loop : dw .sub55E5 : db 2
  !pan,8
  db 9,$67
  !f5
  !pan,20
  db 9,$62
  !f5
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !f5
  !pan,20
  db 9,$62
  !f5
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !d6
  !pan,20
  db 9,$62
  !d6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !loop : dw .sub5622 : db 2
  !loop : dw .sub565F : db 2
  !loop : dw .sub569C : db 2
  !pan,8
  db 9,$67
  !g5
  !pan,20
  db 9,$62
  !g5
  !pan,8
  db 9,$67
  !as5
  !pan,20
  db 9,$62
  !as5
  !pan,8
  db 9,$67
  !g5
  !pan,20
  db 9,$62
  !g5
  !pan,8
  db 9,$67
  !as5
  !pan,20
  db 9,$62
  !as5
  !pan,8
  db 9,$67
  !g5
  !pan,20
  db 9,$62
  !g5
  !pan,8
  db 9,$67
  !as5
  !pan,20
  db 9,$62
  !as5
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !g5
  !pan,20
  db 9,$62
  !g5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !as5
  !pan,20
  db 9,$62
  !as5
  !pan,8
  db 9,$67
  !d6
  !pan,20
  db 9,$62
  !d6
  !pan,8
  db 9,$67
  !as5
  !pan,20
  db 9,$62
  !as5
  !pan,8
  db 9,$67
  !d6
  !pan,20
  db 9,$62
  !d6
  !pan,8
  db 9,$67
  !as5
  !pan,20
  db 9,$62
  !as5
  !pan,8
  db 9,$67
  !d6
  !pan,20
  db 9,$62
  !d6
  !pan,8
  db 9,$67
  !b5
  !pan,20
  db 9,$62
  !b5
  !pan,8
  db 9,$67
  !d6
  !pan,20
  db 9,$62
  !d6
  !pan,8
  db 9,$67
  !b5
  !pan,20
  db 9,$62
  !b5
  !pan,8
  db 9,$67
  !d6
  !pan,20
  db 9,$62
  !d6
  !pan,8
  db 9,$67
  !b5
  !pan,20
  db 9,$62
  !b5
  !pan,8
  db 9,$67
  !d6
  !pan,20
  db 10,$62
  !d6
  !end

.sub5405
  db 18,$76
  %percNote(!instr23-!instr23)
  db 18,$73
  %percNote(!instr27-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,10
  db 18,$73
  %percNote(!instr23-!instr23)
  db 18,$77
  %percNote(!instr27-!instr23)
  !pan,0
  !instr,!instr24
  db 18,$72
  !c4
  !pan,10
  db 18,$76
  %percNote(!instr23-!instr23)
  !pan,20
  !instr,!instr24
  db 18,$72
  !c4
  !pan,0
  !c5
  !pan,10
  db 36,$75
  %percNote(!instr27-!instr23)
  db 18,$73
  %percNote(!instr23-!instr23)
  !end

.sub5439
  db 54,$37
  !a2
  db 18,$17
  !e3
  db 36,$67
  !a2
  db 18
  !rest
  db 18,$17
  !a3
  !e3
  !a2
  db 18,$57
  !e3
  db 18,$17
  !a2
  !end

.sub5450
  db 9,$67
  !a3
  db 9,$63
  !a3
  db 9,$67
  !a4
  db 9,$63
  !a4
  db 9,$67
  !c5
  db 9,$63
  !c5
  db 9,$67
  !c5
  db 9,$63
  !c5
  db 9,$67
  !g5
  db 9,$63
  !g5
  db 9,$67
  !e5
  db 9,$63
  !e5
  !end

.sub5475
  db 9,$67
  !g3
  db 9,$63
  !g3
  db 9,$67
  !g4
  db 9,$63
  !g4
  db 9,$67
  !as4
  db 9,$63
  !as4
  db 9,$67
  !as4
  db 9,$63
  !as4
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !d5
  db 9,$63
  !d5
  !end

.sub549A
  db 9,$67
  !as3
  db 9,$63
  !as3
  db 9,$67
  !as4
  db 9,$63
  !as4
  db 9,$67
  !d5
  db 9,$63
  !d5
  db 9,$67
  !d5
  db 9,$63
  !d5
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !d5
  db 9,$63
  !d5
  !end

.sub54BF
  db 9,$67
  !e4
  db 9,$63
  !e4
  db 9,$67
  !e5
  db 9,$63
  !e5
  db 9,$67
  !g5
  db 9,$63
  !g5
  db 9,$67
  !e5
  db 9,$63
  !e5
  db 9,$67
  !b5
  db 9,$63
  !b5
  db 9,$67
  !g5
  db 9,$63
  !g5
  !end

.sub54E4
  db 9,$67
  !d4
  db 9,$63
  !d4
  db 9,$67
  !d5
  db 9,$63
  !d5
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !d5
  db 9,$63
  !d5
  db 9,$67
  !a5
  db 9,$63
  !a5
  db 9,$67
  !f5
  db 9,$63
  !f5
  !end

.sub5509
  db 9,$67
  !f4
  db 9,$63
  !f4
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !a5
  db 9,$63
  !a5
  db 9,$67
  !f5
  db 9,$63
  !f5
  db 9,$67
  !c6
  db 9,$63
  !c6
  db 9,$67
  !f5
  db 9,$63
  !f5
  !end

.sub552E
  !pan,12
  db 9,$67
  !c5
  !pan,0
  db 9,$62
  !c5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !end

.sub556B
  !pan,12
  db 9,$67
  !c5
  !pan,0
  db 9,$62
  !c5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !pan,12
  db 9,$67
  !g5
  !pan,0
  db 9,$62
  !g5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !pan,12
  db 9,$67
  !g5
  !pan,0
  db 9,$62
  !g5
  !pan,12
  db 9,$67
  !e5
  !pan,0
  db 9,$62
  !e5
  !end

.sub55A8
  !pan,12
  db 9,$67
  !d5
  !pan,0
  db 9,$62
  !d5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !pan,12
  db 9,$67
  !a5
  !pan,0
  db 9,$62
  !a5
  !pan,12
  db 9,$67
  !f5
  !pan,0
  db 9,$62
  !f5
  !end

.sub55E5
  !pan,8
  db 9,$67
  !e5
  !pan,20
  db 9,$62
  !e5
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !end

.sub5622
  !pan,8
  db 9,$67
  !e5
  !pan,20
  db 9,$62
  !e5
  !pan,8
  db 9,$67
  !g5
  !pan,20
  db 9,$62
  !g5
  !pan,8
  db 9,$67
  !b5
  !pan,20
  db 9,$62
  !b5
  !pan,8
  db 9,$67
  !g5
  !pan,20
  db 9,$62
  !g5
  !pan,8
  db 9,$67
  !b5
  !pan,20
  db 9,$62
  !b5
  !pan,8
  db 9,$67
  !g5
  !pan,20
  db 9,$62
  !g5
  !end

.sub565F
  !pan,8
  db 9,$67
  !f5
  !pan,20
  db 9,$62
  !f5
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !d6
  !pan,20
  db 9,$62
  !d6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !d6
  !pan,20
  db 9,$62
  !d6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !end

.sub569C
  !pan,8
  db 9,$67
  !f5
  !pan,20
  db 9,$62
  !f5
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !pan,8
  db 9,$67
  !c6
  !pan,20
  db 9,$62
  !c6
  !pan,8
  db 9,$67
  !a5
  !pan,20
  db 9,$62
  !a5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
