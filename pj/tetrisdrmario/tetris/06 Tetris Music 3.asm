asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr0B = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr0B,$8F,$2E,$B8,$04,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample0B,Sample0B+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample0B: incbin "Sample0B.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerF0D9

TrackerF0D9:
  dw .pattern0
-
  dw .pattern1
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0

.pattern0_0
  !instr,!instr0B
  !tempo,30
  !musicVolume,193;220
  !volume,200
  !pan,10
  !echo,%00011111,30,30
  !echoParameters,8,80,0
  db 12
  !rest
  !end

.pattern0_1
  !instr,!instr0B
  !volume,200
  !pan,10
  db 12
  !rest
  !end

.pattern0_2
  !instr,!instr0B
  !volume,200
  !pan,10
  db 12
  !rest
  !end

.pattern0_3
  !instr,!instr0B
  !volume,200
  !pan,10
  db 12
  !rest
  !end

.pattern0_4
  !instr,!instr0B
  !volume,130
  !pan,10
  !subtranspose,5
  db 12
  !rest
  !end

.pattern0_5
  !instr,!instr0B
  !volume,130
  !pan,10
  !subtranspose,5
  db 12
  !rest
  !end

.pattern1_0
  db 24,$4D
  !a5
  !fs6
  !gs5
  !a5
  !fs5
  !f5
  !loop : dw .subF48B : db 1
  !a5
  !a5
  !d6
  !gs5
  !gs5
  !cs6
  !fs5
  !b5
  !gs5
  !f5
  !f5
  !cs6
  !loop : dw .subF48B : db 2
  !a5
  !a5
  !d6
  !gs5
  !gs5
  !e6
  !cs6
  !cs6
  !e5
  db 72,$7D
  !a5
  db 24,$4D
  !e6
  !cs6
  !a5
  !a5
  !cs6
  !b5
  !cs6
  db 48
  !e6
  db 24
  !a5
  db 48
  !cs6
  !cs6
  db 24,$7D
  !ds6
  db 12,$2D
  !tie
  db 36,$4D
  !gs6
  db 24,$7D
  !gs6
  db 12,$2D
  !tie
  db 24,$4D
  !e6
  !cs6
  db 12,$7D
  !c6
  db 48,$08
  !tie
  db 24
  !rest
  db 42,$7D
  !e6
  db 30,$2D
  !g6
  db 24,$4D
  !e6
  !e6
  !d6
  db 42,$7D
  !fs6
  db 30,$2D
  !a6
  db 24,$4D
  !fs6
  !fs6
  !f6
  !gs6
  !cs6
  !gs6
  !d7
  !cs7
  !b6
  db 36,$5D
  !a6
  db 24,$4D
  !a6
  db 12,$7D
  !a6
  db 6
  !tie
  db 66,$0D
  !gs6
  !end

.pattern1_1
  db 12
  !rest
  db 24,$4D
  !cs6
  !cs6
  db 12
  !cs6
  !loop : dw .subF492 : db 3
  !tie
  db 24
  !cs6
  !fs5
  db 12
  !b5
  !tie
  db 24
  !b5
  !e5
  db 12
  !a5
  !tie
  db 24
  !cs6
  !a5
  db 12
  !fs5
  !tie
  db 24
  !cs5
  !gs5
  db 12
  !b5
  !loop : dw .subF492 : db 4
  !tie
  db 24
  !cs6
  !fs5
  db 12
  !b5
  !tie
  db 24
  !b5
  !e5
  db 12
  !b5
  !tie
  db 24
  !e6
  !a5
  db 12,$7D
  !gs5
  db 72,$08
  !tie
  db 12
  !rest
  db 24,$4D
  !d6
  !b5
  db 12,$7D
  !gs5
  db 12,$2D
  !tie
  db 24,$4D
  !b5
  !a5
  db 12,$7D
  !d6
  db 12,$2D
  !tie
  db 36,$4D
  !d6
  db 24,$7D
  !gs5
  db 12,$2D
  !tie
  db 36,$4D
  !b5
  db 24,$7D
  !b5
  db 24,$2D
  !tie
  db 48,$4D
  !fs6
  db 24
  !fs6
  db 48
  !a6
  db 24
  !fs6
  !ds6
  !ds6
  db 48
  !cs6
  db 24
  !rest
  db 36
  !rest
  db 12
  !fs6
  db 24,$7D
  !fs6
  db 12,$2D
  !tie
  db 24,$4D
  !d6
  !cs6
  db 12,$7D
  !b5
  db 36,$0D
  !tie
  db 12,$4D
  !gs6
  db 24,$7D
  !gs6
  db 12,$2D
  !tie
  db 24,$4D
  !f6
  !ds6
  db 12,$7D
  !cs6
  db 12,$2D
  !tie
  db 24,$4D
  !f6
  !f6
  db 12,$7D
  !b6
  db 12,$2D
  !tie
  db 24,$4D
  !cs7
  !b6
  db 12,$7D
  !f6
  db 24,$0D
  !tie
  db 24,$4D
  !b6
  !gs6
  db 12,$2D
  !fs6
  db 60,$7D
  !fs6
  !end

