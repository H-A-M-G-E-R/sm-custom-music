asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr03 = $17
!instr12 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr12,$CF,$74,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+27
  dw Sample03,Sample03+27
  dw Sample12,Sample12+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample03: incbin "Sample03.brr"
  Sample12: incbin "Sample12.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerFC94

TrackerFC94:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !tempo,26
  !musicVolume,210;240
  !volume,240
  !pan,10
  !echo,%00001111,40,40
  !echoParameters,2,40,2
  db 24
  !rest
  !transpose,12
  !instr,!instr01
  !volume,0
  !dynamicVolume,15,200
  db 15,$7F
  !g7
  !pitchSlide,0,53 : !d7
  db 5
  !tie
  !dynamicVolume,10,0
  db 20
  !tie
  !volume,240
  !transpose,0
  !instr,!instr12
  db 48,$77
  !b7
  !loop : dw .subFD9E : db 1
  !end

.pattern0_1
  !volume,240
  !pan,10
  !subtranspose,100
  db 24
  !rest
  db 40
  !rest
  !instr,!instr12
  db 48,$7B
  !g6
  !loop : dw .subFD9E : db 1
  !end

.pattern0_2
  !volume,240
  !instr,!instr03
  !pan,10
  !slideOut,0,3,232
  db 24
  !rest
  db 82
  !rest
  db 3,$7F
  !c5
  db 25
  !rest
  db 3,$7D
  !c5
  db 20
  !rest
  db 3,$7B
  !c5
  db 10
  !rest
  db 3,$79
  !c5
  db 5
  !rest
  db 5,$37
  !c5
  db 5,$35
  !c5
  db 5,$33
  !c5
  db 5,$32
  !c5
  db 5,$31
  !c5
  !c5
  db 24
  !rest
  !rest
  !rest
  db 5
  !rest
  !end

.pattern0_3
  !volume,240
  !instr,!instr03
  !pan,10
  !slideOut,0,3,232
  db 24
  !rest
  db 82
  !rest
  db 24
  !rest
  db 3,$7F
  !g4
  db 25
  !rest
  db 3,$7D
  !g4
  db 20
  !rest
  db 3,$7B
  !g4
  db 15
  !rest
  db 3,$79
  !g4
  db 10
  !rest
  db 3,$77
  !g4
  db 5
  !rest
  db 5,$35
  !g4
  db 5,$33
  !g4
  db 5,$32
  !g4
  db 5,$31
  !g4
  db 24
  !rest
  db 21
  !rest
  !end

.pattern0_4
  !volume,240
  !instr,!instr03
  !pan,10
  !slideOut,0,3,232
  db 24
  !rest
  db 82
  !rest
  db 36
  !rest
  db 3,$7F
  !d5
  db 30
  !rest
  db 3,$7D
  !d5
  db 25
  !rest
  db 3,$7B
  !d5
  db 20
  !rest
  db 3,$79
  !d5
  db 15
  !rest
  db 3,$77
  !d5
  db 10
  !rest
  db 3,$75
  !d5
  db 5
  !rest
  db 5,$33
  !d5
  db 5,$32
  !d5
  db 5,$31
  !d5
  !d5
  !end

.subFD9E
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  db 5
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
