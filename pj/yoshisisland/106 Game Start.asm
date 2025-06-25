asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr11 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$FF,$E0,$B8,$07,$A8
  db !instr11,$8F,$F1,$B8,$07,$A8
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+2961
  dw Sample11,Sample11+1683
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_8b0fba53bc76cbda00f704bf53387316.brr"
  Sample11: incbin "Sample_f3af6328bd01ba69fad6d210dcfe9d7c.brr"

NoteLengthTable: ; note length table
  db $33,$66,$7F,$99,$B2,$CC,$E5,$FC
  db $19,$33,$4C,$66,$72,$7F,$8C,$99,$A5,$B2,$BF,$CC,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker287A

Tracker287A:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !endEcho
  !musicVolume,230
  !tempo,25
  !instr,!instr02
  !volume,200
  !pan,12
  !slideOut,2,4,251
  db 30
  !rest
  db 12,$7F
  !d4
  db 7,$19
  !b3
  db 6,$37
  !c4
  db 12,$7F
  !d4
  db 6,$7B
  !b3
  db 6,$29
  !c4
  db 6,$3F
  !d4
  db 6,$39
  !b3
  db 5,$15
  !b3
  db 30,$7F
  !d4
  !end

.pattern0_1
  !instr,!instr02
  !volume,200
  !pan,8
  db 30
  !rest
  db 24,$7F
  !e3
  !e3
  db 18
  !e3
  db 30
  !e3
  !end

.pattern0_2
  !instr,!instr11
  !volume,200
  !pan,10
  db 30
  !rest
  db 24,$7F
  !f2
  db 24,$1B
  !f2
  db 12,$7F
  !f2
  db 6
  !rest
  db 30
  !f2
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
