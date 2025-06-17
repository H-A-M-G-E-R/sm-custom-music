asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr02 = $16
!instr03 = $17
!instr0B = $18
!instr0D = $19
!instr13 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E1,$B8,$03,$00
  db !instr03,$FF,$E1,$B8,$03,$00
  db !instr0B,$8F,$2E,$B8,$04,$00
  db !instr0D,$FF,$E4,$B8,$04,$00
  db !instr13,$FA,$E1,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+27
  dw Sample03,Sample03+27
  dw Sample0B,Sample0B+27
  dw Sample0D,Sample0D+441
  dw Sample13,Sample13+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample02.brr"
  Sample03: incbin "Sample03.brr"
  Sample0B: incbin "Sample0B.brr"
  Sample0D: incbin "Sample0D.brr"
  Sample13: incbin "Sample13.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerF7F3

TrackerF7F3:
  dw .pattern0
-
  dw .pattern1
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, 0, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, 0, .pattern1_4, 0, .pattern1_6, 0

.pattern0_0
  !instr,!instr0D
  !tempo,29
  !musicVolume,210
  !volume,200
  !echo,%01001111,60,60
  !echoParameters,4,40,2
  !vibrato,18,10,40
  db 24
  !rest
  db 24,$7B
  !ds6
  !f6
  !g6
  !end

.pattern0_1
  !instr,!instr0B
  !volume,200
  db 96
  !rest
  !end

.pattern0_2
  !instr,!instr0B
  !volume,200
  db 96
  !rest
  !end

.pattern0_4
  !instr,!instr03
  !volume,200
  db 96
  !rest
  !end

.pattern1_0
  db 36,$7F
  !gs6
  db 12
  !as6
  db 36
  !gs6
  db 12
  !g6
  !loop : dw .subFC2C : db 1
  db 36
  !ds6
  db 12
  !cs6
  db 36
  !c6
  db 12
  !ds6
  db 36
  !gs6
  db 12
  !as6
  db 36
  !gs6
  db 12
  !g6
  !loop : dw .subFC2C : db 1
  db 36
  !ds6
  db 12
  !cs6
  db 36
  !c6
  db 12
  !as5
  db 36
  !c6
  db 12
  !cs6
  db 36
  !c6
  db 12
  !as5
  !loop : dw .subFBD5 : db 1
  !end

.pattern1_1
  db 24,$77
  !gs5
  !ds6
  !gs5
  !ds6
  !gs5
  !d6
  !gs5
  !d6
  !g5
  !cs6
  !g5
  !cs6
  !ds5
  !g5
  !ds5
  !as5
  !gs5
  !ds6
  !gs5
  !ds6
  !gs5
  !d6
  !gs5
  !d6
  !g5
  !cs6
  !g5
  !cs6
  !ds5
  !g5
  !ds5
  !as5
  !c5
  !g5
  !c5
  !as5
  !f5
  !ds6
  !f5
  !ds6
  !as4
  !f5
  !as4
  !f5
  !ds5
  !as5
  !ds5
  !cs6
  !c5
  !g5
  !c5
  !as5
  !d5
  !gs5
  !d5
  !gs5
  !ds5
  !as5
  !ds5
  !cs6
  db 96
  !gs5
  !end

.pattern1_2
  db 12
  !rest
  db 24,$77
  !c6
  !g6
  !c6
  db 12
  !g6
  !loop : dw .subFC3D : db 1
  !tie
  db 24
  !c6
  !g6
  !c6
  db 12
  !g6
  !loop : dw .subFC3D : db 1
  !tie
  db 24
  !e5
  !as5
  !g5
  db 12
  !c6
  !tie
  db 24
  !c6
  !f6
  !c6
  db 12
  !f6
  !tie
  db 24
  !cs5
  !as5
  !cs5
  db 12
  !gs5
  !tie
  db 24
  !g5
  !cs6
  !as5
  db 12
  !f6
  !tie
  db 24
  !ds5
  !as5
  !g5
  db 12
  !c6
  !tie
  db 24
  !f5
  !c6
  !f5
  db 12
  !d6
  !tie
  db 24
  !g5
  !cs6
  !as5
  db 12
  !ds6
  db 96
  !tie
  !end

