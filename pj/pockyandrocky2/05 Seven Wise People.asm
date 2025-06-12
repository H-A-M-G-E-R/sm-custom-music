asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr04 = $19
!instr05 = $1A
!instr06 = $1B
!instr08 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr04,$FF,$EC,$B8,$02,$40
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$FF,$E0,$B8,$04,$B0
  db !instr08,$FF,$F6,$B8,$04,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+27
  dw Sample04,Sample04+1386
  dw Sample05,Sample05+1116
  dw Sample06,Sample06+1773
  dw Sample08,Sample08+207
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample04: incbin "Sample_69ccba18c0744e2d4f5b892690ea0fa2.brr"
  Sample05: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample06: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample08: incbin "Sample_52321808d69bf220a373c01cbb04d19b.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker29A2

Tracker29A2:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr05
  !musicVolume,255
  !tempo,41
  db 24
  !rest
  !end

.pattern0_1
  !instr,!instr02
  !volume,104
  !pan,11
  !subtranspose,29
  db 24,$7F
  !c6
  !end

.pattern1_0
  !instr,!instr04
  !volume,62
  !pan,13
  !transpose,0
  !subtranspose,10
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 12,$75
  !c7
  !loop : dw .sub2C30 : db 7
  !volume,73
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 12,$75
  !c7
  !loop : dw .sub2C30 : db 7
  db 96,$7F
  !a7
  !tie
  db 48
  !a7
  !g7
  !e7
  !c7
  db 96
  !d7
  !tie
  !e7
  db 48
  !f7
  !g7
  db 96
  !a7
  !tie
  db 48
  !a7
  !g7
  !e7
  !c7
  db 96
  !d7
  !e7
  !f7
  !tie
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.pattern1_1
  !instr,!instr02
  !volume,104
  !pan,11
  !endVibrato
  !subtranspose,29
  db 72,$7F
  !d6
  db 24
  !f6
  !loop : dw .sub2C49 : db 1
  !loop : dw .sub2C69 : db 2
  db 48
  !f6
  !a6
  !g6
  !c6
  db 96
  !d6
  db 48
  !tie
  !instr,!instr00
  !volume,104
  !vibrato,48,15,96
  !subtranspose,0
  db 12
  !d6
  !e6
  !f6
  !g6
  db 96
  !a6
  db 24
  !tie
  !g6
  !f6
  !d6
  db 72
  !c6
  db 24
  !a5
  db 96
  !c6
  !d6
  db 24
  !tie
  !c6
  !a5
  !c6
  db 96
  !g5
  db 48
  !a5
  db 12
  !d6
  !e6
  !f6
  !g6
  db 96
  !a6
  db 24
  !tie
  !g6
  !f6
  !g6
  db 48
  !a6
  !c7
  !a6
  !e6
  db 96
  !f6
  !e6
  !d6
  !tie
  !dynamicVolume,192,31
  !tie
  !tie
  !end

.pattern1_2
  !instr,!instr01
  !volume,166
  db 96,$7F
  !d4
  !tie
  !d4
  !tie
  !f4
  !d4
  !g3
  !c4
  !as3
  !a3
  !as3
  !a3
  !g3
  !c4
  !d4
  db 48
  !tie
  !d4
  !pitchSlide,12,36 : !as3
  db 96
  !as3
  !tie
  !a3
  !tie
  !g3
  !tie
  !f3
  db 48
  !f3
  db 24
  !g3
  !a3
  db 96
  !as3
  !tie
  !a3
  !tie
  !g3
  !c4
  !d4
  !tie
  !d4
  !tie
  !end

.pattern1_3
  !instr,!instr02
  !volume,83
  !pan,9
  !subtranspose,29
  db 24,$7F
  !c6
  db 72
  !d6
  db 24
  !f6
  !loop : dw .sub2C49 : db 1
  !loop : dw .sub2C69 : db 2
  db 48
  !f6
  !a6
  !g6
  !c6
  db 96
  !d6
  db 72
  !tie
  !instr,!instr02
  !volume,104
  !pan,13
  !subtranspose,29
  db 96
  !a4
  !a5
  !g5
  !tie
  !f5
  !tie
  !g5
  !tie
  !a4
  !a5
  !g5
  !tie
  !f5
  !e5
  !g5
  !tie
  !f5
  !tie
  !end

.pattern1_4
  db 1
  !rest
  !instr,!instr04
  !volume,62
  !pan,7
  !transpose,0
  !subtranspose,18
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 12,$75
  !c7
  !loop : dw .sub2C30 : db 14
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 11,$75
  !c7
  db 24
  !rest
  !instr,!instr02
  !pan,7
  !volume,104
  !subtranspose,29
  db 72,$7F
  !as4
  db 96
  !tie
  !a4
  !tie
  !g4
  !tie
  !a4
  !tie
  db 24
  !rest
  db 72
  !as4
  db 96
  !tie
  !a4
  !tie
  !d5
  db 96,$78
  !c5
  db 96,$7F
  !d5
  !tie
  !d5
  !tie
  !end

.pattern1_5
  db 96
  !rest
  !loop : dw .sub2C70 : db 15
  db 48
  !rest
  !instr,!instr02
  !volume,104
  !pan,13
  !subtranspose,29
  db 48,$7F
  !d5
  db 96
  !tie
  !c5
  !tie
  !as4
  !tie
  !c5
  !tie
  db 48
  !rest
  !d5
  db 96
  !tie
  !c5
  !tie
  !as4
  !as4
  !c5
  !tie
  !c5
  !tie
  !end

.pattern1_6
  db 96
  !rest
  !loop : dw .sub2C70 : db 15
  db 72
  !rest
  !instr,!instr02
  !volume,104
  !pan,7
  !subtranspose,29
  db 24,$7F
  !f5
  db 96
  !tie
  !e5
  !tie
  !d5
  !tie
  !e5
  !tie
  db 72
  !rest
  db 24
  !f5
  db 96
  !tie
  !e5
  !tie
  !a4
  !g4
  !a4
  !tie
  !a4
  !tie
  !end

.pattern1_7
  !volume,198
  db 72,$7F
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  db 48
  %percNote(!instr05-!instr05)
  %percNote(!instr08-!instr05)
  !loop : dw .sub2C72 : db 7
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  !loop : dw .sub2C7A : db 4
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  db 48
  %percNote(!instr08-!instr05)
  !end

.sub2C30
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 12,$75
  !c7
  !end

.sub2C49
  db 48
  !g6
  db 24
  !f6
  !c6
  db 48
  !d6
  db 24
  !a5
  !c6
  db 48
  !d6
  db 24
  !f6
  !g6
  db 72
  !a6
  db 24
  !d7
  db 48
  !c7
  !a6
  db 72
  !g6
  db 24
  !f6
  db 48
  !g6
  db 24
  !a6
  !g6
  !end

.sub2C69
  db 72
  !f6
  db 24
  !a6
  db 96
  !g6
  !end

.sub2C70
  !rest
  !end

.sub2C72
  db 72
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  db 48
  %percNote(!instr05-!instr05)
  %percNote(!instr08-!instr05)
  !end

.sub2C7A
  db 48
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  db 48
  %percNote(!instr08-!instr05)
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
