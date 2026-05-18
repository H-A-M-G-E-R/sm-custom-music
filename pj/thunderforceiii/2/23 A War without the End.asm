asar 1.91
norom : org 0
incsrc "../../defines.asm"

!instr01 = $16
!instr03 = $17
!instr04 = $18
!instr05 = $19
!instr06 = $1A

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$FF,$E0,$B8,$03,$0C
  db !instr03,$FF,$E0,$B8,$06,$1E
  db !instr04,$FF,$E0,$B8,$04,$00
  db !instr05,$FF,$E0,$B8,$05,$6C
  db !instr06,$FF,$E0,$B8,$07,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+36
  dw Sample03,Sample03+0
  dw Sample04,Sample04+972
  dw Sample05,Sample05+36
  dw Sample06,Sample06+315
endspcblock

spcblock !p_songSpecificData nspc ; sample data
  Sample01: incbin "Sample01.brr"
  Sample03: incbin "Sample03.brr"
  Sample04: incbin "Sample04.brr"
  Sample05: incbin "Sample05.brr"
  Sample06: incbin "Sample06.brr"

NoteLengthTable: ; note length table
  db $32,$65,$7F,$98,$B2,$CB,$E5,$FC
  db $32,$4C,$65,$72,$7F,$8C,$98,$A5,$B2,$BF,$CB,$D8,$E5,$F2,$F4,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerD000

TrackerD000:
  dw .pattern0
  dw .pattern1
  dw .pattern2
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, 0, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, 0

.pattern0_0
  !echo,%00111111,20,20
  !echoParameters,2,100,2
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,160
  !instr,!instr04
  !echo,%00111111,20,20
  !echoParameters,2,100,2
  !tempo,15
  !volume,240
  db 48,$7E
  !d3
  !a2
  !b2
  !a2
  !g2
  !e2
  !tempo,12
  !dynamicTempo,96,7
  !dynamicVolume,96,100
  db 96
  !a2
  !end

.pattern0_1
  !instr,!instr01
  !volume,240
  !vibrato,48,10,70
  db 36,$7E
  !fs5
  db 6
  !fs5
  !fs5
  db 48
  !a5
  db 36
  !d6
  db 6
  !d6
  !d6
  db 24
  !cs6
  !a5
  db 36
  !b5
  db 6
  !b5
  !b5
  db 24
  !e6
  db 12
  !d6
  db 6
  !e6
  !d6
  !dynamicVolume,96,100
  db 96
  !cs6
  !end

.pattern0_2
  !instr,!instr01
  !volume,120
  !pan,20
  !subtranspose,45
  db 24
  !rest
  !vibrato,48,10,70
  db 36,$7E
  !fs5
  db 6
  !fs5
  !fs5
  db 48
  !a5
  db 36
  !d6
  db 6
  !d6
  !d6
  db 24
  !cs6
  !a5
  db 36
  !b5
  db 6
  !b5
  !b5
  db 24
  !e6
  db 12
  !d6
  db 6
  !e6
  !d6
  !dynamicVolume,96,60
  db 72
  !cs6
  !end

.pattern0_3
  !pan,14
  !instr,!instr01
  !volume,200
  db 48,$7E
  !d6
  !a5
  !b5
  !a5
  !g5
  !e5
  !dynamicVolume,96,100
  !a5
  !e5
  !end

.pattern0_4
  !instr,!instr05
  !volume,200
  db 48,$7E
  !fs5
  !cs5
  !d5
  !cs5
  !b4
  !g4
  !dynamicVolume,96,100
  !cs5
  !a4
  !end

.pattern0_5
  !pan,6
  !instr,!instr01
  !volume,200
  db 48,$7E
  !a5
  !e5
  !fs5
  !e5
  !d5
  !b4
  !dynamicVolume,96,100
  !e5
  !cs5
  !end

.pattern1_0
  !musicVolume,160
  !tempo,15
  !volume,240
  db 48,$7E
  !d3
  !cs3
  !b2
  !a2
  !g2
  !fs2
  !e2
  db 24
  !a2
  !cs3
  db 48
  !d3
  !cs3
  !b2
  !a2
  !g2
  !fs2
  !e2
  db 24
  !a2
  !cs3
  db 48
  !d4
  !cs4
  !b3
  !a3
  !g3
  !fs3
  !e3
  db 24
  !a3
  !cs4
  db 48
  !d4
  !cs4
  db 24
  !b3
  !a3
  db 48
  !g3
  !tie
  !a3
  !tempo,12
  !dynamicTempo,96,11
  !d4
  !d3
  !end

