asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr09 = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr09,$8F,$F2,$B8,$01,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample08_09,Sample08_09+90
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample08_09: incbin "Sample_616232da7857d16f447f1137cc303329.brr"

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

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !echo,%00010000,1,1
  !echoParameters,1,1,2
  !musicVolume,255
  !tempo,51
  !echo,%00011111,38,38
  !echoParameters,5,40,0
  !transpose,12
  !pan,9
  !instr,!instr09
  !volume,120
  db 21,$76
  !g6
  !c7
  db 21,$74
  !d7
  db 21,$73
  !e7
  db 21,$76
  !c7
  !a6
  !loop : dw .sub4F4E : db 31
  !end

.pattern0_1
  !transpose,12
  !pan,11
  !instr,!instr09
  !volume,120
  db 10,$76
  !c7
  db 21
  !a6
  !g6
  !c7
  db 21,$74
  !d7
  db 21,$73
  !e7
  db 21,$76
  !c7
  !a6
  !loop : dw .sub4F4E : db 30
  !g6
  !c7
  db 21,$74
  !d7
  db 21,$73
  !e7
  db 11,$76
  !c7
  !end

.pattern0_2
  !transpose,12
  !subtranspose,14
  !pan,20
  !instr,!instr09
  !volume,100
  db 5,$73
  !a6
  db 21,$76
  !g6
  !c7
  db 21,$74
  !d7
  db 21,$73
  !e7
  db 21,$76
  !c7
  !a6
  !loop : dw .sub4F4E : db 30
  !g6
  !c7
  db 21,$74
  !d7
  db 21,$73
  !e7
  db 21,$76
  !c7
  db 16
  !a6
  !end

.pattern0_3
  !transpose,12
  !subtranspose,7
  !pan,0
  !instr,!instr09
  !volume,100
  db 15,$73
  !c7
  db 21,$76
  !a6
  !g6
  !c7
  db 21,$74
  !d7
  db 21,$73
  !e7
  db 21,$76
  !c7
  !a6
  !loop : dw .sub4F4E : db 30
  !g6
  !c7
  db 21,$74
  !d7
  db 21,$73
  !e7
  db 6,$76
  !c7
  !end

.sub4F4E
  !g6
  !c7
  db 21,$74
  !d7
  db 21,$73
  !e7
  db 21,$76
  !c7
  !a6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