.pattern1_4
  !instr,!instr13
  db 12,$5F
  !gs2
  db 24,$7F
  !gs2
  db 12,$5F
  !gs2
  !gs2
  db 24,$7F
  !gs2
  db 12,$5F
  !gs2
  !gs2
  db 24,$7F
  !gs2
  db 12,$5F
  !gs2
  !gs2
  db 24,$7F
  !gs2
  db 12,$5F
  !gs2
  !loop : dw .subFC53 : db 2
  !loop : dw .subFC62 : db 2
  !loop : dw .subFC53 : db 2
  !c3
  db 24,$7F
  !c3
  db 12,$5F
  !c3
  !c3
  db 24,$7F
  !c3
  db 12,$5F
  !c3
  !f3
  db 24,$7F
  !f3
  db 12,$5F
  !f3
  !f3
  db 24,$7F
  !f3
  db 12,$5F
  !f3
  !as2
  db 24,$7F
  !as2
  db 12,$5F
  !as2
  !as2
  db 24,$7F
  !as2
  db 12,$5F
  !as2
  !ds3
  db 24,$7F
  !ds3
  db 12,$5F
  !ds3
  !ds3
  db 24,$7F
  !ds3
  db 12,$5F
  !ds3
  !c3
  db 24,$7F
  !c3
  db 12,$5F
  !c3
  !c3
  db 24,$7F
  !c3
  db 12,$5F
  !c3
  !d3
  db 24,$7F
  !d3
  db 12,$5F
  !d3
  !d3
  db 24,$7F
  !d3
  db 12,$5F
  !d3
  !ds3
  db 24,$7F
  !ds3
  db 12,$5F
  !ds3
  !ds3
  db 24,$7F
  !ds3
  db 12,$5F
  !ds3
  !gs2
  db 24,$7F
  !gs2
  db 12,$5F
  !gs2
  db 24,$7F
  !gs2
  !rest
  !end

.pattern1_6
  !volume,200
  !pan,10
  !instr,!instr02
  db 96
  !rest
  !rest
  db 6,$73
  !g5
  !as5
  !cs6
  !ds6
  !as5
  !cs6
  !ds6
  !g6
  !cs6
  !ds6
  !g6
  !as6
  !ds6
  !g6
  !as6
  !cs7
  !ds7
  !cs7
  !as6
  !g6
  !cs7
  !as6
  !g6
  !ds6
  !as6
  !g6
  !ds6
  !cs6
  !g6
  !ds6
  !cs6
  !as5
  db 96
  !rest
  !rest
  db 6
  !g5
  !as5
  !cs6
  !ds6
  !as5
  !cs6
  !ds6
  !g6
  !cs6
  !ds6
  !g6
  !as6
  !ds6
  !g6
  !as6
  !cs7
  !ds7
  !cs7
  !as6
  !g6
  !cs7
  !as6
  !g6
  !ds6
  !as6
  !g6
  !ds6
  !cs6
  !g6
  !ds6
  !cs6
  !as5
  db 24
  !rest
  db 6
  !c5
  !e5
  !g5
  !as5
  !c6
  db 42
  !rest
  db 24
  !rest
  db 6
  !c5
  !ds5
  !f5
  !a5
  !c6
  db 42
  !rest
  db 24
  !rest
  db 6
  !as4
  !cs5
  !f5
  !as5
  !cs6
  db 42
  !rest
  db 24
  !rest
  db 6
  !cs5
  !ds5
  !g5
  !as5
  !cs6
  db 42
  !rest
  db 24
  !rest
  db 6
  !c5
  !ds5
  !g5
  !c6
  !ds6
  db 42
  !rest
  db 24
  !rest
  db 6
  !d5
  !f5
  !gs5
  !d6
  !f6
  db 42
  !rest
  db 6
  !ds5
  !g5
  !as5
  !cs6
  !as5
  !cs6
  !ds6
  !g6
  !ds6
  !g6
  !as6
  !cs7
  !as6
  !cs7
  !ds7
  !g7
  !gs7
  !ds7
  !c7
  !gs6
  !c7
  !gs6
  !ds6
  !c6
  !gs5
  db 42
  !rest
  !end

.subFC2C
  db 36
  !g6
  db 12
  !f6
  db 36
  !g6
  db 12
  !f6
  db 36
  !f6
  db 12
  !ds6
  db 36
  !f6
  db 12
  !ds6
  !end

.subFBD5
  db 36
  !as5
  db 12
  !a5
  db 36
  !as5
  db 12
  !c6
  db 36
  !cs6
  db 12
  !ds6
  db 36
  !cs6
  db 12
  !c6
  db 36
  !c6
  db 12
  !as5
  db 36
  !c6
  db 12
  !cs6
  db 36
  !ds6
  db 12
  !d6
  db 36
  !ds6
  db 12
  !e6
  db 36
  !g6
  db 12
  !f6
  db 36
  !gs6
  db 12
  !f6
  db 36
  !e6
  db 12
  !ds6
  db 36
  !cs6
  db 12
  !c6
  !gs5
  !ds5
  !f5
  !c6
  db 24
  !gs5
  !rest
  !end

.subFC3D
  !tie
  db 24
  !cs6
  !f6
  !cs6
  db 12
  !f6
  !tie
  db 24
  !as5
  !f6
  !as5
  db 12
  !f6
  !tie
  db 24
  !f5
  !as5
  !g5
  db 12
  !cs6
  !end

.subFC53
  !ds3
  db 24,$7F
  !ds3
  db 12,$5F
  !ds3
  !ds3
  db 24,$7F
  !ds3
  db 12,$5F
  !ds3
  !end

.subFC62
  !gs2
  db 24,$7F
  !gs2
  db 12,$5F
  !gs2
  !gs2
  db 24,$7F
  !gs2
  db 12,$5F
  !gs2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
