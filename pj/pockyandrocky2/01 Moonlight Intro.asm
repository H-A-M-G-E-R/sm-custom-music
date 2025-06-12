asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr02 = $17
!instr03 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$F2,$B8,$03,$30
  db !instr02,$FF,$E0,$B8,$02,$40
  db !instr03,$F8,$E9,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1791
  dw Sample02,Sample02+801
  dw Sample03,Sample03+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample02: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample03: incbin "Sample_155420261344daa1320b579d12648a8c.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2404

Tracker2404:
  dw .pattern0
  dw .pattern1
  dw $0000

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !musicVolume,255
  !tempo,26
  db 48
  !rest
  !end

.pattern1_0
  !instr,!instr00
  !volume,83
  !pan,12
  !subtranspose,54
  db 6,$7F
  !e7
  !rest
  !c7
  db 6,$75
  !e7
  db 6,$7F
  !b6
  db 6,$75
  !c7
  db 6,$7F
  !a6
  db 6,$75
  !b6
  db 6,$7F
  !b6
  db 6,$75
  !a6
  db 6,$7F
  !a6
  db 6,$75
  !b6
  db 6,$7F
  !f6
  db 6,$75
  !a6
  db 6,$7F
  !e6
  db 6,$75
  !f6
  !loop : dw .sub2571 : db 1
  !loop : dw .sub25EC : db 3
  !end

.pattern1_1
  db 2
  !rest
  !instr,!instr00
  !volume,83
  !pan,8
  !subtranspose,62
  db 6,$7F
  !e7
  !rest
  !c7
  db 6,$75
  !e7
  db 6,$7F
  !b6
  db 6,$75
  !c7
  db 6,$7F
  !a6
  db 6,$75
  !b6
  db 6,$7F
  !b6
  db 6,$75
  !a6
  db 6,$7F
  !a6
  db 6,$75
  !b6
  db 6,$7F
  !f6
  db 6,$75
  !a6
  db 6,$7F
  !e6
  db 6,$75
  !f6
  !loop : dw .sub2571 : db 1
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  db 22
  !rest
  !end

.pattern1_2
  db 96
  !rest
  !rest
  !instr,!instr03
  !volume,104
  !pan,13
  !subtranspose,29
  db 24,$7F
  !e3
  !e4
  !e5
  !e6
  db 96
  !e5
  db 48
  !tie
  !e5
  db 96
  !e5
  !e5
  !fs5
  !dynamicVolume,96,42
  !tie
  !end

.pattern1_3
  db 96
  !rest
  !rest
  db 12
  !rest
  !instr,!instr03
  !volume,104
  !pan,7
  !subtranspose,29
  db 24,$7F
  !a3
  !a4
  !a5
  db 12
  !a6
  db 96
  !a5
  db 48
  !tie
  !g5
  db 96
  !g5
  !a5
  !a5
  !dynamicVolume,96,42
  !tie
  !end

.pattern1_4
  db 96
  !rest
  !rest
  db 24
  !rest
  !instr,!instr03
  !volume,104
  !pan,11
  !subtranspose,29
  db 24,$7F
  !b3
  !b4
  !b5
  db 96
  !b5
  db 48
  !tie
  !a5
  db 96
  !c6
  !d6
  !d6
  !dynamicVolume,96,42
  !tie
  !end

.pattern1_5
  db 96
  !rest
  !rest
  db 36
  !rest
  !instr,!instr03
  !volume,104
  !pan,9
  !subtranspose,29
  db 24,$7F
  !d4
  !d5
  db 12
  !d6
  db 96
  !e6
  db 48
  !tie
  !d6
  db 96
  !e6
  !e6
  !e6
  !dynamicVolume,96,42
  !tie
  !end

.pattern1_6
  db 96
  !rest
  !rest
  !instr,!instr03
  !volume,187
  !subtranspose,29
  db 96,$7F
  !e3
  !e3
  db 48
  !tie
  !d3
  db 96
  !c3
  !a3
  !d3
  !dynamicVolume,96,42
  !tie
  !end

.pattern1_7
  db 96
  !rest
  !rest
  !rest
  !rest
  db 48
  !rest
  !instr,!instr02
  !volume,104
  !vibrato,24,30,96
  db 12,$7F
  !e5
  !fs5
  !g5
  !a5
  db 48
  !b5
  db 12
  !e6
  !fs6
  !g6
  !a6
  db 96
  !b6
  !b6
  !dynamicVolume,96,42
  !tie
  !end

.sub2571
  db 6,$7F
  !f6
  db 6,$75
  !e6
  db 6,$7F
  !e6
  db 6,$75
  !f6
  db 6,$7F
  !c6
  db 6,$75
  !e6
  db 6,$7F
  !b5
  db 6,$75
  !c6
  db 6,$7F
  !c6
  db 6,$75
  !b5
  db 6,$7F
  !b5
  db 6,$75
  !c6
  db 6,$7F
  !a5
  db 6,$75
  !b5
  db 6,$7F
  !f5
  db 6,$75
  !a5
  db 6,$7F
  !e3
  !a3
  !b3
  !d4
  !e4
  !a4
  !b4
  !d5
  !e5
  !a5
  !b5
  !d6
  !e6
  !a6
  !b6
  !d7
  !dynamicVolume,192,31
  db 4
  !a6
  !b6
  !d7
  db 12
  !e7
  db 4
  !a6
  !b6
  !d7
  db 12
  !e7
  db 4
  !a6
  !b6
  !d7
  db 12
  !e7
  db 4
  !a6
  !b6
  !d7
  db 12
  !e7
  db 4
  !a6
  !b6
  !d7
  db 12
  !e7
  db 4
  !a6
  !b6
  !d7
  db 12
  !e7
  db 4
  !a6
  !b6
  !d7
  db 12
  !e7
  db 4
  !a6
  !b6
  !d7
  db 12
  !e7
  db 24
  !rest
  !rest
  !rest
  !rest
  !end

.sub25EC
  !rest
  !rest
  !rest
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
