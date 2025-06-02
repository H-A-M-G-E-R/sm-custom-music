asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr30 = $16
!instr31 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr30,$FF,$E0,$B8,$07,$A0
  db !instr31,$FD,$F1,$B8,$07,$40
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample30,Sample30+2196
  dw Sample31,Sample31+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample30: incbin "Sample_3836e68e3d87c6934832ea8c79b2974b.brr"
  Sample31: incbin "Sample_997ae0fd998037789f5b8dc17e49af0b.brr"

NoteLengthTable: ; note length table
  db $65,$7F,$98,$B2,$CB,$E5,$F2,$FC
  db $4C,$59,$6D,$7F,$87,$8E,$98,$A0,$A8,$B2,$BF,$CB,$D8,$E5,$F2,$FC

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker4E85

Tracker4E85:
  dw .pattern0
-
  dw .pattern1
  dw $00C8,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, 0, 0, 0, 0, 0, 0, 0

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
  db 80,$7C
  %percNote(!instr30-!instr30)
  !end

.pattern0_1
  !volume,255
  db 50,$77
  %percNote(!instr31-!instr30)
  !dynamicVolume,30,50
  db 30
  !tie

.pattern0_2
  !pan,12
  !volume,255
  db 80,$74
  %percNote(!instr30-!instr30)

.pattern0_3
  !subtranspose,2
  !pan,8
  !volume,255
  db 80,$74
  %percNote(!instr30-!instr30)

.pattern0_4
  !volume,255
  !instr,!instr31
  db 50,$78
  !g4
  !dynamicVolume,30,50
  db 30
  !tie

.pattern1_0
  db 72
  !rest
  !rest
  !loop : dw .sub4EF6 : db 4
  !end

.sub4EF6
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
