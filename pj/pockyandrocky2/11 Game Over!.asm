asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr02 = $17
!instr03 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr03,$FF,$F2,$B8,$03,$30
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample02,Sample02+27
  dw Sample03,Sample03+1791
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample03: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2404

Tracker2404:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !musicVolume,255
  !tempo,27
  !dynamicTempo,144,17
  !instr,!instr00
  !volume,42
  !dynamicVolume,96,104
  !vibrato,24,32,64
  !pan,11
  db 96,$7F
  !f5
  db 12
  !e5
  !a5
  !b5
  !d6
  db 48
  !e6
  !dynamicMusicVolume,96,0
  db 96
  !tie
  db 2
  !rest
  !end

.pattern0_1
  !instr,!instr02
  !volume,104
  !subtranspose,29
  db 12,$7F
  !e6
  !c6
  !b5
  !a5
  !c6
  !b5
  !a5
  !f5
  !e5
  !e5
  !e5
  !d5
  db 48
  !e5
  db 96
  !tie
  db 2
  !rest

.pattern0_2
  db 96
  !rest
  !instr,!instr02
  !volume,166
  !subtranspose,29
  db 12,$7F
  !a3
  !a3
  !a3
  !g3
  db 48
  !a3
  db 96
  !tie
  db 2
  !rest

.pattern0_3
  !instr,!instr03
  !volume,31
  !dynamicVolume,96,83
  !subtranspose,54
  db 5,$7F
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  db 1
  !rest
  !pan,13
  db 12
  !e5
  !a5
  !b5
  !d6
  db 48
  !e6
  db 24
  !rest
  !rest
  !rest
  !rest
  db 2
  !rest

.pattern0_4
  db 2
  !rest
  !instr,!instr03
  !volume,31
  !dynamicVolume,96,83
  !subtranspose,62
  db 5,$7F
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !f6
  !pan,7
  db 12
  !e5
  !a5
  !b5
  !d6
  db 48
  !e6
  db 24
  !rest
  !rest
  !rest
  !rest
  db 1
  !rest

.pattern0_5
  db 96
  !rest
  !instr,!instr02
  !volume,104
  !pan,13
  !subtranspose,29
  db 48,$7F
  !d5
  !d5
  db 96
  !tie
  db 2
  !rest

.pattern0_6
  db 96
  !rest
  !instr,!instr02
  !volume,104
  !pan,7
  !subtranspose,29
  db 48,$7F
  !g4
  !a4
  db 96
  !tie
  db 2
  !rest

.pattern0_7
  db 2
  !rest
  !instr,!instr00
  !volume,42
  !dynamicVolume,96,83
  !vibrato,24,32,64
  !pan,9
  !subtranspose,8
  db 96,$7F
  !f5
  db 12
  !e5
  !a5
  !b5
  !d6
  db 48
  !e6
  db 96
  !tie
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
