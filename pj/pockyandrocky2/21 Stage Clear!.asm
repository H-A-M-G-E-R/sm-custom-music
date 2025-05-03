asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr03 = $19
!instr05 = $1A
!instr06 = $1B
!instr07 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$FF,$F2,$B8,$03,$30
  db !instr03,$8F,$E0,$B8,$03,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$FF,$E0,$B8,$04,$B0
  db !instr07,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+1791
  dw Sample03_04,Sample03_04+27
  dw Sample05,Sample05+1116
  dw Sample06,Sample06+1773
  dw Sample07,Sample07+522
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample03_04: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample05: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample06: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample07: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2406

Tracker2406:
  dw .pattern0
  dw .pattern1
  dw $0000

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr05
  !musicVolume,255
  !tempo,28
  !end

.pattern1_0
  !instr,!instr00
  !volume,125
  db 12,$7F
  !a5
  !g5
  !a5
  !b5
  !c6
  !d6
  !e6
  !g6
  db 6
  !a6
  db 6,$75
  !g6
  db 6,$7F
  !a6
  db 6,$75
  !a6
  db 6,$7F
  !g6
  db 6,$75
  !a6
  db 6,$7F
  !a6
  db 6,$75
  !g6
  !rest
  !a6
  db 36
  !rest
  !end

.pattern1_1
  !instr,!instr02
  !volume,83
  !pan,15
  !dynamicPan,24,5
  db 6,$7F
  !a7
  !g7
  !e7
  !d7
  !dynamicPan,24,15
  !e7
  !d7
  !c7
  !a6
  !dynamicPan,24,5
  !c7
  !a6
  !g6
  !e6
  !dynamicPan,24,15
  !g6
  !a6
  !c7
  !d7
  !pan,13
  !e7
  db 6,$75
  !c7
  db 6,$7F
  !e7
  db 6,$75
  !e7
  db 6,$7F
  !d7
  db 6,$75
  !e7
  db 6,$7F
  !e7
  db 6,$75
  !d7
  !rest
  !e7
  db 36
  !rest

.pattern1_2
  !instr,!instr01
  !volume,166
  db 12,$7F
  !a3
  db 12,$2F
  !a4
  db 12,$7F
  !g3
  db 12,$2F
  !g4
  db 12,$7F
  !f3
  db 12,$2F
  !f4
  db 12,$7F
  !e3
  db 12,$2F
  !e4
  db 12,$7F
  !a3
  !a3
  !g3
  !a3
  db 48
  !rest

.pattern1_3
  !volume,198
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 6,$75
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6
  %percNote(!instr07-!instr05)
  %percNote(!instr07-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  db 6
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 48
  !rest

.pattern1_4
  db 1
  !rest
  !instr,!instr02
  !volume,83
  db 6,$7F
  !a7
  !g7
  !e7
  !d7
  !e7
  !d7
  !c7
  !a6
  !c7
  !a6
  !g6
  !e6
  !g6
  !a6
  !c7
  db 5
  !d7
  !pan,7
  db 6
  !a7
  db 6,$75
  !c7
  db 6,$7F
  !a7
  db 6,$75
  !a7
  db 6,$7F
  !g7
  db 6,$75
  !a7
  db 6,$7F
  !a7
  db 6,$75
  !g7
  !rest
  !a7
  db 36
  !rest

.pattern1_5
  !instr,!instr03
  !volume,104
  !pan,10
  !subtranspose,29
  db 24,$7F
  !c5
  !d5
  !e5
  !g5
  db 12
  !a5
  !a5
  !g5
  !a5
  db 6,$75
  !g5
  db 12
  !a5
  db 30
  !rest

.pattern1_6
  !instr,!instr03
  !volume,125
  !pan,13
  !subtranspose,37
  db 24,$7F
  !a4
  !b4
  !c5
  !d5
  db 12
  !e5
  !e5
  !d5
  !e5
  db 6,$75
  !d5
  db 12
  !e5
  db 30
  !rest

.pattern1_7
  !instr,!instr03
  !volume,125
  !pan,7
  !subtranspose,37
  db 24,$7F
  !e4
  !g4
  !a4
  !b4
  db 12
  !c5
  !c5
  !b4
  !c5
  db 6,$75
  !b4
  db 12
  !c5
  db 30
  !rest
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
