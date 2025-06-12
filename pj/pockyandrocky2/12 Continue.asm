asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr05 = $19
!instr06 = $1A
!instr07 = $1B
!instr08 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$FF,$E0,$B8,$04,$B0
  db !instr07,$FF,$E0,$B8,$07,$A0
  db !instr08,$FF,$F6,$B8,$04,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+27
  dw Sample05,Sample05+1116
  dw Sample06,Sample06+1773
  dw Sample07,Sample07+522
  dw Sample08,Sample08+207
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample05: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample06: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample07: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"
  Sample08: incbin "Sample_52321808d69bf220a373c01cbb04d19b.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2404

Tracker2404:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr05
  !musicVolume,255
  !tempo,14
  !end

.pattern1_0
  !instr,!instr00
  !volume,104
  !vibrato,18,48,96
  !subtranspose,16
  db 7,$7F
  !a6
  db 5
  !g6
  db 7
  !a6
  db 5
  !c7
  db 7
  !a6
  db 5
  !g6
  db 24
  !e6
  db 12
  !c6
  !loop : dw .sub265B : db 1
  db 60
  !tie
  db 12
  !rest
  !end

.pattern1_1
  !instr,!instr02
  !volume,104
  !subtranspose,86
  db 36,$7F
  !a5
  !g5
  !f5
  !e5
  !f5
  !e5
  !e5
  !e5
  !a5
  !g5
  !f5
  !e5
  !f5
  !g5
  db 72
  !a5
  !a5
  !a5
  db 60
  !a5
  db 12
  !g5
  db 72
  !a5
  db 36
  !f5
  !e5
  !d5
  !e5
  !f5
  !e5
  !f5
  !f5
  db 72
  !tie
  !end

.pattern1_2
  !instr,!instr01
  !volume,166
  db 7,$7F
  !a4
  db 24
  !rest
  db 5
  !a4
  db 7
  !g4
  db 29
  !rest
  db 7
  !f4
  db 24
  !rest
  db 5
  !f4
  db 7
  !e4
  db 29
  !rest
  db 7
  !d4
  db 24
  !rest
  db 5
  !d4
  db 7
  !c4
  db 29
  !rest
  db 7
  !b3
  db 24
  !rest
  db 5
  !b3
  db 7
  !e4
  db 17
  !rest
  db 12
  !e4
  db 7
  !a4
  db 24
  !rest
  db 5
  !a4
  db 7
  !g4
  db 29
  !rest
  db 7
  !f4
  db 24
  !rest
  db 5
  !f4
  db 7
  !e4
  db 29
  !rest
  db 7
  !d4
  db 24
  !rest
  db 5
  !d4
  db 7
  !e4
  db 17
  !rest
  db 12
  !g4
  db 7
  !a4
  db 24
  !rest
  db 5
  !g4
  db 12
  !a4
  !e4
  !a3
  db 24
  !d4
  db 12
  !a3
  db 36
  !d4
  db 24
  !a3
  db 12
  !e3
  db 36
  !a3
  db 24
  !d4
  db 12
  !a3
  db 24
  !d4
  db 12
  !g3
  db 24
  !a3
  db 12
  !e3
  db 36
  !a3
  !d4
  !e4
  !f4
  !e4
  !d4
  !e4
  !f4
  !as3
  !tie
  db 12
  !as3
  !f4
  !as4
  !end

.pattern1_3
  !volume,198
  db 31,$7F
  %percNote(!instr05-!instr05)
  db 5
  %percNote(!instr05-!instr05)
  db 36
  %percNote(!instr05-!instr05)
  !loop : dw .sub26E8 : db 3
  db 31
  %percNote(!instr05-!instr05)
  db 5
  %percNote(!instr05-!instr05)
  db 19
  %percNote(!instr05-!instr05)
  db 5,$7B
  %percNote(!instr06-!instr05)
  db 7,$7F
  %percNote(!instr05-!instr05)
  db 5,$7B
  %percNote(!instr06-!instr05)
  db 24,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$7F
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 24,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$7F
  %percNote(!instr05-!instr05)
  db 7
  %percNote(!instr05-!instr05)
  db 5,$7B
  %percNote(!instr06-!instr05)
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 24,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$7F
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 24,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$7F
  %percNote(!instr05-!instr05)
  db 7
  %percNote(!instr05-!instr05)
  db 5,$7B
  %percNote(!instr06-!instr05)
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  !loop : dw .sub26FB : db 2
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$7F
  %percNote(!instr05-!instr05)
  db 12,$7B
  %percNote(!instr06-!instr05)
  db 7,$7F
  %percNote(!instr05-!instr05)
  db 5,$7B
  %percNote(!instr06-!instr05)
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5
  %percNote(!instr06-!instr05)
  !end

