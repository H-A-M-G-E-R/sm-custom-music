asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr04 = $16
!instr07 = $17
!instr12 = $18
!instr13 = $19
!instr14 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample04,Sample04+207
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample04: incbin "Sample04.brr"
  Sample07: incbin "Sample07.brr"
  Sample12: incbin "Sample12.brr"
  Sample13: incbin "Sample13.brr"
  Sample14: incbin "Sample14.brr"

NoteLengthTable: ; note length table
  db $32,$65,$7F,$98,$B2,$CB,$E5,$FC
  db $32,$4C,$65,$72,$7F,$8C,$98,$A5,$B2,$BF,$CB,$D8,$E5,$F2,$F4,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0

.pattern0_0
  !endEcho
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr12
  !musicVolume,200
  !tempo,31
  !instr,!instr07
  !subtranspose,50
  !pan,0
  !volume,145
  db 12
  !rest
  db 18,$7E
  !f5
  db 18,$6E
  !g5
  db 60,$79
  !a5
  !pitchSlide,18,32 : !a4
  !end

.pattern0_1
  !instr,!instr04
  !volume,255
  db 6,$7E
  !d3
  db 12
  !d3
  db 6
  !c3
  db 12
  !c3
  db 60
  !d3
  !pitchSlide,6,54 : !d2
  db 12
  !rest
  !end

.pattern0_2
  !instr,!instr07
  !pan,20
  !volume,145
  !subtranspose,55
  db 12
  !rest
  db 18,$7E
  !a5
  db 18,$6E
  !c6
  db 60,$79
  !d6
  !pitchSlide,18,32 : !d5
  !end

.pattern0_3
  !volume,255
  db 6,$7E
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  db 6
  %percNote(!instr12-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  !pan,20
  !dynamicPan,30,0
  db 3,$7F
  %percNote(!instr14-!instr12)
  !fs5
  !e5
  !d5
  db 6
  !c5
  !b4
  !g4
  !pan,10
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr13-!instr12)
  !rest
  !end

.pattern0_4
  !endEcho
  !instr,!instr07
  !volume,255
  db 18,$7E
  !a5
  db 18,$6E
  !c6
  db 60,$7E
  !d6
  !pitchSlide,18,34 : !d5
  db 12
  !rest
  !end

.pattern0_5
  !instr,!instr07
  !volume,255
  db 18,$7E
  !f5
  db 18,$6E
  !g5
  db 60,$7E
  !a5
  !pitchSlide,18,34 : !a4
  db 12
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
