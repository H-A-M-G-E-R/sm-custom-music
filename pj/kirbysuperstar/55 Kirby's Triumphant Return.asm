asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr19 = $17
!instr2B = $18
!instr31 = $19
!instr34 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr19,$8A,$E0,$B8,$03,$C0
  db !instr2B,$8F,$E0,$B8,$07,$00
  db !instr31,$FD,$F1,$B8,$07,$40
  db !instr34,$FF,$E0,$B8,$04,$80
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+1098
  dw Sample16_17_18_19,Sample16_17_18_19+18
  dw Sample29_2A_2B,Sample29_2A_2B+18
  dw Sample31,Sample31+27
  dw Sample34,Sample34+2124
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample_597885badf16ef687d2c14d944999a26.brr"
  Sample16_17_18_19: incbin "Sample_d1842b259feb27e396ef897577cd260b.brr"
  Sample29_2A_2B: incbin "Sample_ed9540ea99359596954e1abffadc2f77.brr"
  Sample31: incbin "Sample_997ae0fd998037789f5b8dc17e49af0b.brr"
  Sample34: incbin "Sample_deadfac8fb90983ab9614fd75bc82e34.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
  dw .pattern1
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr31
  !musicVolume,255
  !tempo,51
  !echoParameters,5,70,0
  !echo,%00011111,49,49
  !instr,!instr2B
  !pan,10
  !volume,255
  db 44,$4A
  !f2
  !f2
  db 44,$48
  !as2
  !as2
  db 44,$4C
  !ds2
  !ds2
  db 44,$48
  !gs2
  !gs2
  !g3
  db 44,$49
  !g2
  !g2
  !g2
  db 44,$48
  !g3
  db 44,$49
  !g2
  db 44,$48
  !g3
  db 44,$49
  !g2
  !end

.pattern0_1
  !instr,!instr34
  !volume,255
  db 22,$7B
  !f3
  db 44
  !f3
  db 11
  !f3
  !f3
  db 22,$79
  !as3
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  db 22,$7C
  !ds3
  db 44
  !ds3
  db 11
  !ds3
  !ds3
  db 22,$79
  !gs3
  !gs3
  db 11
  !gs3
  !gs3
  !gs3
  !gs3
  db 22,$7C
  !d3
  db 44
  !d3
  db 11
  !d3
  !d3
  db 22,$78
  !d4
  !d4
  db 11,$7C
  !d3
  !d3
  db 22
  !d3
  db 22,$7B
  !g3
  db 44
  !g3
  db 11
  !g3
  !g3
  db 22,$7A
  !g4
  !g4
  db 11,$7B
  !g3
  !g3
  db 22
  !g3

.pattern0_2
  !instr,!instr19
  !subtranspose,60
  !volume,240
  !pan,5
  !dynamicPan,88,15
  db 11,$56
  !f5
  !gs5
  !c6
  !gs5
  db 11,$54
  !f6
  db 11,$56
  !c6
  !gs5
  !f5
  !dynamicPan,88,5
  !as4
  !d5
  !f5
  !d5
  db 11,$55
  !gs5
  db 11,$56
  !f5
  !d5
  !f5
  !dynamicPan,88,15
  !ds5
  !g5
  !as5
  !g5
  !ds6
  !as5
  !g5
  !as5
  !dynamicPan,88,5
  !gs4
  !c5
  !ds5
  !c5
  !gs5
  !ds5
  !c5
  !ds5
  !dynamicPan,88,15
  db 11,$58
  !f4
  db 11,$56
  !a4
  !c5
  !a4
  !f5
  !e5
  !d5
  !e5
  !dynamicPan,88,5
  db 11,$58
  !f4
  db 11,$56
  !a4
  !c5
  !a4
  !f5
  !e5
  !d5
  !e5
  !dynamicPan,88,15
  db 11,$58
  !f4
  db 11,$57
  !g4
  db 11,$56
  !b4
  !g4
  !f5
  !d5
  !b4
  !d5
  !dynamicPan,88,5
  db 11,$58
  !f4
  db 11,$57
  !g4
  db 11,$56
  !b4
  !d5
  !f5
  !d5
  !b4
  !d5

.pattern0_3
  !pan,11
  !subtranspose,60
  !instr,!instr19
  !volume,185
  !slideIn,5,8,1
  db 66,$73
  !gs6
  !endSlide
  db 11,$74
  !g6
  db 11,$75
  !f6
  db 22,$76
  !d6
  !c6
  !as5
  !d6
  db 44
  !ds6
  db 33
  !d6
  db 11
  !ds6
  db 44
  !g5
  !g5
  db 120
  !a5
  db 12
  !tie
  db 33
  !a5
  db 11
  !c6
  db 88
  !a5
  !pan,5
  !subtranspose,55
  db 44,$67
  !g5
  !volume,170
  !subtranspose,5
  !instr,!instr04
  db 14,$46
  !g5
  db 15
  !a5
  !b5

