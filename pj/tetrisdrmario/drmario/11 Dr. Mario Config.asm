asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr12 = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr12,$CF,$74,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample12,Sample12+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample12: incbin "Sample12.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerEA93

TrackerEA93:
  dw .pattern0
-
  dw .pattern1
  dw .pattern1
  dw .pattern2
  dw $00FA,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0

.pattern0_0
  !musicTranspose,255
  !musicVolume,210
  !tempo,33
  !volume,240
  !instr,!instr12
  !pan,10
  !echo,%00111111,20,20
  !echoParameters,4,80,0
  db 24,$7F
  !c5
  !rest
  db 11,$2F
  !b4
  !as4
  !a4
  db 6
  !rest
  !end

.pattern0_1
  !volume,240
  !instr,!instr12
  !pan,10
  db 6,$7F
  !g5
  db 12,$5F
  !e6
  db 6,$7F
  !e6
  db 12,$2F
  !g6
  !rest
  db 11
  !a6
  !gs6
  !g6
  db 6
  !rest
  !end

.pattern0_2
  !volume,240
  !instr,!instr12
  !pan,10
  db 6
  !rest
  db 12,$5F
  !as6
  db 6,$7F
  !as6
  !e7
  !ds7
  db 12,$2F
  !e7
  db 11
  !ds7
  !d7
  !cs7
  db 6
  !rest
  !end

.pattern0_3
  !volume,240
  !instr,!instr12
  !subtranspose,60
  !pan,10
  db 24,$7F
  !c5
  !rest
  db 11,$2F
  !b4
  !as4
  !a4
  db 6
  !rest
  !end

.pattern0_4
  !volume,240
  !instr,!instr12
  !subtranspose,80
  !pan,10
  db 6,$7F
  !g5
  db 12,$5F
  !e6
  db 6,$7F
  !e6
  db 12,$2F
  !g6
  !rest
  db 11
  !a6
  !gs6
  !g6
  db 6
  !rest
  !end

.pattern0_5
  !volume,240
  !instr,!instr12
  !pan,10
  !subtranspose,50
  db 6
  !rest
  db 12,$5F
  !as6
  db 6,$7F
  !as6
  !e7
  !ds7
  db 12,$2F
  !e7
  db 11
  !ds7
  !d7
  !cs7
  db 6
  !rest
  !end

.pattern1_0
  !tempo,33
  db 24,$7F
  !g4
  !dynamicTempo,72,32
  db 72
  !rest
  db 24,$7D
  !c6
  db 8,$7B
  !c6
  db 8,$7D
  !e6
  db 8,$7B
  !g6
  db 24,$7D
  !fs6
  !a6
  !tempo,33
  db 24,$2D
  !d5
  db 16,$7B
  !d5
  db 8,$7F
  !d4
  db 16,$7B
  !d5
  db 8,$7F
  !d4
  db 16,$7B
  !d5
  db 8,$7F
  !d4
  !dynamicTempo,96,31
  db 24,$7B
  !as5
  !c6
  !a5
  !fs4
  !end

.pattern1_1
  !loop : dw .subECC0 : db 1
  !end

.pattern1_2
  !loop : dw .subECEC : db 1
  !end

.pattern1_3
  !loop : dw .subECEC : db 1
  !end

.pattern1_4
  db 24,$7F
  !g4
  db 72
  !rest
  db 24,$7D
  !c6
  db 8,$7B
  !c6
  db 8,$7D
  !e6
  db 8,$7B
  !g6
  db 24,$7D
  !fs6
  !a6
  db 24,$2D
  !d5
  db 16,$7B
  !d5
  db 8,$7F
  !d4
  db 16,$7B
  !d5
  db 8,$7F
  !d4
  db 16,$7B
  !d5
  db 8,$7F
  !d4
  db 24,$7B
  !as5
  !c6
  !a5
  !fs4
  !end

.pattern1_5
  !loop : dw .subECC0 : db 1
  !end

.pattern2_0
  !tempo,33
  !dynamicTempo,192,35
  db 96,$7B
  !g6
  !b6
  !g6
  db 48
  !rest
  !tempo,30
  db 24
  !rest
  !c4
  !end

.pattern2_1
  db 96,$7B
  !d6
  !g6
  !d6
  db 72
  !rest
  db 24
  !f3
  !end

.pattern2_2
  db 16,$7B
  !b4
  db 8
  !c5
  db 16
  !b4
  db 8
  !c5
  db 16
  !b4
  db 8
  !c5
  db 16
  !b4
  db 8
  !c5
  !loop : dw .subED37 : db 2
  db 16
  !b4
  db 8
  !c5
  !b4
  !rest
  !c5
  db 24
  !rest
  !f4
  !end

.pattern2_3
  db 16,$7B
  !b4
  db 8
  !c5
  db 16
  !b4
  db 8
  !c5
  db 16
  !b4
  db 8
  !c5
  db 16
  !b4
  db 8
  !c5
  !loop : dw .subED37 : db 2
  db 16
  !b4
  db 8
  !c5
  !b4
  !rest
  !c5
  db 24
  !rest
  !f4
  !end

.pattern2_4
  db 96,$7B
  !g6
  !b6
  !g6
  db 72
  !rest
  db 24
  !c4
  !end

.pattern2_5
  db 96,$7B
  !d6
  !g6
  !d6
  db 72
  !rest
  db 24
  !f3
  !end

.subECC0
  db 24,$7B
  !d5
  db 72
  !rest
  db 24,$7D
  !e5
  db 8,$7B
  !e5
  db 8,$7D
  !g5
  db 8,$7B
  !c6
  db 24,$7D
  !a5
  !d6
  db 24,$2D
  !g5
  db 16,$7F
  !d3
  db 8
  !d3
  db 16
  !d3
  db 8
  !d3
  db 16
  !d3
  db 8
  !d3
  db 24,$7B
  !e5
  !g5
  !fs5
  !fs3
  !end

.subECEC
  db 16,$7F
  !b6
  db 8,$7D
  !d7
  !ds7
  !d7
  db 16,$2D
  !ds7
  db 8,$7D
  !d7
  !ds7
  !d7
  !ds7
  !d7
  db 24,$7F
  !g6
  db 8,$7D
  !g6
  db 8,$7F
  !c7
  db 8,$7D
  !e6
  db 24,$7F
  !d6
  !fs6
  db 16,$3F
  !b6
  db 8,$7B
  !d5
  db 16
  !d6
  db 8
  !d5
  db 16
  !d6
  db 8
  !d5
  db 16
  !d6
  db 8
  !d5
  db 8,$7F
  !c5
  !rest
  db 8,$7B
  !c5
  db 8,$7F
  !ds5
  !rest
  db 8,$7B
  !ds5
  db 8,$7F
  !d5
  db 16
  !rest
  db 24,$7B
  !fs4
  !end

.subED37
  db 16
  !b4
  db 8
  !c5
  db 16
  !b4
  db 8
  !c5
  db 16
  !b4
  db 8
  !c5
  db 16
  !b4
  db 8
  !c5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