.pattern1_1
  !volume,240
  db 30,$7E
  !fs5
  db 12
  !a4
  db 6
  !fs5
  db 30
  !e5
  db 12
  !a4
  db 6
  !e5
  db 72
  !d5
  db 6
  !d5
  db 18
  !e5
  db 36
  !g5
  db 6
  !b4
  !g5
  db 36
  !fs5
  db 6
  !a4
  !fs5
  db 48
  !e5
  db 24
  !d5
  !cs5
  db 30
  !fs5
  db 12
  !a4
  db 6
  !fs5
  db 30
  !e5
  db 12
  !a4
  db 6
  !e5
  db 72
  !d5
  db 6
  !d5
  db 18
  !e5
  db 36
  !g5
  db 6
  !b4
  !g5
  db 36
  !fs5
  db 6
  !a4
  !fs5
  db 48
  !e5
  db 24
  !d5
  !cs5
  !volume,235
  !instr,!instr06
  db 36
  !fs5
  db 6
  !a4
  !fs5
  db 36
  !e5
  db 6
  !a4
  !e5
  db 48
  !d5
  db 24
  !cs5
  !a4
  db 36
  !g5
  db 6
  !b4
  !g5
  db 36
  !fs5
  db 6
  !b4
  !fs5
  db 48
  !e5
  db 24
  !d5
  !e5
  db 36
  !fs5
  db 6
  !a4
  !fs5
  db 36
  !e5
  db 6
  !a4
  !e5
  db 24
  !d5
  !cs5
  db 48
  !b4
  !tie
  !cs5
  db 96
  !d5
  !end

.pattern1_2
  !volume,120
  db 24
  !rest
  db 30,$7E
  !fs5
  db 12
  !a4
  db 6
  !fs5
  db 30
  !e5
  db 12
  !a4
  db 6
  !e5
  db 72
  !d5
  db 6
  !d5
  db 18
  !e5
  db 36
  !g5
  db 6
  !b4
  !g5
  db 36
  !fs5
  db 6
  !a4
  !fs5
  db 48
  !e5
  db 24
  !d5
  !cs5
  db 30
  !fs5
  db 12
  !a4
  db 6
  !fs5
  db 30
  !e5
  db 12
  !a4
  db 6
  !e5
  db 72
  !d5
  db 6
  !d5
  db 18
  !e5
  db 36
  !g5
  db 6
  !b4
  !g5
  db 36
  !fs5
  db 6
  !a4
  !fs5
  db 48
  !e5
  db 24
  !d5
  !cs5
  !volume,115
  !instr,!instr06
  db 36
  !fs5
  db 6
  !a4
  !fs5
  db 36
  !e5
  db 6
  !a4
  !e5
  db 48
  !d5
  db 24
  !cs5
  !a4
  db 36
  !g5
  db 6
  !b4
  !g5
  db 36
  !fs5
  db 6
  !b4
  !fs5
  db 48
  !e5
  db 24
  !d5
  !e5
  db 36
  !fs5
  db 6
  !a4
  !fs5
  db 36
  !e5
  db 6
  !a4
  !e5
  db 24
  !d5
  !cs5
  db 48
  !b4
  !tie
  !cs5
  db 72
  !d5
  !end

.pattern1_3
  !volume,140
  db 48,$7E
  !d5
  !cs5
  !b4
  !a4
  !g5
  !fs5
  !e5
  db 24
  !fs5
  !e5
  db 48
  !d5
  !cs5
  !b4
  !a4
  !g5
  !fs5
  !e5
  db 24
  !fs5
  !e5
  !instr,!instr03
  db 12,$78
  !d5
  !d5
  !d5
  !d5
  !cs5
  !cs5
  !cs5
  !cs5
  !b4
  !b4
  !b4
  !b4
  !a4
  !a4
  !a4
  !a4
  !g5
  !g5
  !g5
  !g5
  !fs5
  !fs5
  !fs5
  !fs5
  !e5
  !e5
  !e5
  !e5
  !instr,!instr01
  db 24,$7E
  !fs5
  !cs5
  !instr,!instr03
  db 12,$78
  !d5
  !d5
  !d5
  !d5
  !cs5
  !cs5
  !cs5
  !cs5
  !b4
  !b4
  !a4
  !a4
  !instr,!instr01
  db 48,$7E
  !g4
  !tie
  !a4
  db 96
  !a5
  !end