.pattern0_4
  !pan,9
  !vibrato,0,12,20
  !subtranspose,60
  !instr,!instr19
  !volume,185
  !slideIn,5,8,1
  db 66,$73
  !c7
  !endSlide
  db 11,$74
  !as6
  db 11,$75
  !gs6
  db 22,$76
  !g6
  !f6
  !ds6
  !f6
  db 44
  !g6
  db 33
  !f6
  db 11
  !g6
  db 44
  !c6
  !c6
  db 120
  !d6
  db 12
  !tie
  db 33
  !d6
  db 11
  !e6
  db 88
  !d6
  !pan,15
  db 44,$67
  !g5
  !subtranspose,0
  !volume,170
  !instr,!instr04
  db 14,$46
  !g5
  db 15
  !a5
  !b5

.pattern1_0
  db 44,$48
  !c3
  db 44,$46
  !c4
  !as3
  db 44,$49
  !as2
  !a2
  db 44,$46
  !a3
  !gs3
  db 44,$49
  !gs2
  !g2
  db 44,$48
  !g3
  db 44,$49
  !g2
  db 44,$48
  !g3
  db 44,$4A
  !gs2
  db 44,$48
  !gs3
  !ds3
  db 44,$4A
  !gs2
  db 44,$5A
  !as2
  db 44,$58
  !as3
  db 44,$59
  !f3
  db 44,$5A
  !as2
  db 44,$1A
  !c3
  db 11,$49
  !c3
  !c3
  !c3
  !c3
  db 44,$1A
  !c3
  !end

.pattern1_1
  db 22,$7C
  !c3
  db 44
  !c3
  db 11
  !c3
  !c3
  db 22,$79
  !as3
  !as3
  db 11
  !as3
  !as3
  db 22
  !as3
  db 22,$7B
  !f3
  db 44
  !f3
  db 11
  !f3
  !f3
  db 22
  !f3
  !f3
  db 11
  !f3
  !f3
  !f3
  !f3
  db 22,$7C
  !g3
  db 44
  !g3
  db 11
  !g3
  !g3
  db 22,$78
  !g4
  !g4
  db 11,$7C
  !g3
  !g3
  !g3
  !g3
  db 22,$79
  !gs3
  db 44
  !gs3
  db 11
  !gs3
  !gs3
  db 22
  !gs4
  !gs4
  db 11
  !gs3
  !gs3
  db 22
  !gs3
  !as3
  db 44
  !as3
  db 11
  !as3
  !as3
  db 22
  !as4
  !as4
  db 11
  !as3
  !as3
  !as3
  !as3
  db 44,$7D
  !c3
  db 11,$7B
  !c3
  !c3
  !c3
  !c3
  db 44,$1C
  !c3

.pattern1_2
  !subtranspose,60
  !pan,12
  !instr,!instr19
  !volume,230
  db 10,$65
  !b4
  db 11,$67
  !e4
  db 11,$65
  !c5
  db 11,$67
  !e4
  db 11,$65
  !e5
  db 11,$67
  !e4
  db 11,$65
  !c5
  db 11,$67
  !e4
  db 11,$65
  !as4
  db 11,$67
  !e4
  db 11,$65
  !c5
  db 11,$67
  !e4
  db 11,$65
  !e5
  db 11,$67
  !e4
  db 11,$65
  !c5
  db 11,$67
  !e4
  db 11,$65
  !c5
  db 11,$67
  !a4
  db 11,$65
  !f5
  db 11,$67
  !a4
  db 11,$65
  !a5
  db 11,$67
  !a4
  db 11,$65
  !f5
  db 11,$67
  !a4
  db 11,$65
  !f5
  db 11,$67
  !gs4
  db 11,$65
  !gs5
  db 11,$67
  !gs4
  db 11,$65
  !f5
  db 11,$67
  !gs4
  db 11,$65
  !c5
  db 11,$67
  !f4
  db 11,$65
  !g5
  db 11,$67
  !g4
  db 11,$65
  !e5
  db 11,$67
  !g4
  db 11,$65
  !c5
  db 11,$67
  !g4
  db 11,$65
  !d5
  db 11,$67
  !g4
  db 11,$65
  !f5
  db 11,$67
  !f4
  db 11,$65
  !c5
  db 11,$67
  !f4
  db 11,$65
  !f5
  db 11,$67
  !f4
  db 11,$65
  !c5
  db 11,$67
  !f4
  db 11,$65
  !gs5
  db 11,$67
  !as3
  db 11,$65
  !f5
  db 11,$67
  !as3
  db 11,$64
  !c5
  db 11,$67
  !as3
  db 11,$64
  !gs4
  db 11,$67
  !as3
  db 11,$64
  !f5
  db 11,$67
  !as3
  db 11,$64
  !c5
  db 11,$67
  !as3
  db 11,$64
  !gs4
  db 11,$67
  !as3
  db 11,$64
  !d5
  db 11,$67
  !as3
  !dynamicVolume,175,255
  db 11,$63
  !c6
  db 11,$67
  !as3
  db 11,$63
  !gs5
  db 11,$67
  !as3
  db 11,$63
  !f5
  db 11,$67
  !as3
  db 11,$63
  !c5
  db 11,$67
  !as3
  db 11,$63
  !gs5
  db 11,$67
  !as3
  db 11,$63
  !f5
  db 11,$67
  !as3
  db 11,$63
  !c5
  db 11,$67
  !as3
  db 11,$63
  !f5
  db 12,$67
  !as3
  !subtranspose,0
  !instr,!instr04
  !volume,180
  db 44,$16
  !c4
  db 11,$56
  !c5
  !c5
  !c5
  !c5
  db 44,$16
  !c5

