asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$F8,$E9,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker3A00

Tracker3A00:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !musicVolume,255
  !tempo,25
  !end

.pattern1_0
  !instr,!instr00
  !volume,104
  !transpose,12
  db 12,$7F
  !e5
  db 4,$72
  !f5
  db 4,$73
  !e5
  !f5
  db 4,$75
  !e5
  !f5
  db 4,$77
  !e5
  !f5
  db 4,$79
  !e5
  !f5
  db 4,$7B
  !e5
  !f5
  db 4,$7D
  !e5
  !f5
  db 4,$7F
  !e5
  !f5
  !loop : dw .sub3B40 : db 1
  db 12
  !d6
  db 4,$72
  !e6
  db 4,$73
  !d6
  !e6
  db 4,$75
  !d6
  !e6
  db 4,$77
  !d6
  !e6
  db 4,$79
  !d6
  !e6
  db 4,$7B
  !d6
  !e6
  db 4,$7D
  !d6
  !e6
  db 4,$7F
  !d6
  !e6
  !end

.pattern1_1
  db 12
  !rest
  !instr,!instr00
  !volume,62
  !subtranspose,8
  !transpose,12
  db 12,$7F
  !e5
  db 4,$72
  !f5
  db 4,$73
  !e5
  !f5
  db 4,$75
  !e5
  !f5
  db 4,$77
  !e5
  !f5
  db 4,$79
  !e5
  !f5
  db 4,$7B
  !e5
  !f5
  db 4,$7D
  !e5
  !f5
  db 4,$7F
  !e5
  !f5
  !loop : dw .sub3B40 : db 1
  db 12
  !d6
  db 4,$72
  !e6
  db 4,$73
  !d6
  !e6
  db 4,$75
  !d6
  !e6
  db 4,$77
  !d6
  !e6
  db 4,$79
  !d6
  !e6
  db 4,$7B
  !d6
  !e6
  db 4,$7D
  !d6
  !end

.pattern1_2
  !instr,!instr01
  !volume,166
  db 72,$7F
  !e3
  !loop : dw .sub3C07 : db 3
  !d3
  !end

.pattern1_3
  !instr,!instr02
  !volume,104
  !subtranspose,86
  !vibrato,0,30,144
  !pan,11
  db 72,$7F
  !e5
  !loop : dw .sub3C0A : db 3
  !d5
  !end

.pattern1_4
  db 1
  !rest
  !instr,!instr02
  !volume,104
  !subtranspose,80
  !vibrato,0,30,144
  !pan,9
  db 72,$7F
  !e5
  !loop : dw .sub3C0A : db 3
  db 71
  !d5
  !end

.pattern1_5
  !instr,!instr02
  !volume,104
  !subtranspose,86
  !vibrato,0,30,144
  !pan,1
  db 72,$7F
  !b4
  !loop : dw .sub3C0D : db 3
  !a4
  !end

.pattern1_6
  db 1
  !rest
  !instr,!instr02
  !volume,104
  !subtranspose,80
  !vibrato,0,30,144
  !pan,9
  db 72,$7F
  !b4
  !loop : dw .sub3C0D : db 3
  db 71
  !a4
  !end

.pattern1_7
  !instr,!instr01
  !volume,166
  !subtranspose,8
  !vibrato,0,24,96
  db 72,$7F
  !e3
  !loop : dw .sub3C07 : db 3
  !d3
  !end

.sub3B40
  db 12
  !f5
  db 4,$72
  !g5
  db 4,$73
  !f5
  !g5
  db 4,$75
  !f5
  !g5
  db 4,$77
  !f5
  !g5
  db 4,$79
  !f5
  !g5
  db 4,$7B
  !f5
  !g5
  db 4,$7D
  !f5
  !g5
  db 4,$7F
  !f5
  !g5
  db 12
  !e5
  db 4,$72
  !f5
  db 4,$73
  !e5
  !f5
  db 4,$75
  !e5
  !f5
  db 4,$77
  !e5
  !f5
  db 4,$79
  !e5
  !f5
  db 4,$7B
  !e5
  !f5
  db 4,$7D
  !e5
  !f5
  db 4,$7F
  !e5
  !f5
  db 12
  !f5
  db 4,$72
  !g5
  db 4,$73
  !f5
  !g5
  db 4,$75
  !f5
  !g5
  db 4,$77
  !f5
  !g5
  db 4,$79
  !f5
  !g5
  db 4,$7B
  !f5
  !g5
  db 4,$7D
  !a5
  !b5
  db 4,$7F
  !c6
  !d6
  db 12
  !e6
  db 4,$72
  !f6
  db 4,$73
  !e6
  !f6
  db 4,$75
  !e6
  !f6
  db 4,$77
  !e6
  !f6
  db 4,$79
  !e6
  !f6
  db 4,$7B
  !e6
  !f6
  db 4,$7D
  !e6
  !f6
  db 4,$7F
  !e6
  !f6
  db 12
  !f6
  db 4,$72
  !g6
  db 4,$73
  !f6
  !g6
  db 4,$75
  !f6
  !g6
  db 4,$77
  !f6
  !g6
  db 4,$79
  !f6
  !g6
  db 4,$7B
  !f6
  !g6
  db 4,$7D
  !f6
  !g6
  db 4,$7F
  !f6
  !g6
  db 12
  !e6
  db 4,$72
  !f6
  db 4,$73
  !e6
  !f6
  db 4,$75
  !e6
  !f6
  db 4,$77
  !e6
  !f6
  db 4,$79
  !e6
  !f6
  db 4,$7B
  !e6
  !f6
  db 4,$7D
  !e6
  !f6
  db 4,$7F
  !e6
  !f6
  !end

.sub3C07
  !f3
  !e3
  !end

.sub3C0A
  !f5
  !e5
  !end

.sub3C0D
  !c5
  !b4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
