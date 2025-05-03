asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr02 = $17
!instr03 = $18

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr02,$FF,$F2,$B8,$03,$30
  db !instr03,$F8,$E9,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample02,Sample02+1791
  dw Sample03,Sample03+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample02: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample03: incbin "Sample_155420261344daa1320b579d12648a8c.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
  dw .pattern0
  dw $0000

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !musicVolume,255
  !tempo,20
  !instr,!instr00
  !volume,104
  !vibrato,24,24,96
  db 6,$7F
  !d6
  !rest
  !e6
  !d6
  !b5
  db 18
  !rest
  db 6
  !a5
  !rest
  !b5
  !a5
  !g5
  !e5
  !d5
  !e5
  db 96
  !g5
  !dynamicVolume,96,31
  !tie
  db 18
  !rest
  !end

.pattern0_1
  !instr,!instr02
  !volume,83
  !pan,15
  !dynamicPan,48,5
  !subtranspose,54
  db 6,$7F
  !e6
  !d6
  !b5
  !a5
  !g5
  !e5
  !d5
  !b4
  !dynamicPan,48,15
  !a4
  !b4
  !d5
  !fs5
  !g5
  !a5
  !b5
  !d6
  !dynamicPan,48,5
  !c6
  !e6
  !g6
  !b6
  !c7
  !rest
  db 6,$7B
  !c6
  !e6
  !dynamicPan,48,15
  !g6
  !b6
  !c7
  !rest
  db 6,$77
  !c6
  !e6
  !g6
  !b6
  !dynamicPan,48,5
  !c7
  !rest
  db 6,$73
  !c6
  !e6
  !g6
  !b6
  !c7
  !rest
  db 48
  !rest
  db 18
  !rest

.pattern0_2
  !instr,!instr03
  !volume,187
  !subtranspose,29
  db 48,$7F
  !e4
  !d4
  db 96
  !c4
  !tie
  db 18
  !rest

.pattern0_3
  db 18
  !rest
  !instr,!instr00
  !volume,83
  !vibrato,24,24,96
  !subtranspose,8
  db 6,$7F
  !d6
  !rest
  !e6
  !d6
  !b5
  db 18
  !rest
  db 6
  !a5
  !rest
  !b5
  !a5
  !g5
  !e5
  !d5
  !e5
  db 96
  !g5
  !dynamicVolume,96,42
  !tie

.pattern0_4
  !instr,!instr03
  !volume,104
  !pan,11
  !subtranspose,29
  db 48,$7F
  !e5
  !d5
  db 96
  !e5
  !tie
  db 18
  !rest

.pattern0_5
  !instr,!instr03
  !volume,104
  !pan,9
  !subtranspose,29
  db 48,$7F
  !d5
  !c5
  db 96
  !c5
  !tie
  db 18
  !rest

.pattern0_6
  !instr,!instr03
  !volume,104
  !pan,13
  !subtranspose,29
  db 48,$7F
  !b4
  !a4
  db 96
  !b4
  !tie
  db 18
  !rest

.pattern0_7
  !instr,!instr03
  !volume,104
  !pan,7
  !subtranspose,29
  db 48,$7F
  !g4
  !fs4
  db 96
  !g4
  !tie
  db 18
  !rest
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
