asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr06 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr06,$FF,$E0,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample06,Sample06+72
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample06: incbin "Sample_28e4237a3347ac666b56d280839f22cf.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw TrackerED8D

TrackerED8D:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !tempo,31
  !musicVolume,200
  !instr,!instr06
  !pan,10
  !volume,240
  db 32,$7D
  !b5
  db 30
  !as5
  db 28
  !a5
  db 24
  !gs5
  db 20
  !g5
  db 16
  !fs5
  db 36
  !f5
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern0_1
  !instr,!instr02
  !pan,14
  !volume,250
  db 90
  !rest
  db 96
  !rest
  db 6,$5E
  !a4
  db 6,$23
  !b5
  db 6,$7A
  !b3
  db 6,$3D
  !a4
  db 6,$07
  !b5
  db 6,$7F
  !b3
  db 6,$23
  !a4
  db 6,$3A
  !b5
  db 6,$7F
  !b3
  db 6,$3D
  !a4
  db 6,$3A
  !b5
  db 6,$77
  !b3
  !b5
  !b5
  db 12
  !rest
  db 48
  !rest
  !end

.pattern0_2
  !instr,!instr06
  !pan,8
  !volume,180
  db 4
  !rest
  db 32,$7D
  !b5
  db 30
  !as5
  db 28
  !a5
  db 24
  !gs5
  db 20
  !g5
  db 16
  !fs5
  db 36
  !f5
  db 96
  !tie
  db 42,$38
  !tie
  db 2
  !rest
  !end

.pattern0_3
  !instr,!instr06
  !pan,6
  !volume,240
  db 32,$7D
  !fs4
  db 30
  !f4
  db 28
  !e4
  db 24
  !ds4
  db 20
  !d4
  db 16
  !cs4
  db 36
  !c4
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern0_4
  !instr,!instr06
  !pan,12
  !volume,240
  db 32,$7D
  !f5
  db 30
  !e5
  db 28
  !ds5
  db 24
  !d5
  db 20
  !cs5
  db 16
  !c5
  db 36
  !b4
  db 96
  !tie
  db 48,$38
  !tie
  !end

.pattern0_5
  !instr,!instr06
  !pan,8
  !volume,240
  db 32,$7D
  !c5
  db 30
  !b4
  db 28
  !as4
  db 24
  !a4
  db 20
  !gs4
  db 16
  !g4
  db 36
  !fs4
  db 96
  !tie
  db 48,$38
  !tie
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