.pattern1_2
  db 48,$4B
  !fs4
  db 24,$7B
  !f5
  !loop : dw .subF499 : db 1
  !d4
  db 24,$7B
  !b4
  db 12,$2B
  !tie
  db 24,$4B
  !d5
  !b4
  db 12,$7B
  !gs4
  db 24,$0B
  !tie
  db 48,$4B
  !d5
  !loop : dw .subF4B4 : db 1
  !e4
  db 24,$7B
  !gs4
  db 24,$0B
  !tie
  db 48,$4B
  !cs5
  !a4
  db 24,$7B
  !a3
  !loop : dw .subF4C9 : db 4
  db 12,$2B
  !tie
  db 24,$4B
  !cs5
  !fs4
  db 12,$7B
  !ds5
  db 12,$2B
  !tie
  db 24,$4B
  !ds5
  !ds5
  db 12,$7B
  !ds5
  db 24,$0B
  !tie
  db 48,$4B
  !gs5
  db 24
  !cs5
  !gs5
  !b4
  !as4
  !fs4
  !as4
  db 72,$7B
  !b4
  db 12,$2B
  !tie
  db 24,$4B
  !ds5
  !ds5
  db 12,$7B
  !ds5
  db 72,$08
  !tie
  db 24
  !rest
  db 48,$4B
  !gs4
  !cs4
  db 24,$7B
  !f4
  db 24,$0B
  !tie
  db 48,$4B
  !b4
  db 72
  !fs4
  !end

.pattern1_3
  db 24
  !rest
  db 48,$4B
  !d5
  !loop : dw .subF4B4 : db 1
  !e4
  db 24,$7B
  !a4
  db 24,$0B
  !tie
  db 48,$4B
  !d5
  db 24
  !cs5
  !cs5
  !a4
  db 48
  !fs4
  db 24,$7B
  !f5
  !loop : dw .subF499 : db 1
  !a4
  db 24,$7B
  !cs5
  db 24,$0B
  !tie
  db 48,$4B
  !e4
  db 24
  !cs5
  !a5
  !b4
  !cs5
  !a4
  !gs4
  !a4
  !a5
  !b4
  !cs5
  !a4
  !gs4
  !a4
  !a4
  !fs5
  !c5
  !gs4
  !c5
  db 48
  !cs5
  db 24,$7B
  !gs4
  db 12,$2B
  !tie
  db 24,$4B
  !e5
  !e5
  db 12,$7B
  !e5
  db 12,$2B
  !tie
  db 24,$4B
  !cs5
  !cs5
  db 12,$7B
  !cs5
  db 72,$08
  !tie
  db 24,$4B
  !c5
  !gs4
  !c5
  db 72
  !cs5
  db 48
  !cs5
  db 24,$7B
  !f4
  db 24,$0B
  !tie
  db 48,$4B
  !ds4
  !a4
  db 24,$7B
  !cs5
  db 72,$08
  !tie
  !end

