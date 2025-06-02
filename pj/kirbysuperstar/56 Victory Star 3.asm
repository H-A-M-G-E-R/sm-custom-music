asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr0B = $16
!instr2D = $17
!instr2F = $18
!instr31 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr0B,$BF,$B3,$B8,$03,$00
  db !instr2D,$FF,$E0,$B8,$07,$A0
  db !instr2F,$FF,$E0,$B8,$05,$50
  db !instr31,$FF,$F0,$B8,$03,$D0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample0A_0B,Sample0A_0B+216
  dw Sample2D,Sample2D+1161
  dw Sample2F,Sample2F+1080
  dw Sample31,Sample31+2556
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"
  Sample2D: incbin "Sample_76f9c58edf49dd034d08ad9f3c84e341.brr"
  Sample2F: incbin "Sample_dd6930edc0eb616ec90185881eb2720c.brr"
  Sample31: incbin "Sample_30dbe99be68fe8d9fef32d4474bfb594.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
-
  dw .pattern0
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%00001111,45,45
  !echoParameters,5,176,0
  !musicVolume,255
  !tempo,51
  !pan,9
  !instr,!instr31
  !volume,143
  db 28,$76
  !c6
  !f6
  db 28,$74
  !g6
  db 28,$73
  !a6
  db 28,$76
  !f6
  !d6
  !c6
  !f6
  db 28,$74
  !g6
  db 28,$73
  !a6
  db 28,$76
  !f6
  !d6
  !as5
  !d6
  db 28,$74
  !g6
  db 28,$73
  !e6
  db 28,$76
  !g6
  !cs6
  !loop : dw .sub4FCF : db 3
  !as5
  !d6
  db 28,$74
  !a6
  db 28,$73
  !g6
  db 28,$76
  !e6
  !g6
  !c6
  !f6
  db 28,$74
  !g6
  db 28,$73
  !a6
  db 28,$76
  !f6
  !d6
  !end

.pattern0_1
  !pan,8
  !instr,!instr31
  !volume,143
  db 15,$76
  !f6
  db 28
  !d6
  !c6
  !f6
  db 28,$74
  !g6
  db 28,$73
  !a6
  db 28,$76
  !f6
  !d6
  !c6
  !f6
  db 28,$74
  !g6
  db 28,$73
  !a6
  db 28,$76
  !f6
  !d6
  !as5
  !d6
  db 28,$74
  !g6
  db 28,$73
  !e6
  db 28,$76
  !g6
  !f6
  !loop : dw .sub4FCF : db 3
  !as5
  !d6
  db 28,$74
  !a6
  db 28,$73
  !g6
  db 28,$76
  !e6
  !g6
  !c6
  !f6
  db 28,$74
  !g6
  db 28,$73
  !a6
  db 13,$76
  !f6

.pattern0_2
  !pan,10
  !transpose,12
  !instr,!instr0B
  !volume,154
  db 28,$76
  !c6
  !c6
  !c6
  db 56
  !d6
  db 28
  !c6
  !a5
  !c6
  !f6
  db 84
  !c6
  db 28
  !f6
  !f6
  !f6
  !g6
  !f6
  !g6
  db 28,$75
  !a6
  db 43,$76
  !c6
  db 13,$73
  !d6
  db 84
  !c6
  db 28,$76
  !c6
  !c6
  !c6
  !d6
  db 28,$72
  !f6
  db 28,$76
  !c6
  !a5
  !c6
  !f6
  !c6
  !d6
  !f6
  !g6
  !f6
  !g6
  !f6
  !cs6
  !ds6
  db 112
  !c6
  db 28
  !a5
  !as5

.pattern0_3
  !pan,12
  !transpose,12
  !instr,!instr0B
  !volume,154
  db 28,$76
  !a5
  !a5
  !a5
  db 56
  !a5
  db 28
  !a5
  !f5
  !a5
  !c6
  db 84
  !a5
  db 28
  !d6
  !d6
  !d6
  !cs6
  !cs6
  !cs6
  db 28,$75
  !f6
  db 43,$76
  !a5
  db 13,$73
  !a5
  db 84
  !a5
  db 28,$76
  !a5
  !a5
  !a5
  !a5
  db 28,$72
  !c6
  db 28,$76
  !a5
  !f5
  !a5
  !c6
  !a5
  !a5
  !c6
  !d6
  !d6
  !d6
  !cs6
  !as5
  !as5
  db 112
  !a5
  db 28
  !c5
  !g5

.pattern0_4
  !volume,201
  !loop : dw .sub4FDC : db 8

.sub4FCF
  !c6
  !f6
  db 28,$74
  !g6
  db 28,$73
  !a6
  db 28,$76
  !f6
  !d6
  !end

.sub4FDC
  !instr,!instr2D
  db 15,$78
  !f4
  db 13,$73
  !f4
  db 15,$76
  !f4
  db 13,$73
  !f4
  db 15,$76
  !f4
  db 13,$73
  !f4
  !instr,!instr2F
  db 15,$76
  !d7
  !instr,!instr2D
  db 13,$73
  !f4
  db 15,$76
  !f4
  db 13,$73
  !f4
  db 15,$76
  !f4
  db 13,$73
  !f4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
