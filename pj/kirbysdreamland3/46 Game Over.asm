asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr03 = $16
!instr1C = $17
!instr21 = $18
!instr23 = $19
!instr27 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FF,$F0,$B8,$03,$D0
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr21,$FF,$E0,$B8,$04,$00
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+2556
  dw Sample1C,Sample1C+27
  dw Sample21,Sample21+27
  dw Sample23,Sample23+1449
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample21: incbin "Sample_6868b078621fc6acc5053c56da22f534.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample26_27: incbin "Sample_97eeea966768bd5e775fab11625d86bb.brr"

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
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !echo,%00011110,42,42
  !echoParameters,4,50,0
  !musicVolume,255
  !tempo,46
  !pan,10
  !instr,!instr21
  !volume,180
  db 24,$67
  !d3
  db 12,$63
  !d4
  db 24,$26
  !a3
  db 36,$67
  !d3
  db 12,$63
  !d4
  db 24,$24
  !c4
  db 12,$67
  !d3
  db 24,$57
  !g3
  db 12,$68
  !g2
  db 24,$57
  !g3
  db 12,$68
  !g2
  db 24,$57
  !g3
  db 12,$68
  !g2
  db 24,$57
  !g3
  db 12,$68
  !g2
  db 108,$77
  !c3
  !dynamicVolume,36,40
  db 36
  !tie
  !end

.pattern0_1
  !vibrato,0,30,40
  !instr,!instr1C
  !volume,150
  !slideIn,0,7,1
  db 24,$67
  !f6
  !endSlide
  db 12
  !e6
  db 24,$27
  !f6
  db 36,$76
  !e7
  db 12,$67
  !d7
  db 24
  !c7
  db 12
  !d7
  !slideIn,0,4,1
  db 36,$47
  !c7
  !endSlide
  !a6
  !a6
  !volume,100
  !dynamicVolume,6,150
  db 36,$37
  !b6
  !volume,100
  !dynamicVolume,20,150
  db 108,$77
  !e6
  !dynamicVolume,36,40
  db 36
  !tie
  !end

.pattern0_2
  !vibrato,0,30,40
  !instr,!instr1C
  !volume,165
  !slideIn,0,7,1
  db 24,$67
  !a6
  !endSlide
  db 12
  !gs6
  db 24,$27
  !a6
  db 36,$76
  !g7
  db 12,$67
  !f7
  db 24
  !e7
  db 12
  !f7
  !slideIn,0,4,1
  db 36,$47
  !e7
  !endSlide
  !d7
  !c7
  !volume,110
  !dynamicVolume,6,165
  db 20,$77
  !d7
  db 8,$75
  !cs7
  db 8,$74
  !c7
  !volume,110
  !dynamicVolume,20,165
  db 108,$77
  !b6
  !dynamicVolume,36,40
  db 36
  !tie
  !end

.pattern0_3
  !instr,!instr03
  !volume,130
  !pan,12
  db 12,$57
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !a5
  !f5
  !gs5
  !f5
  !gs5
  db 24,$77
  !d5
  db 24,$73
  !g5
  db 24,$72
  !e5
  db 24,$71
  !g5
  db 48
  !d5
  !end

.pattern0_4
  !instr,!instr03
  !volume,130
  !pan,8
  db 12,$57
  !a5
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
  !c6
  !a5
  !d6
  !a5
  !d6
  !a5
  !d6
  !a5
  !c6
  !a5
  !b5
  !gs5
  !b5
  db 24,$77
  !g5
  db 24,$73
  !e5
  db 24,$72
  !g5
  db 24,$71
  !d5
  db 48,$70
  !g5
  !end

.pattern0_5
  !transpose,5
  !volume,235
  db 24,$77
  %percNote(!instr23-!instr23)
  db 12,$72
  %percNote(!instr27-!instr23)
  db 24,$77
  %percNote(!instr27-!instr23)
  db 12,$73
  %percNote(!instr23-!instr23)
  db 24,$77
  %percNote(!instr23-!instr23)
  db 12,$74
  %percNote(!instr27-!instr23)
  !pan,12
  db 12,$77
  !a4
  !pan,8
  !a4
  !pan,10
  db 12,$74
  %percNote(!instr23-!instr23)
  db 12,$77
  %percNote(!instr23-!instr23)
  %percNote(!instr27-!instr23)
  db 12,$73
  %percNote(!instr27-!instr23)
  db 12,$77
  %percNote(!instr27-!instr23)
  db 12,$71
  %percNote(!instr27-!instr23)
  db 12,$77
  %percNote(!instr27-!instr23)
  %percNote(!instr23-!instr23)
  db 6
  %percNote(!instr27-!instr23)
  db 6,$71
  %percNote(!instr27-!instr23)
  %percNote(!instr27-!instr23)
  db 6,$73
  %percNote(!instr27-!instr23)
  db 12,$77
  %percNote(!instr27-!instr23)
  !pan,12
  !g4
  !pan,8
  db 12,$78
  !d4
  db 72,$77
  %percNote(!instr23-!instr23)
  !rest
  !end

.pattern1_0
  !dynamicEcho,144,1,1
  db 72
  !rest
  !rest
  !loop : dw .sub48E5 : db 13
  !end

.sub48E5
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
