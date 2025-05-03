asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr03 = $19
!instr04 = $1A
!instr05 = $1B
!instr06 = $1C
!instr08 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$F2,$B8,$03,$30
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$FF,$E0,$B8,$02,$40
  db !instr03,$F8,$E9,$B8,$03,$00
  db !instr04,$FF,$E8,$B8,$02,$30
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$FF,$E0,$B8,$04,$B0
  db !instr08,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1791
  dw Sample01,Sample01+153
  dw Sample02,Sample02+801
  dw Sample03,Sample03+27
  dw Sample04,Sample04+1233
  dw Sample05,Sample05+1116
  dw Sample06,Sample06+1773
  dw Sample08,Sample08+522
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample03: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample04: incbin "Sample_109c5729f128f87a93842e99c2b20c67.brr"
  Sample05: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample06: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample08: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker25F1

Tracker25F1:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr05
  !musicVolume,255
  !tempo,25
  !instr,!instr02
  !volume,104
  !vibrato,24,24,96
  db 24
  !rest
  db 24,$7F
  !b6
  !end

.pattern0_1
  !instr,!instr00
  !volume,83
  !pan,13
  !subtranspose,54
  db 12
  !rest
  db 8,$7F
  !g5
  !b5
  !e6
  !a6
  db 4
  !d7

.pattern0_2
  !instr,!instr01
  !volume,166
  db 24
  !rest
  db 24,$7F
  !b3

.pattern0_3
  !volume,198
  !pan,10
  db 24
  !rest
  db 24,$7F
  %percNote(!instr05-!instr05)

.pattern0_4
  !instr,!instr00
  !volume,83
  !pan,7
  !subtranspose,54
  db 16
  !rest
  db 8,$7F
  !a5
  !d6
  !g6
  !b6

.pattern1_0
  db 6,$7F
  !d7
  !rest
  !e7
  !d7
  !b6
  db 6,$75
  !e7
  !d7
  !b6
  db 6,$7F
  !a6
  !rest
  !b6
  !a6
  !g6
  db 6,$75
  !b6
  db 12,$7F
  !d6
  !loop : dw .sub2AF7 : db 1
  db 18
  !e6
  db 6
  !g6
  !a6
  db 6,$75
  !e6
  db 6,$7F
  !b6
  db 6,$75
  !a6
  db 48,$7F
  !d7
  db 6
  !d7
  db 6,$75
  !d7
  db 6,$7F
  !e7
  !d7
  !b6
  db 6,$75
  !e7
  !d7
  !b6
  db 6,$7F
  !a6
  !rest
  !b6
  !a6
  !g6
  db 6,$75
  !b6
  db 12,$7F
  !d6
  !loop : dw .sub2AF7 : db 1
  db 18
  !e6
  db 6
  !g6
  !a6
  db 6,$75
  !e6
  db 6,$7F
  !b6
  db 6,$75
  !a6
  db 6,$7F
  !d7
  db 6,$75
  !b6
  db 6,$7F
  !d7
  db 6,$75
  !d7
  db 6,$7F
  !e7
  db 6,$75
  !d7
  !rest
  !e7
  db 12
  !rest
  db 12,$7F
  !e6
  !g6
  !a6
  db 18
  !b6
  db 6
  !b6
  db 12
  !a6
  !d6
  db 18
  !e6
  db 6
  !g6
  db 12
  !e6
  !b5
  !a5
  !d6
  db 24
  !b5
  db 12,$75
  !b5
  db 12,$7F
  !e6
  !g6
  !a6
  db 18
  !b6
  db 6
  !d7
  db 12
  !b6
  !a6
  db 6
  !g6
  db 6,$75
  !a6
  db 6,$7F
  !a6
  !b6
  !g6
  db 6,$75
  !a6
  db 6,$7F
  !d6
  db 6,$75
  !g6
  db 24,$7F
  !e6
  db 18,$75
  !e6
  db 6
  !rest
  db 12
  !rest
  db 12,$7F
  !e6
  !g6
  !a6
  db 18
  !b6
  db 6
  !b6
  db 12
  !a6
  !d6
  db 18
  !e6
  db 6
  !g6
  db 12
  !e6
  !b5
  !a5
  !d6
  !e6
  !b6
  db 6
  !a6
  !b6
  !a6
  !g6
  !e6
  db 6,$75
  !a6
  db 12,$7F
  !g6
  db 6
  !a6
  !b6
  !a6
  !g6
  !e6
  db 6,$75
  !a6
  db 12,$7F
  !d6
  db 18
  !e6
  db 6
  !a6
  !b6
  db 6,$75
  !e6
  db 6,$7F
  !d7
  db 6,$75
  !b6
  db 6,$7F
  !e7
  db 6,$75
  !d7
  !rest
  !e7
  db 24
  !rest
  !end

