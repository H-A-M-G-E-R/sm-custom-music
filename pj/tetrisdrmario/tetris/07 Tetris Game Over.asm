asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr03 = $16
!instr0B = $17
!instr10 = $18
!instr13 = $19
!instr15 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr0B,$8F,$2E,$B8,$04,$00
  db !instr10,$FF,$E1,$B8,$08,$F0
  db !instr13,$FA,$E1,$B8,$03,$00
  db !instr15,$FF,$E1,$B8,$02,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample03,Sample03+27
  dw Sample0B,Sample0B+27
  dw Sample10,Sample10+27
  dw Sample13,Sample13+27
  dw Sample15,Sample15+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample03: incbin "Sample03.brr"
  Sample0B: incbin "Sample0B.brr"
  Sample10: incbin "Sample10.brr"
  Sample13: incbin "Sample13.brr"
  Sample15: incbin "Sample15.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerF5B1

TrackerF5B1:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, 0

.pattern0_0
  !tempo,48
  !musicVolume,210;240
  !volume,240
  !pan,10
  !echo,%11111111,20,20
  !echoParameters,4,80,0
  db 116
  !rest
  !instr,!instr0B
  db 12,$5F
  !b6
  !a6
  !b6
  db 12,$5B
  !a6
  db 12,$5F
  !b6
  db 12,$5B
  !c7
  db 12,$5F
  !b6
  db 12,$5B
  !a6
  !dynamicVolume,96,0
  db 96,$7F
  !b6
  db 24
  !rest
  !rest
  !end

.pattern0_1
  !volume,240
  !pan,10
  db 116
  !rest
  !instr,!instr0B
  db 12,$5F
  !e6
  db 12,$5B
  !d6
  db 12,$5F
  !e6
  db 12,$5B
  !d6
  db 12,$5F
  !e6
  db 12,$5B
  !f6
  db 12,$5F
  !e6
  db 12,$5B
  !d6
  !dynamicVolume,96,0
  db 96,$7F
  !e6
  db 24
  !rest
  !rest
  !end

.pattern0_2
  !volume,240
  !pan,10
  db 24
  !rest
  !instr,!instr10
  db 92,$7B
  !c6
  !pitchSlide,0,92 : !c2
  !instr,!instr0B
  db 12,$5F
  !c6
  db 12,$5B
  !b5
  db 12,$5F
  !c6
  db 12,$5B
  !b5
  db 12,$5F
  !c6
  db 12,$5B
  !d6
  db 12,$5F
  !c6
  db 12,$5B
  !b5
  !dynamicVolume,96,0
  db 96,$7F
  !c6
  db 24
  !rest
  !rest
  !end

.pattern0_3
  !volume,250
  !pan,10
  !instr,!instr15
  db 12,$2F
  !g4
  db 6
  !c4
  !g3
  !d3
  !dynamicVolume,192,0
  db 86,$7F
  !a2
  db 106
  !tie
  !volume,200
  !instr,!instr03
  db 8,$59
  !b6
  db 8,$5B
  !g6
  db 8,$5D
  !e6
  db 8,$55
  !c6
  db 8,$53
  !b5
  db 8,$52
  !g5
  !e5
  !c5
  db 24
  !rest
  !rest
  db 22
  !rest
  !end

.pattern0_4
  !volume,200
  !pan,10
  db 116
  !rest
  db 96
  !rest
  !instr,!instr13
  !dynamicVolume,144,0
  db 96,$77
  !g5
  db 24
  !rest
  !rest
  !end

.pattern0_5
  !volume,200
  !pan,10
  db 116
  !rest
  db 96
  !rest
  !instr,!instr13
  !dynamicVolume,144,0
  db 96,$7F
  !b4
  db 48
  !tie
  !end

.pattern0_6
  !volume,200
  !pan,10
  db 116
  !rest
  db 96
  !rest
  !instr,!instr13
  !dynamicVolume,144,0
  db 96,$7F
  !c5
  db 48
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