.pattern1_4
  !volume,200
  db 48,$7E
  !fs5
  !a4
  !fs4
  !fs4
  !d5
  !d5
  !b4
  db 24
  !d5
  !cs5
  db 48
  !a4
  !a4
  !fs4
  !fs4
  !d5
  !d5
  !b4
  db 24
  !d5
  !cs5
  !volume,230
  !instr,!instr01
  db 36
  !fs5
  db 6
  !a4
  !fs5
  db 36
  !e5
  db 6
  !a4
  !e5
  db 48
  !d5
  db 24
  !cs5
  !a4
  db 36
  !g5
  db 6
  !b4
  !g5
  db 36
  !fs5
  db 6
  !b4
  !fs5
  db 48
  !e5
  db 24
  !d5
  !e5
  db 36
  !fs5
  db 6
  !a4
  !fs5
  db 36
  !e5
  db 6
  !a4
  !e5
  db 24
  !d5
  !cs5
  db 48
  !b4
  !tie
  !cs5
  db 96
  !d5
  !end

.pattern1_5
  !pan,0
  !subtranspose,45
  db 24
  !rest
  !volume,110
  db 48,$7E
  !d5
  !cs5
  !b4
  !a4
  !g5
  !fs5
  !e5
  db 24
  !fs5
  !e5
  db 48
  !d5
  !cs5
  !b4
  !a4
  !g5
  !fs5
  !e5
  db 24
  !fs5
  !volume,170
  !instr,!instr03
  db 12
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !fs4
  !fs4
  !fs4
  !fs4
  !fs4
  !fs4
  !fs4
  !fs4
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !d5
  !b4
  !b4
  !b4
  !b4
  !instr,!instr01
  db 24
  !b4
  !a4
  !instr,!instr03
  db 12
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !a4
  !fs4
  !fs4
  !fs4
  !fs4
  !instr,!instr01
  db 48
  !d5
  !tie
  !e5
  db 96
  !fs6
  !end

.pattern2_0
  !tempo,14
  db 48,$7E
  !d3
  !cs3
  !b2
  !cs3
  !dynamicTempo,192,10
  !d3
  !cs3
  !b2
  !tempo,8
  !cs3
  !tempo,9
  !dynamicMusicVolume,180,0
  !dynamicTempo,192,9
  db 96
  !d3
  !tie
  db 24
  !rest
  !end

.pattern2_1
  !volume,240
  !instr,!instr01
  db 48,$7E
  !fs5
  !e5
  !d5
  !e5
  !fs5
  !e5
  !d5
  !e5
  db 96
  !fs5
  !tie
  db 24
  !rest
  !end

.pattern2_2
  !volume,120
  !instr,!instr01
  db 24
  !rest
  db 48,$7E
  !fs5
  !e5
  !d5
  !e5
  !fs5
  !e5
  !d5
  !e5
  db 96
  !fs5
  !tie
  !end

.pattern2_3
  db 48,$7E
  !d5
  !cs5
  !b4
  !cs5
  !d5
  !cs5
  !b4
  !cs5
  db 96
  !cs5
  !tie
  db 24
  !rest
  !end

.pattern2_4
  !instr,!instr01
  !volume,90
  !subtranspose,70
  !pan,0
  db 36
  !rest
  db 48,$7E
  !fs5
  !e5
  !d5
  !e5
  !fs5
  !e5
  !d5
  !e5
  db 96
  !fs5
  db 60
  !tie
  db 24
  !rest
  !end

.pattern2_5
  !instr,!instr05
  db 48,$7E
  !a5
  !g5
  !fs5
  !g5
  !a5
  !g5
  !fs5
  !g5
  db 96
  !a5
  !tie
  db 24
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
