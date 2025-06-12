asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr04 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$FF,$F2,$B8,$03,$30
  db !instr04,$F8,$E9,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+1791
  dw Sample03_04,Sample03_04+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample03_04: incbin "Sample_155420261344daa1320b579d12648a8c.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2778

Tracker2778:
  dw .pattern0
  dw .pattern1
  dw $0000

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
  !vibrato,24,30,96
  db 12,$7F
  !d5
  !f5
  !g5
  !a5
  db 24
  !c6
  db 6
  !d5
  !g5
  !a5
  !c6
  db 96
  !d6
  db 18
  !rest
  !end

.pattern1_1
  !instr,!instr02
  !subtranspose,53
  !volume,83
  !pan,15
  db 24,$7F
  !a5
  !d6
  !g5
  !c6
  !a5
  !g5
  db 48
  !a5
  db 18
  !rest
  !end

.pattern1_2
  !instr,!instr01
  !volume,166
  db 48,$7F
  !d4
  !c4
  db 24
  !d4
  !c4
  db 48
  !d4
  db 18
  !rest
  !end

.pattern1_3
  !instr,!instr04
  !volume,104
  !subtranspose,29
  db 48,$7F
  !a5
  !g5
  db 24
  !a5
  !g5
  db 48
  !a5
  db 18,$75
  !a5
  !end

.pattern1_4
  !instr,!instr04
  !volume,104
  !subtranspose,29
  !pan,13
  db 48,$7F
  !f5
  !e5
  db 24
  !f5
  !e5
  db 48
  !f5
  db 18,$75
  !f5
  !end

.pattern1_5
  !instr,!instr04
  !volume,104
  !subtranspose,29
  !pan,7
  db 48,$7F
  !d5
  !c5
  db 24
  !d5
  !c5
  db 48
  !d5
  db 18,$75
  !d5
  !end

.pattern1_6
  db 1
  !rest
  !instr,!instr02
  !subtranspose,53
  !volume,83
  !pan,5
  db 24,$7F
  !a5
  !d6
  !g5
  !c6
  !a5
  !g5
  db 48
  !a5
  db 17
  !rest
  !end

.pattern1_7
  db 18
  !rest
  !instr,!instr00
  !volume,62
  !vibrato,24,30,96
  db 12,$7F
  !d5
  !f5
  !g5
  !a5
  db 24
  !c6
  db 6
  !d5
  !g5
  !a5
  !c6
  db 96
  !d6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