.pattern1_4
  !instr,!instr02
  !volume,104
  !pan,13
  !subtranspose,86
  db 36,$7F
  !e5
  !d5
  !c5
  !b4
  !d5
  !c5
  !a4
  !b4
  !e5
  !d5
  !c5
  !b4
  !d5
  !e5
  db 72
  !e5
  !f5
  !e5
  db 60
  !f5
  db 12
  !d5
  db 72
  !e5
  db 36
  !d5
  !b4
  !a4
  !b4
  !d5
  !b4
  !d5
  !d5
  db 72
  !tie
  !end

.pattern1_5
  !instr,!instr02
  !volume,104
  !pan,7
  !subtranspose,86
  db 36,$7F
  !c5
  !b4
  !a4
  !g4
  !a4
  !g4
  !fs4
  !gs4
  !c5
  !b4
  !a4
  !g4
  !a4
  !b4
  db 72
  !c5
  !c5
  !c5
  db 60
  !c5
  db 12
  !b4
  db 72
  !c5
  db 36
  !a4
  !g4
  !f5
  !g4
  !a4
  !g4
  !a4
  !as4
  db 72
  !tie
  !end

.pattern1_6
  !volume,198
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  !loop : dw .sub2724 : db 7
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 12,$79
  %percNote(!instr08-!instr05)
  !loop : dw .sub2749 : db 8
  !end

.pattern1_7
  db 12
  !rest
  !instr,!instr00
  !volume,62
  !vibrato,18,48,96
  !subtranspose,8
  db 7,$7F
  !a6
  db 5
  !g6
  db 7
  !a6
  db 5
  !c7
  db 7
  !a6
  db 5
  !g6
  db 24
  !e6
  db 12
  !c6
  !loop : dw .sub265B : db 1
  db 60
  !tie
  !end

.sub265B
  db 7
  !d6
  db 5
  !e6
  db 7
  !d6
  db 5
  !c6
  db 7
  !a5
  db 5
  !c6
  db 24
  !a5
  db 12
  !g5
  !a5
  !c6
  !e6
  db 24
  !g6
  db 12
  !a6
  db 31
  !e6
  db 5
  !d6
  db 30
  !e6
  db 6
  !rest
  db 7
  !a6
  db 5
  !g6
  db 7
  !a6
  db 5
  !c7
  db 7
  !a6
  db 5
  !g6
  db 24
  !e6
  db 12
  !g6
  db 7
  !a6
  db 5
  !g6
  db 7
  !a6
  db 5
  !c7
  db 7
  !a6
  db 5
  !g6
  db 24
  !a6
  db 7
  !c7
  db 5
  !a6
  db 12
  !g6
  !a6
  !c7
  !d7
  !c7
  !g6
  db 54
  !a6
  db 6
  !rest
  db 12
  !c7
  !d7
  !e7
  !c7
  db 24
  !d7
  db 12
  !g6
  !a6
  !c7
  !g6
  db 30
  !a6
  db 6
  !rest
  db 12
  !d7
  !e7
  !c7
  db 24
  !d7
  db 7
  !b6
  db 5
  !g6
  db 12
  !a6
  !c7
  db 7
  !d7
  db 5
  !e7
  db 24
  !c7
  db 12
  !b6
  !c7
  !b6
  !a6
  db 24
  !g6
  db 12
  !a6
  db 31
  !e6
  db 5
  !d6
  db 12
  !e6
  !g6
  !a6
  !c7
  !b6
  !a6
  !g6
  !e6
  !g6
  db 31
  !a6
  db 5
  !g6
  db 36
  !a6
  !end

.sub26E8
  db 31
  %percNote(!instr05-!instr05)
  db 5
  %percNote(!instr05-!instr05)
  db 19
  %percNote(!instr05-!instr05)
  db 5,$7B
  %percNote(!instr06-!instr05)
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 31
  %percNote(!instr05-!instr05)
  db 5
  %percNote(!instr05-!instr05)
  db 36
  %percNote(!instr05-!instr05)
  !end

.sub26FB
  db 24,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$7F
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 24,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$7F
  %percNote(!instr05-!instr05)
  db 7
  %percNote(!instr05-!instr05)
  db 5,$7B
  %percNote(!instr06-!instr05)
  db 12,$7F
  %percNote(!instr05-!instr05)
  db 7,$7B
  %percNote(!instr06-!instr05)
  db 5,$75
  %percNote(!instr06-!instr05)
  !end

.sub2724
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  !end

.sub2749
  db 7
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 7,$79
  %percNote(!instr07-!instr05)
  db 5,$75
  %percNote(!instr07-!instr05)
  db 12,$79
  %percNote(!instr08-!instr05)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
