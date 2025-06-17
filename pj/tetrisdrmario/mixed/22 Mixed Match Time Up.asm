asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr02 = $16
!instr03 = $17
!instr05 = $18
!instr08 = $19
!instr0D = $1A
!instr0F = $1B
!instr10 = $1C
!instr14 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr05,$FF,$EE,$B8,$0D,$F0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr0F,$FF,$E1,$B8,$03,$00
  db !instr10,$FF,$E1,$B8,$08,$F0
  db !instr14,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+27
  dw Sample03,Sample03+27
  dw Sample05,Sample05+27
  dw Sample08,Sample08+1332
  dw Sample0D,Sample0D+441
  dw Sample0F,Sample0F+27
  dw Sample10,Sample10+27
  dw Sample14,Sample14+1998
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample02.brr"
  Sample03: incbin "Sample03.brr"
  Sample05: incbin "Sample05.brr"
  Sample08: incbin "Sample08.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample0F: incbin "Sample0F.brr"
  Sample10: incbin "Sample10.brr"
  Sample14: incbin "Sample14.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerE219

TrackerE219:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, 0

.pattern0_0
  !musicVolume,210
  !tempo,28
  !volume,240
  !pan,10
  !echo,%11111111,20,20
  !echoParameters,4,80,0
  !instr,!instr14
  db 24
  !rest
  db 36,$7F
  !c3
  !instr,!instr0F
  !dynamicVolume,84,80
  db 6
  !rest
  db 4,$2B
  !g6
  !c7
  !f7
  !as7
  !g6
  !c7
  !f7
  !as7
  !g6
  !c7
  !f7
  !as7
  !g6
  !c7
  !f7
  !as7
  !g6
  !c7
  !f7
  db 2,$7B
  !as7
  !instr,!instr08
  !volume,200
  db 6,$7F
  !a4
  !a4
  !a4
  db 12
  !a4
  !a4
  !a4
  db 6
  !rest
  !end

.pattern0_1
  !volume,240
  !instr,!instr03
  !pan,10
  !instr,!instr14
  db 24
  !rest
  !dynamicVolume,96,50
  db 24,$7F
  !b2
  db 12
  !b2
  !tie
  db 24
  !b2
  !b2
  !rest
  !rest
  !rest
  db 12
  !rest
  !end

.pattern0_2
  !volume,240
  !pan,10
  !instr,!instr14
  db 24
  !rest
  !dynamicVolume,96,50
  db 24,$7F
  !d3
  db 12
  !d3
  !tie
  db 24
  !d3
  !d3
  !volume,240
  !rest
  !instr,!instr0D
  !subtranspose,20
  db 6,$7D
  !as6
  !as6
  !as6
  db 12,$2D
  !as6
  !as6
  db 18,$7D
  !as6
  !pitchSlide,6,12 : !as3
  !end

.pattern0_3
  !volume,240
  !pan,10
  !instr,!instr14
  db 24
  !rest
  db 36
  !rest
  !dynamicVolume,100,0
  !instr,!instr02
  !vibrato,0,30,245
  db 100,$7F
  !f3
  db 24
  !rest
  db 20
  !rest
  !end

.pattern0_4
  !volume,240
  !dynamicVolume,96,50
  !pan,10
  !instr,!instr14
  db 24
  !rest
  !dynamicVolume,96,50
  db 24,$7F
  !g2
  db 12
  !g2
  !tie
  db 24
  !g2
  !g2
  !volume,240
  !rest
  !instr,!instr05
  db 18,$5F
  !ds3
  db 12
  !d3
  !d3
  !cs3
  db 6
  !rest
  !end

.pattern0_5
  !volume,240
  !pan,10
  !slideIn,0,3,252
  db 24
  !rest
  db 36
  !rest
  db 84
  !rest
  !instr,!instr0D
  db 6,$7F
  !as6
  !as6
  !as6
  db 12,$2F
  !as6
  !as6
  db 18,$7F
  !as6
  !pitchSlide,6,12 : !as3
  !end

.pattern0_6
  !volume,240
  !pan,10
  db 24
  !rest
  db 36
  !rest
  db 84
  !rest
  !instr,!instr10
  db 6,$7D
  !fs5
  !fs5
  !fs5
  db 12,$2D
  !f5
  !f5
  db 18,$7D
  !e5
  !pitchSlide,6,12 : !e2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
