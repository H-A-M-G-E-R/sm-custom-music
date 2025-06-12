asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr09 = $16
!instr0B = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr09,$8F,$F2,$B8,$01,$00
  db !instr0B,$BF,$B3,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample08_09,Sample08_09+90
  dw Sample0A_0B,Sample0A_0B+216
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"
  Sample0A_0B: incbin "Sample_747efcf82250b87828c62d8ff47951c0.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !musicVolume,255
  !tempo,51
  !echo,%00011111,53,53
  !echoParameters,5,80,0
  !pan,10
  !instr,!instr0B
  !volume,135
  db 5,$71
  !g7
  db 5,$72
  !a7
  db 5,$73
  !e7
  db 5,$76
  !g7
  !dynamicVolume,95,50
  !d7
  !e7
  !c7
  !d7
  !a6
  !c7
  !g6
  !a6
  !e6
  !g6
  !d6
  db 5,$73
  !e6
  db 5,$76
  !d6
  db 5,$73
  !e6
  db 5,$76
  !d6
  !e6
  !d6
  !e6
  !d6
  !e6
  !end

.pattern0_1
  db 1
  !rest
  !pan,20
  !instr,!instr0B
  !volume,95
  !subtranspose,14
  db 5,$71
  !g7
  db 5,$72
  !a7
  db 5,$73
  !e7
  db 5,$76
  !g7
  !d7
  !dynamicVolume,94,50
  !e7
  !c7
  !d7
  !a6
  !c7
  !g6
  !a6
  !e6
  !g6
  !d6
  db 5,$73
  !e6
  db 5,$76
  !d6
  db 5,$73
  !e6
  db 5,$76
  !d6
  !e6
  !d6
  !e6
  !d6
  db 4
  !e6
  !end

.pattern0_2
  db 2
  !rest
  !subtranspose,7
  !pan,0
  !instr,!instr0B
  !volume,95
  db 5,$71
  !g7
  db 5,$72
  !a7
  db 5,$73
  !e7
  db 5,$76
  !g7
  !d7
  !dynamicVolume,93,50
  !e7
  !c7
  !d7
  !a6
  !c7
  !g6
  !a6
  !e6
  !g6
  !d6
  db 5,$73
  !e6
  db 5,$76
  !d6
  db 5,$73
  !e6
  db 5,$76
  !d6
  !e6
  !d6
  !e6
  !d6
  db 3
  !e6
  !end

.pattern0_3
  !pan,10
  !instr,!instr09
  !subtranspose,40
  !volume,100
  db 5,$71
  !g7
  db 5,$72
  !a7
  db 5,$73
  !e7
  db 5,$76
  !g7
  !dynamicVolume,100,50
  !d7
  !e7
  !c7
  !d7
  !a6
  !c7
  !g6
  !a6
  !e6
  !g6
  !d6
  db 5,$73
  !e6
  db 5,$76
  !d6
  db 5,$73
  !e6
  db 5,$76
  !d6
  !e6
  !d6
  !e6
  !d6
  !e6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
