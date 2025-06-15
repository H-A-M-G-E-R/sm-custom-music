asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr1B = $17
!instr1C = $18
!instr23 = $19
!instr24 = $1A
!instr25 = $1B
!instr27 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$AF,$B2,$B8,$0E,$F0
  db !instr1B,$FF,$E0,$B8,$03,$00
  db !instr1C,$FB,$E0,$B8,$03,$D0
  db !instr23,$FF,$E0,$B8,$07,$40
  db !instr24,$FF,$E0,$B8,$07,$A0
  db !instr25,$FF,$E0,$B8,$07,$A0
  db !instr27,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+27
  dw Sample1B,Sample1B+1170
  dw Sample1C,Sample1C+27
  dw Sample23,Sample23+1449
  dw Sample24,Sample24+1161
  dw Sample25,Sample25+2772
  dw Sample26_27,Sample26_27+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_1086e6fe5f17482c7f004cd2924d0b6b.brr"
  Sample1B: incbin "Sample_c1874974731487b0f0a7f401e3383652.brr"
  Sample1C: incbin "Sample_6b798d5677b078a0952851718094bf9d.brr"
  Sample23: incbin "Sample_9794e1666f87d947f92e405c402cdfb2.brr"
  Sample24: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample25: incbin "Sample_f6cb2214f3b7620d0cbe752c7686cf6c.brr"
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

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, 0, 0, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr23
  !echo,%11111000,30,30
  !echoParameters,4,206,0
  !musicVolume,255
  !tempo,52
  !instr,!instr02
  !volume,200
  db 24,$58
  !d3
  db 12,$67
  !d3
  db 24,$58
  !g3
  db 12,$67
  !g3
  db 24,$5A
  !e2
  db 12,$68
  !e3
  db 24,$58
  !a2
  db 12,$67
  !a3
  db 24,$58
  !d3
  db 12,$67
  !d3
  db 24,$58
  !g2
  db 12,$67
  !g2
  db 36,$18
  !c3
  !tempo,46
  db 36,$08
  !c3
  !end

.pattern0_1
  !pan,10
  db 24,$78
  %percNote(!instr23-!instr23)
  !pan,12
  db 12,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 24,$78
  %percNote(!instr25-!instr23)
  !pan,12
  db 12,$72
  %percNote(!instr24-!instr23)
  db 24,$73
  %percNote(!instr24-!instr23)
  db 12,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 12,$78
  %percNote(!instr25-!instr23)
  !pan,12
  db 12,$72
  %percNote(!instr24-!instr23)
  !pan,10
  db 12,$78
  %percNote(!instr25-!instr23)
  !pan,10
  db 19
  %percNote(!instr23-!instr23)
  !instr,!instr25
  !pan,12
  db 5,$74
  !ds5
  db 12,$78
  !ds5
  !pan,8
  db 12,$77
  !b4
  !pan,11
  db 12,$78
  !fs4
  !pan,9
  db 12,$79
  !ds4
  db 36,$7A
  !ds4
  !pan,10
  db 36,$79
  !ds5
  !end

.pattern0_2
  !instr,!instr27
  !pan,8
  !volume,215
  db 12,$48
  !e5
  db 12,$42
  !e5
  db 12,$46
  !e5
  db 12,$48
  !e5
  db 12,$42
  !e5
  db 12,$46
  !e5
  db 12,$48
  !e5
  db 12,$42
  !e5
  db 12,$46
  !e5
  db 12,$48
  !e5
  db 12,$42
  !e5
  db 12,$46
  !e5
  db 12,$48
  !e5
  db 12,$44
  !e5
  db 12,$46
  !e5
  db 12,$48
  !e5
  db 12,$44
  !e5
  db 12,$46
  !e5
  db 36,$48
  !e5
  !e5
  !end

.pattern0_3
  !vibrato,12,14,20
  !pan,10
  !instr,!instr1B
  !volume,170
  db 11,$57
  !d6
  db 12
  !e6
  !f6
  !g6
  !f6
  !f6
  db 24,$27
  !e6
  db 12,$57
  !e6
  db 24
  !c6
  db 12,$77
  !e7
  db 24,$57
  !d7
  db 12
  !g6
  db 24
  !f6
  db 12
  !g6
  db 36,$17
  !e6
  db 37,$07
  !e7
  !end

.pattern0_4
  !transpose,5
  !vibrato,12,14,20
  !pan,12
  !instr,!instr1B
  !volume,175
  db 11,$57
  !c6
  db 12
  !d6
  !e6
  !fs6
  !e6
  !fs6
  db 24,$27
  !g6
  db 11,$57
  !d6
  db 25
  !b5
  !pitchSlide,3,1 : !c6
  !pitchSlide,4,1 : !b5
  !volume,195
  db 12,$76
  !d7
  db 24,$56
  !c7
  db 12,$57
  !b6
  db 24
  !a6
  db 12,$77
  !b6
  db 36,$17
  !g6
  db 37,$07
  !g7
  !end

.pattern0_5
  !instr,!instr1C
  !volume,145
  !pan,13
  db 12,$57
  !a5
  db 12,$54
  !a5
  !a5
  db 12,$57
  !d6
  db 12,$54
  !d6
  !d6
  db 12,$57
  !c6
  db 12,$54
  !c6
  !g5
  db 12,$57
  !e5
  db 12,$54
  !e5
  !e5
  db 12,$58
  !d5
  !e5
  !f5
  !g5
  !f5
  !g5
  db 36,$18
  !g5
  db 36,$09
  !g4
  !end

.pattern0_6
  !instr,!instr1C
  !volume,145
  !pan,7
  db 12,$57
  !c6
  db 12,$54
  !c6
  !d6
  db 12,$57
  !f6
  db 12,$54
  !g6
  !f6
  db 12,$57
  !g6
  db 12,$54
  !g6
  !c6
  db 12,$57
  !g5
  db 12,$54
  !g5
  !g5
  db 12,$58
  !f5
  !g5
  !a5
  !b5
  !a5
  !b5
  db 36,$18
  !c6
  db 36,$09
  !c5
  !end

.pattern0_7
  !transpose,5
  !subtranspose,10
  !vibrato,12,14,20
  !pan,8
  !instr,!instr1B
  !volume,175
  db 11,$57
  !c6
  db 12
  !d6
  !e6
  !fs6
  !e6
  !fs6
  db 24,$27
  !g6
  db 11,$57
  !d6
  db 25
  !b5
  !pitchSlide,3,1 : !c6
  !pitchSlide,4,1 : !b5
  !volume,195
  db 12,$76
  !d7
  db 24,$56
  !c7
  db 12,$57
  !b6
  db 24
  !a6
  db 12
  !b6
  db 36,$17
  !g6
  db 37,$07
  !g7
  !end

.pattern1_0
  !echo,%00011111,23,23
  !dynamicEcho,144,1,1
  db 72
  !rest
  !rest
  !loop : dw .sub4945 : db 7
  !end

.sub4945
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
