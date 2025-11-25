asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr04 = $17
!instr07 = $18
!instr12 = $19
!instr13 = $1A
!instr14 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$F1,$B8,$0C,$00
  db !instr04,$FF,$F0,$B8,$0F,$00
  db !instr07,$FF,$E0,$B8,$04,$00
  db !instr12,$FF,$F2,$B8,$03,$D4
  db !instr13,$FF,$E0,$B8,$07,$A8
  db !instr14,$FF,$E0,$B8,$03,$D4
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+243
  dw Sample04,Sample04+207
  dw Sample07,Sample07+621
  dw Sample12,Sample12+0
  dw Sample13,Sample13+0
  dw Sample14,Sample14+0
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
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
  !tempo,46
  !instr,!instr04
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !cs3
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !e3
  db 12,$6E
  !e3
  db 12,$7E
  !cs3
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !d3
  db 12,$6E
  !d3
  db 12,$7E
  !cs3
  db 12,$6E
  !a2
  db 12,$7E
  !a2
  db 12,$6E
  !a2
  db 12,$7E
  !b2
  db 12,$6E
  !b2
  db 12,$7E
  !b2
  db 12,$6E
  !a2
  db 48,$7E
  !b3
  !pitchSlide,8,36 : !b2
  db 24
  !rest
  !end

.pattern0_1
  !endEcho
  !volume,240
  !instr,!instr07
  db 60,$7E
  !b2
  !pitchSlide,12,34 : !b4
  db 12,$6E
  !d5
  !cs5
  !a4
  db 36,$7E
  !b4
  db 60
  !a4
  !b4
  db 12,$6E
  !d5
  !cs5
  !e5
  db 36,$7E
  !fs5
  db 12,$6E
  !a5
  db 48,$7E
  !b5
  !pitchSlide,12,36 : !b3
  db 24
  !rest
  !end

.pattern0_2
  db 24,$7E
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  %percNote(!instr12-!instr12)
  %percNote(!instr13-!instr12)
  db 12
  %percNote(!instr12-!instr12)
  %percNote(!instr12-!instr12)
  db 24
  %percNote(!instr13-!instr12)
  !pan,20
  db 6
  %percNote(!instr14-!instr12)
  !c5
  !pan,15
  db 12
  !b4
  !pan,10
  !g4
  !pan,5
  !e4
  !pan,10
  db 48,$7E
  %percNote(!instr13-!instr12)
  db 24
  !rest
  !end

.pattern0_3
  !volume,255
  !instr,!instr01
  db 24,$7E
  !b3
  !d4
  db 12,$5E
  !cs4
  db 36,$7E
  !a3
  db 24
  !b3
  !e4
  db 12,$5E
  !cs4
  db 36,$7E
  !a3
  db 24
  !b3
  !d4
  db 12,$5E
  !cs4
  db 36,$7E
  !a3
  !b3
  db 12,$5E
  !a3
  db 48,$7E
  !b4
  !pitchSlide,12,36 : !b2
  db 24
  !rest
  !end

.pattern0_4
  !volume,140
  !pan,20
  !subtranspose,45
  !instr,!instr07
  db 12
  !rest
  db 60,$7E
  !b2
  !pitchSlide,12,34 : !b4
  db 12,$6E
  !d5
  !cs5
  !a4
  db 36,$7E
  !b4
  db 60
  !a4
  !b4
  db 12,$6E
  !d5
  !cs5
  !e5
  db 36,$7E
  !fs5
  db 12,$6E
  !a5
  db 48,$67
  !b5
  !pitchSlide,12,36 : !b3
  db 12
  !rest
  !end

.pattern0_5
  !volume,185
  !pan,0
  !instr,!instr01
  !subtranspose,1
  db 24
  !rest
  db 24,$7E
  !b3
  !d4
  db 12,$5E
  !cs4
  db 36,$7E
  !a3
  db 24
  !b3
  !e4
  db 12,$5E
  !cs4
  db 36,$7E
  !a3
  db 24
  !b3
  !d4
  db 12,$5E
  !cs4
  db 36,$7E
  !a3
  !b3
  db 12,$5E
  !a3
  db 48,$7B
  !b4
  !pitchSlide,12,36 : !b2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