.pattern1_1
  db 96
  !rest
  !loop : dw .sub2B2F : db 7
  !volume,94
  !pan,11
  !subtranspose,54
  db 12
  !rest
  db 6,$7F
  !c6
  !c6
  db 12
  !rest
  db 6
  !c6
  !rest
  db 12
  !rest
  db 6
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  !rest
  db 12
  !rest
  db 6
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  !rest
  db 12
  !rest
  db 6
  !e6
  !e6
  db 12
  !rest
  db 6
  !d6
  !rest
  db 12
  !rest
  db 6
  !c6
  !c6
  db 12
  !rest
  db 6
  !c6
  !rest
  db 12
  !rest
  db 6
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  !rest
  !g6
  !rest
  !a6
  !b6
  !g6
  !rest
  !d6
  !rest
  !e6
  db 42
  !rest
  db 12
  !rest
  db 6
  !c6
  !c6
  db 12
  !rest
  db 6
  !c6
  !rest
  db 12
  !rest
  db 6
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  !rest
  db 12
  !rest
  db 6
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  !rest
  db 12
  !rest
  db 6
  !e6
  !e6
  db 12
  !rest
  db 6
  !b6
  !rest
  !a6
  !b6
  !a6
  !g6
  !e6
  db 6,$75
  !a6
  db 6,$7F
  !g6
  !rest
  !a6
  !b6
  !a6
  !g6
  !e6
  db 6,$75
  !a6
  db 6,$7F
  !d6
  !rest
  !e6
  db 12
  !rest
  db 6
  !a6
  !b6
  db 6,$75
  !e6
  db 6,$7F
  !d7
  db 6,$75
  !b6
  db 6,$7F
  !e7
  !rest
  !pan,13
  db 8
  !g5
  !b5
  !e6
  !a6
  db 4
  !d7

.pattern1_2
  db 6,$7F
  !e4
  db 18
  !rest
  db 12
  !rest
  db 6
  !e4
  !rest
  !d4
  db 18
  !rest
  db 12
  !rest
  db 6
  !d4
  !rest
  !loop : dw .sub2B31 : db 3
  db 18
  !c4
  db 6
  !c5
  db 12
  !c4
  !g3
  db 6
  !d4
  !rest
  !d4
  !rest
  db 24
  !e4
  !loop : dw .sub2B54 : db 3
  db 12
  !a3
  db 6
  !rest
  !g3
  db 12
  !a3
  !c4
  !b3
  db 6
  !rest
  !a3
  db 12
  !b3
  !d4
  !e4
  db 6
  !rest
  !e4
  db 12
  !b3
  !d4
  db 6
  !e4
  db 12
  !rest
  db 6
  !a3
  db 12
  !b3
  !d4

.pattern1_3
  db 36,$7F
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  db 36
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  db 36
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  db 36
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  db 36
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  db 36
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  !loop : dw .sub2B74 : db 3
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  db 6
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  !loop : dw .sub2B87 : db 6
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr06-!instr05)

.pattern1_4
  !instr,!instr04
  !subtranspose,88
  !volume,104
  !pan,13
  db 12,$3F
  !e6
  db 12,$35
  !e6
  !rest
  db 12,$7F
  !e6
  db 12,$3F
  !d6
  db 12,$35
  !d6
  !rest
  db 12,$7F
  !d6
  !loop : dw .sub2BA5 : db 3
  db 12,$3F
  !e6
  db 12,$35
  !e6
  !rest
  db 12,$7F
  !d6
  db 12,$3F
  !d6
  !d6
  !e6
  db 12,$35
  !e6
  !instr,!instr03
  !subtranspose,29
  !volume,104
  !pan,10
  db 48,$7F
  !c6
  !d6
  !loop : dw .sub2BCD : db 3
  !d6
  db 12
  !e6
  db 12,$75
  !e6
  db 24,$7F
  !d6