.pattern1_3
  !subtranspose,60
  !pan,8
  !instr,!instr19
  !volume,230
  db 10,$65
  !d5
  db 11,$67
  !g4
  db 11,$65
  !e5
  db 11,$67
  !g4
  db 11,$65
  !g5
  db 11,$67
  !g4
  db 11,$65
  !e5
  db 11,$67
  !g4
  db 11,$65
  !d5
  db 11,$67
  !g4
  db 11,$65
  !e5
  db 11,$67
  !g4
  db 11,$65
  !g5
  db 11,$67
  !g4
  db 11,$65
  !e5
  db 11,$67
  !g4
  db 11,$65
  !g5
  db 11,$67
  !c5
  db 11,$65
  !a5
  db 11,$67
  !c5
  db 11,$65
  !c6
  db 11,$67
  !c5
  db 11,$65
  !a5
  db 11,$67
  !c5
  db 11,$65
  !gs5
  db 11,$67
  !c5
  db 11,$65
  !c6
  db 11,$67
  !c5
  db 11,$65
  !gs5
  db 11,$67
  !c5
  db 11,$65
  !f5
  db 11,$67
  !gs4
  db 11,$65
  !c6
  db 11,$67
  !c5
  db 11,$65
  !g5
  db 11,$67
  !c5
  db 11,$65
  !e5
  db 11,$67
  !c5
  db 11,$65
  !g5
  db 11,$67
  !c5
  db 11,$65
  !a5
  db 11,$67
  !a4
  db 11,$65
  !f5
  db 11,$67
  !a4
  db 11,$65
  !a5
  db 11,$67
  !a4
  db 11,$65
  !f5
  db 11,$67
  !a4
  db 11,$65
  !c6
  db 11,$67
  !f4
  db 11,$65
  !gs5
  db 11,$67
  !f4
  db 11,$64
  !f5
  db 11,$67
  !f4
  db 11,$64
  !c5
  db 11,$67
  !f4
  db 11,$64
  !gs5
  db 11,$67
  !f4
  db 11,$64
  !f5
  db 11,$67
  !f4
  db 11,$64
  !d5
  db 11,$67
  !f4
  db 11,$64
  !f5
  db 11,$67
  !f4
  !dynamicVolume,175,255
  db 11,$63
  !f6
  db 11,$67
  !f4
  db 11,$63
  !c6
  db 11,$67
  !f4
  db 11,$63
  !gs5
  db 11,$67
  !f4
  db 11,$63
  !f5
  db 11,$67
  !f4
  db 11,$63
  !c6
  db 11,$67
  !f4
  db 11,$63
  !gs5
  db 11,$67
  !f4
  db 11,$63
  !f5
  db 11,$67
  !f4
  db 11,$63
  !gs5
  db 12,$67
  !f4
  !subtranspose,0
  !instr,!instr04
  !volume,190
  db 44,$16
  !g4
  db 11,$56
  !g4
  !g4
  !g4
  !g4
  db 44,$16
  !g4

.pattern1_4
  !pan,10
  db 120,$76
  !c6
  db 12,$56
  !tie
  db 30
  !c6
  db 7,$78
  !d6
  !e6
  db 22,$56
  !f6
  db 22,$06
  !c7
  !a6
  !f6
  db 44,$57
  !e6
  db 33,$56
  !d6
  db 11,$5A
  !g5
  db 44,$56
  !e6
  db 33
  !d6
  db 11
  !e6
  db 44
  !d6
  !g5
  db 30,$76
  !c6
  !dynamicVolume,30,120
  !tie
  !dynamicVolume,255,180
  db 116,$68
  !tie
  db 88
  !tie
  !tie
  !volume,230
  !pan,7
  !dynamicPan,44,13
  db 44,$72
  %percNote(!instr31-!instr31)
  !instr,!instr04
  !volume,180
  !pan,10
  db 11,$56
  !e5
  !e5
  !e5
  !e5
  db 44,$16
  !e5
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
