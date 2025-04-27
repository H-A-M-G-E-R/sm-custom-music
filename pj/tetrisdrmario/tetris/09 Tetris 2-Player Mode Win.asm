asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr08 = $16
!instr0D = $17
!instr13 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr13,$FA,$E1,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample08,Sample08+1332
  dw Sample0D,Sample0D+441
  dw Sample13,Sample13+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample08: incbin "Sample08.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample13: incbin "Sample13.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerF4E1

TrackerF4E1:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !instr,!instr0D
  !tempo,28
  !musicVolume,210;240
  !volume,230
  !pan,10
  !echo,%11111111,30,30
  !echoParameters,4,80,0
  db 6,$7F
  !as5
  db 6,$7B
  !as5
  db 20,$1F
  !ds6
  db 6,$7D
  !as5
  db 48,$0F
  !ds6
  !end

.pattern0_1
  !instr,!instr0D
  !volume,230
  !pan,10
  db 12
  !rest
  db 20,$1D
  !g5
  db 6
  !rest
  db 48,$0D
  !g5

.pattern0_2
  !instr,!instr0D
  !volume,230
  !pan,10
  db 12
  !rest
  db 20,$1F
  !ds4
  db 6
  !rest
  db 48,$0F
  !ds4

.pattern0_3
  !instr,!instr08
  !volume,230
  !pan,10
  db 4,$77
  !e5
  db 4,$79
  !e5
  db 4,$7B
  !e5
  db 20,$7F
  !e5
  db 3,$77
  !e5
  db 3,$79
  !e5
  db 48,$7F
  !e5

.pattern0_4
  !instr,!instr13
  !volume,230
  !pan,10
  !subtranspose,50
  db 12
  !rest
  !dynamicVolume,26,50
  db 26,$7F
  !ds3
  !volume,200
  !dynamicVolume,48,0
  db 48
  !ds3

.pattern0_5
  !instr,!instr13
  !volume,230
  !pan,10
  !subtranspose,50
  db 12
  !rest
  !dynamicVolume,26,50
  db 26,$7B
  !ds7
  !volume,200
  !dynamicVolume,48,0
  db 48,$75
  !ds7

.pattern0_6
  !instr,!instr13
  !volume,230
  !pan,10
  !subtranspose,50
  db 12
  !rest
  !dynamicVolume,26,50
  db 26,$7B
  !g6
  !volume,200
  !dynamicVolume,48,0
  db 48,$75
  !g6

.pattern0_7
  !instr,!instr0D
  !volume,200
  !pan,10
  db 6,$7F
  !g5
  db 6,$7B
  !g5
  db 20,$0F
  !as5
  db 6,$7D
  !g5
  db 48,$0F
  !as5
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