.pattern1_5
  !instr,!instr04
  !subtranspose,88
  !volume,104
  !pan,7
  db 12,$3F
  !b5
  db 12,$35
  !b5
  !rest
  db 12,$7F
  !b5
  db 12,$3F
  !a5
  db 12,$35
  !a5
  !rest
  db 12,$7F
  !a5
  !loop : dw .sub2BD5 : db 3
  db 12,$3F
  !c6
  db 12,$35
  !c6
  !rest
  db 12,$7F
  !a5
  db 12,$3F
  !a5
  !a5
  !b5
  db 12,$35
  !b5
  !instr,!instr03
  !subtranspose,29
  !volume,104
  !pan,15
  db 48,$7F
  !g5
  !a5
  !loop : dw .sub2BFD : db 3
  !b5
  db 12
  !b5
  db 12,$75
  !b5
  db 24,$7F
  !a5

.pattern1_6
  !instr,!instr00
  !volume,94
  !pan,10
  !subtranspose,54
  db 6,$7F
  !d7
  !rest
  !e7
  !d7
  !b6
  db 6,$75
  !e7
  !d7
  !b6
  db 6,$7F
  !a6
  !rest
  !b6
  !a6
  !g6
  db 6,$75
  !b6
  db 6,$7F
  !d6
  db 6,$75
  !g6
  db 6,$7F
  !e6
  db 6,$75
  !d6
  !rest
  db 6,$7F
  !d6
  !e6
  db 6,$75
  !e6
  db 6,$7F
  !b5
  db 6,$75
  !e6
  db 6,$7F
  !d6
  db 6,$75
  !b5
  db 6,$7F
  !d6
  db 6,$75
  !d6
  db 6,$7F
  !e6
  db 6,$75
  !d6
  !rest
  !e6
  db 6,$7F
  !d7
  !rest
  !e7
  !d7
  !b6
  db 6,$75
  !e7
  !d7
  !b6
  db 6,$7F
  !a6
  !rest
  !b6
  !a6
  !g6
  db 6,$75
  !b6
  db 6,$7F
  !d6
  db 6,$75
  !g6
  db 6,$7F
  !e6
  db 6,$75
  !d6
  !rest
  db 6,$7F
  !g6
  !a6
  db 6,$75
  !e6
  db 6,$7F
  !b6
  db 6,$75
  !a6
  db 6,$7F
  !d7
  db 6,$75
  !b6
  !rest
  !d7
  db 24
  !rest
  db 6,$7F
  !d7
  db 6,$75
  !d7
  db 6,$7F
  !e7
  !d7
  !b6
  db 6,$75
  !e7
  !d7
  !b6
  db 6,$7F
  !a6
  !rest
  !b6
  !a6
  !g6
  db 6,$75
  !b6
  db 6,$7F
  !d6
  db 6,$75
  !g6
  db 6,$7F
  !e6
  db 6,$75
  !d6
  !rest
  db 6,$7F
  !d6
  !e6
  db 6,$75
  !e6
  db 6,$7F
  !b5
  db 6,$75
  !e6
  db 6,$7F
  !d6
  db 6,$75
  !b5
  db 6,$7F
  !d6
  db 6,$75
  !d6
  db 6,$7F
  !e6
  db 6,$75
  !d6
  !rest
  !e6
  db 6,$7F
  !d7
  db 6,$75
  !d7
  db 6,$7F
  !e7
  !d7
  !b6
  db 6,$75
  !e7
  !d7
  !b6
  db 6,$7F
  !a6
  !rest
  !b6
  !a6
  !g6
  db 6,$75
  !b6
  db 6,$7F
  !d6
  db 6,$75
  !g6
  db 6,$7F
  !e6
  db 6,$75
  !d6
  !rest
  db 6,$7F
  !g6
  !a6
  db 6,$75
  !e6
  db 6,$7F
  !b6
  db 6,$75
  !a6
  db 6,$7F
  !d7
  db 6,$75
  !b6
  db 6,$7F
  !d7
  db 6,$75
  !d7
  db 6,$7F
  !e7
  db 6,$75
  !d7
  !rest
  !e7
  !instr,!instr03
  !subtranspose,29
  !volume,104
  !pan,5
  !subtranspose,0
  db 48,$7F
  !e5
  !fs5
  !loop : dw .sub2C05 : db 3
  !fs5
  db 12
  !g5
  db 12,$75
  !g5
  db 24,$7F
  !fs5

