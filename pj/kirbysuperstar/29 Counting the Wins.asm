asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr30 = $16

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr30,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample30,Sample30+2196
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, 0, 0, 0, 0, 0

.pattern0_0
  !setNoteLengthTable : dw NoteLengthTable
  !percBase,!instr30
  !echoParameters,4,206,0
  !echo,%00011111,19,19
  !musicVolume,255
  !tempo,51
  !subtranspose,50
  !pan,10
  !volume,255
  db 8,$7B
  %percNote(!instr30-!instr30)
  !dynamicVolume,20,140
  db 7,$78
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  !dynamicVolume,176,255
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  !loop : dw .sub4FEE : db 31
  !end

.pattern0_1
  !pan,12
  !volume,230
  db 8,$73
  %percNote(!instr30-!instr30)
  !dynamicVolume,20,126
  db 5,$72
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  !dynamicVolume,255,255
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  !loop : dw .sub4FEE : db 30
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 7
  %percNote(!instr30-!instr30)

.pattern0_2
  !subtranspose,2
  !pan,8
  !volume,230
  db 8,$73
  %percNote(!instr30-!instr30)
  !dynamicVolume,20,126
  db 3,$72
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  !dynamicVolume,255,255
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  !loop : dw .sub4FEE : db 30
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 9
  %percNote(!instr30-!instr30)

.sub4FEE
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  db 6
  %percNote(!instr30-!instr30)
  %percNote(!instr30-!instr30)
  db 5
  %percNote(!instr30-!instr30)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