.pattern1_4
  db 12,$7D
  !a5
  !cs6
  !fs6
  !cs6
  !gs5
  !cs6
  !a5
  !cs6
  !fs5
  !cs6
  !f5
  !cs6
  !loop : dw .subF4D4 : db 1
  !a5
  !cs6
  !a5
  !fs5
  !d6
  !b5
  !gs5
  !b5
  !gs5
  !e5
  !cs6
  !a5
  !fs5
  !cs6
  !b5
  !a5
  !gs5
  !fs5
  !f5
  !cs5
  !f5
  !gs5
  !cs6
  !b5
  !loop : dw .subF4D4 : db 2
  !a5
  !cs6
  !a5
  !fs5
  !d6
  !b5
  !gs5
  !b5
  !gs5
  !e5
  !e6
  !b5
  !cs6
  !e6
  !cs6
  !a5
  !e5
  !gs5
  db 72
  !a5
  db 12
  !e6
  !d6
  !cs6
  !b5
  !a5
  !gs5
  !a5
  !b5
  !cs6
  !a5
  !b5
  !d6
  !cs6
  !d6
  db 24
  !e6
  !gs5
  db 12
  !a5
  !b5
  db 24
  !cs6
  !b5
  !cs6
  !fs6
  !ds6
  db 12
  !fs6
  !gs6
  db 24
  !a6
  !gs6
  db 12
  !fs6
  !e6
  !ds6
  !cs6
  !ds6
  !c6
  db 72
  !cs6
  db 36
  !e6
  db 6
  !fs6
  !g6
  db 24
  !fs6
  db 12
  !e6
  !d6
  !e6
  !cs6
  !d6
  !b5
  db 36
  !fs6
  db 6
  !gs6
  !a6
  db 24
  !gs6
  db 12
  !fs6
  !f6
  !fs6
  !ds6
  !f6
  !cs6
  !gs6
  !f6
  !cs6
  !f6
  !gs6
  !b6
  !d7
  !cs7
  !cs7
  !b6
  !b6
  !f6
  db 24
  !a6
  db 12
  !b6
  !a6
  !gs6
  !a6
  db 6
  !fs6
  !gs6
  db 60
  !fs6
  !end

.pattern1_5
  db 24,$7B
  !fs4
  !d5
  !f5
  !fs4
  !a4
  !cs5
  !fs5
  !d5
  !cs5
  !fs5
  !a4
  !cs5
  !fs4
  !fs5
  !b4
  !e4
  !e5
  !a4
  !d4
  !d5
  !b4
  db 12
  !cs5
  !d5
  !cs5
  !b4
  !a4
  !gs4
  db 24
  !fs4
  !d5
  !f5
  !fs4
  !a4
  !cs5
  !fs5
  !d5
  !cs5
  !fs5
  !a4
  !cs5
  !fs4
  !fs5
  !b4
  !e4
  !e5
  !gs4
  !a4
  !cs5
  !cs5
  !a4
  !e4
  !a3
  db 12
  !cs5
  !e5
  !a5
  !e5
  !b4
  !e5
  !cs5
  !e5
  !a4
  !e5
  !gs4
  !e5
  !a4
  !e5
  !a5
  !e5
  !b4
  !e5
  !cs5
  !e5
  !a4
  !e5
  !gs4
  !e5
  !a4
  !cs5
  !a4
  !fs4
  !fs5
  !ds5
  !c5
  !ds5
  !gs4
  !ds5
  !c5
  !ds5
  db 24
  !cs5
  !gs5
  !gs4
  db 12
  !cs5
  !e5
  !gs5
  !e5
  !b4
  !e5
  !as4
  !cs5
  !fs4
  !cs5
  !as4
  !cs5
  db 72
  !b4
  db 12
  !c5
  !ds5
  !gs4
  !ds5
  !c5
  !ds5
  db 72
  !cs5
  db 24
  !cs5
  !gs4
  !f4
  !cs4
  !ds4
  !f4
  !a4
  !b4
  !cs5
  db 72
  !fs4
  !end

.subF48B
  !a5
  !fs6
  !gs5
  !a5
  !fs5
  !f5
  !end

.subF492
  !tie
  db 24
  !cs6
  !cs6
  db 12
  !cs6
  !end

.subF499
  db 24,$0B
  !tie
  db 48,$4B
  !a4
  !fs5
  db 24,$7B
  !cs5
  db 24,$0B
  !tie
  db 48,$4B
  !a4
  !fs4
  db 24,$7B
  !b4
  db 24,$0B
  !tie
  db 48,$4B
  !e5
  !end

.subF4B4
  !fs4
  db 24,$7B
  !cs5
  db 24,$0B
  !tie
  db 48,$4B
  !d5
  !fs5
  db 24,$7B
  !cs5
  db 24,$0B
  !tie
  db 48,$4B
  !fs5
  !end

.subF4C9
  db 12,$2B
  !tie
  db 24,$4B
  !e5
  !e5
  db 12,$7B
  !e5
  !end

.subF4D4
  !a5
  !cs6
  !fs6
  !cs6
  !gs5
  !cs6
  !a5
  !cs6
  !fs5
  !cs6
  !f5
  !cs6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