.pattern1_7
  db 96
  !rest
  !loop : dw .sub2B2F : db 7
  !instr,!instr00
  !volume,94
  !subtranspose,54
  !pan,9
  db 12
  !rest
  db 6,$7F
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  !rest
  db 12
  !rest
  db 6
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  !rest
  !loop : dw .sub2C0D : db 1
  db 12
  !rest
  db 6
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  !rest
  !pan,20
  !dynamicPan,48,0
  !c6
  !b5
  !a5
  !g5
  !fs5
  !e5
  !d5
  !c5
  !pan,9
  db 12
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  !rest
  db 12
  !rest
  db 6
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  !rest
  !loop : dw .sub2C0D : db 1
  db 12
  !rest
  db 6
  !d6
  !d6
  db 12
  !rest
  db 6
  !d6
  db 22
  !rest
  !pan,7
  db 8
  !a5
  !d6
  !g6
  !b6

.sub2AF7
  db 18
  !e6
  db 6
  !d6
  !e6
  db 6,$75
  !e6
  db 12,$7F
  !b5
  db 6
  !d6
  db 6,$75
  !b5
  db 6,$7F
  !d6
  db 6,$75
  !d6
  db 6,$7F
  !e6
  db 6,$75
  !d6
  !rest
  !e6
  db 6,$7F
  !d7
  !rest
  !e7
  !d7
  !b6
  db 6,$75
  !e7
  !d7
  !b6
  db 6,$7F
  !a6
  !rest
  !b6
  !a6
  !g6
  db 6,$75
  !b6
  db 12,$7F
  !d6
  !end

.sub2B2F
  !rest
  !end

.sub2B31
  db 18
  !c4
  db 6
  !c5
  db 12
  !c4
  !g3
  db 6
  !c4
  !rest
  db 12
  !g4
  db 6
  !a4
  !rest
  db 12
  !d5
  db 6
  !e4
  db 18
  !rest
  db 12
  !rest
  db 6
  !e4
  !rest
  !d4
  db 18
  !rest
  db 12
  !rest
  db 6
  !d4
  !rest
  !end

.sub2B54
  db 12
  !c4
  db 6
  !rest
  !c4
  db 12
  !g3
  !c4
  !d4
  db 6
  !rest
  !d4
  db 12
  !a3
  !d4
  !b3
  db 6
  !rest
  !a3
  db 12
  !b3
  !d4
  !e4
  db 6
  !e5
  !rest
  db 12
  !d4
  db 6
  !d4
  !rest
  !end

.sub2B74
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  !end

.sub2B87
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  db 12,$7F
  %percNote(!instr06-!instr05)
  db 6,$79
  %percNote(!instr08-!instr05)
  %percNote(!instr08-!instr05)
  !end

.sub2BA5
  db 12,$3F
  !e6
  db 12,$35
  !e6
  !rest
  db 12,$7F
  !d6
  db 12,$3F
  !e6
  db 12,$35
  !e6
  db 24,$7F
  !d6
  db 12,$3F
  !e6
  db 12,$35
  !e6
  !rest
  db 12,$7F
  !e6
  db 12,$3F
  !d6
  db 12,$35
  !d6
  !rest
  db 12,$7F
  !d6
  !end

.sub2BCD
  !d6
  db 24
  !e6
  !d6
  db 48
  !c6
  !d6
  !end

.sub2BD5
  db 12,$3F
  !c6
  db 12,$35
  !c6
  !rest
  db 12,$7F
  !a5
  db 12,$3F
  !c6
  db 12,$35
  !c6
  db 24,$7F
  !a5
  db 12,$3F
  !b5
  db 12,$35
  !b5
  !rest
  db 12,$7F
  !b5
  db 12,$3F
  !a5
  db 12,$35
  !a5
  !rest
  db 12,$7F
  !a5
  !end

.sub2BFD
  !b5
  db 24
  !b5
  !a5
  db 48
  !g5
  !a5
  !end

.sub2C05
  !fs5
  db 24
  !g5
  !fs5
  db 48
  !e5
  !fs5
  !end

.sub2C0D
  db 12
  !rest
  db 6
  !b5
  !b5
  db 12
  !rest
  db 6
  !b5
  !rest
  db 12
  !rest
  db 6
  !b5
  !b5
  db 12
  !rest
  db 6
  !a5
  !rest
  db 12
  !rest
  db 6
  !g5
  !g5
  db 12
  !rest
  db 6
  !g5
  !rest
  db 12
  !rest
  db 6
  !a5
  !a5
  db 12
  !rest
  db 6
  !a5
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
