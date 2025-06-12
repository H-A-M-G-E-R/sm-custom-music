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

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$FF,$F2,$B8,$03,$30
  db !instr03,$F8,$E9,$B8,$03,$00
  db !instr04,$8F,$E0,$B8,$07,$A0
  db !instr05,$FF,$E0,$B8,$05,$10
  db !instr06,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+1791
  dw Sample03,Sample03+27
  dw Sample04,Sample04+1116
  dw Sample05,Sample05+1908
  dw Sample06,Sample06+522
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample03: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample04: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample05: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample06: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2404

Tracker2404:
  dw .pattern0
-
  dw .pattern1
  dw .pattern2
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw 0, .pattern1_1, .pattern1_2, .pattern1_3, 0, .pattern1_5, .pattern1_6, 0
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr04
  !musicVolume,255
  !tempo,31
  !end

.pattern1_1
  !instr,!instr02
  !volume,104
  !pan,11
  !subtranspose,54
  db 16
  !rest
  db 8,$7F
  !b5
  db 16
  !rest
  db 8,$75
  !b5
  db 8,$7F
  !a5
  db 16
  !rest
  db 8,$75
  !a5
  db 16
  !rest
  db 8,$7F
  !b5
  db 16
  !rest
  db 8,$75
  !b5
  !rest
  db 8,$7F
  !a5
  db 16
  !rest
  db 8,$75
  !a5
  db 24
  !rest
  !loop : dw .sub2861 : db 3
  !end

.pattern1_2
  !instr,!instr01
  !volume,166
  db 16,$7F
  !g3
  db 8
  !g3
  db 16,$75
  !g3
  db 8
  !g3
  db 48
  !rest
  !loop : dw .sub2889 : db 1
  !rest
  db 16
  !rest
  db 8,$7F
  !f3
  db 16
  !d3
  db 8
  !f3
  db 16
  !g3
  db 8
  !g3
  db 16,$75
  !g3
  db 8
  !g3
  db 48
  !rest
  !loop : dw .sub2889 : db 1
  !rest
  db 16
  !rest
  db 8,$7F
  !b3
  db 16
  !c4
  db 8
  !b3
  !end

.pattern1_3
  !volume,198
  db 48,$7F
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 16
  %percNote(!instr04-!instr04)
  db 8
  %percNote(!instr05-!instr04)
  db 24
  %percNote(!instr05-!instr04)
  db 48
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 16,$73
  %percNote(!instr05-!instr04)
  db 8,$77
  %percNote(!instr05-!instr04)
  db 16,$7B
  %percNote(!instr05-!instr04)
  db 8,$7F
  %percNote(!instr05-!instr04)
  !end

.pattern1_5
  !instr,!instr02
  !volume,104
  !pan,9
  !subtranspose,54
  db 16
  !rest
  db 8,$7F
  !g5
  db 16
  !rest
  db 8,$75
  !g5
  db 8,$7F
  !f5
  db 16
  !rest
  db 8,$75
  !f5
  db 16
  !rest
  db 8,$7F
  !g5
  db 16
  !rest
  db 8,$75
  !g5
  !rest
  db 8,$7F
  !f5
  db 16
  !rest
  db 8,$75
  !f5
  db 24
  !rest
  !loop : dw .sub2898 : db 3
  !end

.pattern1_6
  !volume,198
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 24,$79
  %percNote(!instr06-!instr04)
  db 16
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 24,$79
  %percNote(!instr06-!instr04)
  !loop : dw .sub28C0 : db 1
  !loop : dw .sub28E5 : db 1
  !loop : dw .sub28C0 : db 1
  db 16
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8
  %percNote(!instr06-!instr04)
  !end

.pattern2_0
  !instr,!instr00
  !volume,104
  !pan,11
  db 16
  !rest
  db 8,$7F
  !b6
  db 24
  !rest
  db 8
  !b6
  !rest
  !a6
  !g6
  !rest
  !a6
  !loop : dw .sub290C : db 1
  !loop : dw .sub292B : db 1
  !loop : dw .sub290C : db 1
  !loop : dw .sub295C : db 1
  db 16
  !rest
  db 8
  !g6
  !a6
  !rest
  !g6
  db 48
  !rest
  !end

.pattern2_1
  !volume,104
  !pan,12
  !subtranspose,54
  db 16
  !rest
  db 8,$7F
  !b5
  db 16
  !rest
  db 8,$75
  !b5
  db 8,$7F
  !a5
  db 16
  !rest
  db 8,$75
  !a5
  db 16
  !rest
  db 8,$7F
  !b5
  db 16
  !rest
  db 8,$75
  !b5
  !rest
  db 8,$7F
  !a5
  db 16
  !rest
  db 8,$75
  !a5
  db 24
  !rest
  !loop : dw .sub2861 : db 6
  db 16
  !rest
  db 8,$7F
  !b5
  db 16
  !rest
  db 8,$75
  !b5
  db 8,$7F
  !a5
  db 16
  !rest
  db 8,$75
  !a5
  db 16
  !rest
  db 8,$7F
  !c6
  db 16
  !rest
  db 8,$75
  !c6
  !rest
  db 8,$7F
  !b5
  db 16
  !rest
  db 8,$75
  !b5
  db 24
  !rest
  !pan,10
  db 8,$7F
  !g5
  !rest
  !c6
  !g6
  !rest
  !fs5
  db 8,$75
  !g6
  !rest
  db 8,$7F
  !b5
  !fs6
  !rest
  db 8,$75
  !fs6
  db 8,$7F
  !e5
  !rest
  !a5
  !e6
  !rest
  !d5
  db 8,$75
  !e6
  !rest
  db 8,$7F
  !g5
  !d6
  !rest
  db 8,$75
  !d6
  db 8,$7F
  !e5
  !rest
  !d5
  !e5
  !rest
  !g5
  db 8,$75
  !e5
  !rest
  !d5
  !e5
  !rest
  !g5
  db 8,$7F
  !fs5
  !rest
  !e5
  !fs5
  !rest
  !a5
  db 8,$75
  !fs5
  !rest
  !e5
  !fs5
  !rest
  !a5
  db 8,$7F
  !g5
  !rest
  !c6
  !g6
  !rest
  !a5
  db 8,$75
  !g6
  !rest
  db 8,$7F
  !d6
  !a6
  !rest
  db 8,$75
  !a6
  db 8,$7F
  !b5
  !rest
  !d6
  !b6
  !rest
  !b5
  db 8,$75
  !b6
  !rest
  db 8,$7F
  !e6
  !b6
  !rest
  db 8,$75
  !b6
  db 8,$7F
  !g5
  !rest
  !c6
  !g6
  !rest
  !fs5
  db 8,$75
  !g6
  !rest
  db 8,$7F
  !b5
  !fs6
  !rest
  db 8,$75
  !fs6
  db 8,$7F
  !e5
  !rest
  !a5
  !e6
  !rest
  !d5
  db 8,$75
  !e6
  !rest
  db 8,$7F
  !g5
  !d6
  !rest
  db 8,$75
  !d6
  !end

.pattern2_2
  db 16,$7F
  !g3
  db 8
  !g3
  db 40
  !rest
  db 8
  !d3
  db 16
  !f3
  db 8
  !d3
  !loop : dw .sub29DC : db 1
  !loop : dw .sub29F7 : db 1
  !loop : dw .sub29DC : db 1
  !loop : dw .sub29F7 : db 1
  !loop : dw .sub29DC : db 1
  !loop : dw .sub29F7 : db 1
  !loop : dw .sub29DC : db 1
  db 16
  !g3
  db 8
  !g3
  db 16
  !rest
  db 24
  !e3
  db 8
  !g3
  db 16
  !e3
  db 8
  !g3
  db 16
  !c4
  db 8
  !c4
  db 16
  !rest
  db 24
  !b3
  db 8
  !fs3
  db 16
  !b3
  db 8
  !fs3
  db 16
  !a3
  db 8
  !a3
  db 16
  !rest
  db 24
  !g3
  db 8
  !a3
  db 24
  !b3
  db 16
  !c4
  db 8
  !g3
  db 16
  !a3
  db 8
  !c4
  db 16
  !rest
  db 8
  !c4
  db 16
  !b3
  db 8
  !c4
  db 16
  !d4
  db 8
  !a3
  db 16
  !c4
  db 8
  !d4
  db 16
  !rest
  db 32
  !d3
  db 16
  !c4
  db 8
  !c4
  db 16
  !rest
  db 24
  !d4
  db 8
  !a3
  db 16
  !d4
  db 8
  !a3
  db 16
  !b3
  db 8
  !a3
  db 16
  !g3
  db 24
  !e3
  db 8
  !b3
  db 24
  !e4
  db 16
  !c4
  db 8
  !g3
  db 16
  !a3
  db 8
  !c4
  db 16
  !rest
  db 8
  !b3
  db 16
  !a3
  db 8
  !b3
  db 16
  !a3
  db 8
  !g3
  db 16
  !d3
  db 8
  !g3
  db 16
  !rest
  db 24
  !g3
  db 8
  !f3
  !end

.pattern2_3
  db 24,$7F
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  !loop : dw .sub2A12 : db 6
  !loop : dw .sub2A17 : db 1
  !loop : dw .sub2A12 : db 6
  !loop : dw .sub2A17 : db 1
  !loop : dw .sub2A12 : db 7
  !end

.pattern2_4
  !instr,!instr03
  !volume,104
  !vibrato,24,24,96
  !pan,10
  !subtranspose,29
  db 16
  !rest
  db 24,$7F
  !b5
  db 24,$79
  !b5
  db 24,$73
  !b5
  db 8
  !rest
  !loop : dw .sub2A27 : db 1
  !loop : dw .sub2A44 : db 1
  !loop : dw .sub2A27 : db 1
  !loop : dw .sub2A44 : db 1
  !loop : dw .sub2A27 : db 1
  !loop : dw .sub2A44 : db 1
  !loop : dw .sub2A27 : db 1
  db 24,$7F
  !c6
  db 16,$79
  !c6
  db 24,$7F
  !b5
  db 24,$79
  !b5
  db 8,$73
  !b5
  !pan,13
  db 40,$7F
  !c6
  db 56
  !b5
  db 40
  !a5
  db 32
  !g5
  db 24
  !fs5
  db 96
  !g5
  !a5
  db 40
  !g5
  db 56
  !a5
  db 40
  !b5
  db 56
  !b5
  db 48
  !c6
  !b5
  db 40
  !a5
  db 56
  !g5
  !end

.pattern2_5
  !volume,104
  !instr,!instr02
  !pan,8
  !subtranspose,54
  db 16
  !rest
  db 8,$7F
  !g5
  db 16
  !rest
  db 8,$75
  !g5
  db 8,$7F
  !f5
  db 16
  !rest
  db 8,$75
  !f5
  db 16
  !rest
  db 8,$7F
  !g5
  db 16
  !rest
  db 8,$75
  !g5
  !rest
  db 8,$7F
  !f5
  db 16
  !rest
  db 8,$75
  !f5
  db 24
  !rest
  !loop : dw .sub2898 : db 6
  db 16
  !rest
  db 8,$7F
  !g5
  db 16
  !rest
  db 8,$75
  !g5
  db 8,$7F
  !f5
  db 16
  !rest
  db 8,$75
  !f5
  db 16
  !rest
  db 8,$7F
  !g5
  db 16
  !rest
  db 8,$75
  !g5
  !rest
  db 8,$7F
  !g5
  db 16
  !rest
  db 8,$75
  !g5
  db 24
  !rest
  !instr,!instr03
  !volume,104
  !vibrato,24,24,96
  !pan,7
  !subtranspose,29
  db 40,$7F
  !g5
  db 56
  !fs5
  db 40
  !e5
  db 32
  !d5
  db 24
  !d5
  db 96
  !e5
  !fs5
  db 40
  !e5
  db 56
  !fs5
  db 40
  !fs5
  db 56
  !g5
  db 48
  !g5
  !fs5
  db 40
  !e5
  db 56
  !d5
  !end

.pattern2_6
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 24,$79
  %percNote(!instr06-!instr04)
  db 16
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 24,$79
  %percNote(!instr06-!instr04)
  !loop : dw .sub28E5 : db 11
  db 16
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8
  %percNote(!instr06-!instr04)
  !end

.pattern2_7
  db 24
  !rest
  !instr,!instr00
  !volume,73
  !pan,9
  !subtranspose,8
  db 16
  !rest
  db 8,$7F
  !b6
  db 24
  !rest
  db 8
  !b6
  !rest
  !a6
  !g6
  !rest
  !a6
  !loop : dw .sub290C : db 1
  !loop : dw .sub292B : db 1
  !loop : dw .sub290C : db 1
  !loop : dw .sub295C : db 1
  db 16
  !rest
  db 8
  !g6
  !a6
  !rest
  !g6
  db 24
  !rest
  !end

.sub2861
  db 16
  !rest
  db 8,$7F
  !b5
  db 16
  !rest
  db 8,$75
  !b5
  db 8,$7F
  !a5
  db 16
  !rest
  db 8,$75
  !a5
  db 16
  !rest
  db 8,$7F
  !b5
  db 16
  !rest
  db 8,$75
  !b5
  !rest
  db 8,$7F
  !a5
  db 16
  !rest
  db 8,$75
  !a5
  db 24
  !rest
  !end

.sub2889
  db 96
  !rest
  db 16,$7F
  !g3
  db 8
  !g3
  db 16,$75
  !g3
  db 8
  !g3
  db 48
  !rest
  !end

.sub2898
  db 16
  !rest
  db 8,$7F
  !g5
  db 16
  !rest
  db 8,$75
  !g5
  db 8,$7F
  !f5
  db 16
  !rest
  db 8,$75
  !f5
  db 16
  !rest
  db 8,$7F
  !g5
  db 16
  !rest
  db 8,$75
  !g5
  !rest
  db 8,$7F
  !f5
  db 16
  !rest
  db 8,$75
  !f5
  db 24
  !rest
  !end

.sub28C0
  db 16
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 24,$79
  %percNote(!instr06-!instr04)
  db 16
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 24,$79
  %percNote(!instr06-!instr04)
  db 16
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 24,$79
  %percNote(!instr06-!instr04)
  !end

.sub28E5
  db 16
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 16,$79
  %percNote(!instr06-!instr04)
  db 8
  %percNote(!instr06-!instr04)
  db 16
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 24,$79
  %percNote(!instr06-!instr04)
  db 16
  %percNote(!instr06-!instr04)
  db 8,$75
  %percNote(!instr06-!instr04)
  db 24,$79
  %percNote(!instr06-!instr04)
  !end

.sub290C
  db 40
  !rest
  db 8
  !a6
  db 16
  !rest
  db 8
  !g6
  !e6
  db 16
  !rest
  db 8
  !d6
  db 88
  !rest
  db 96
  !rest
  db 16
  !rest
  db 8
  !b6
  db 24
  !rest
  db 8
  !b6
  !rest
  !a6
  !g6
  !rest
  !a6
  !end

.sub292B
  db 40
  !rest
  db 8
  !a6
  db 16
  !rest
  db 8
  !g6
  !e6
  !rest
  !g6
  !d6
  db 16
  !rest
  db 8
  !e6
  db 16
  !rest
  db 8
  !g6
  db 16
  !rest
  db 8
  !a6
  db 16
  !rest
  db 8
  !b6
  !rest
  !g6
  !b6
  !rest
  !a6
  db 48
  !rest
  db 16
  !rest
  db 8
  !b6
  db 24
  !rest
  db 8
  !b6
  !rest
  !a6
  !g6
  !rest
  !a6
  !end

.sub295C
  db 40
  !rest
  db 8
  !a6
  db 16
  !rest
  db 8
  !g6
  !e6
  !rest
  !d6
  !e6
  db 16
  !rest
  db 8
  !g6
  db 16
  !rest
  db 8
  !a6
  !rest
  !g6
  !a6
  !rest
  !g6
  db 40
  !rest
  db 8
  !g6
  db 16
  !rest
  db 8
  !a6
  !b6
  !rest
  !d7
  !e7
  !rest
  !d7
  !b6
  !rest
  !d7
  db 16
  !rest
  db 8
  !b6
  !a6
  !rest
  !g6
  !e6
  !rest
  !g6
  !a6
  !rest
  !g6
  db 16
  !rest
  db 8
  !g6
  !fs6
  db 16
  !rest
  db 8
  !e6
  !rest
  !d6
  !e6
  !rest
  !g6
  !a6
  !rest
  !b6
  db 16
  !rest
  db 8
  !d7
  db 16
  !rest
  db 8
  !d7
  !e7
  !rest
  !d7
  db 16
  !rest
  db 8
  !b6
  db 16
  !rest
  db 8
  !d7
  !e7
  !rest
  !d7
  !b6
  !rest
  !d7
  db 16
  !rest
  db 8
  !b6
  !a6
  !rest
  !g6
  !a6
  !rest
  !b6
  !d7
  !rest
  !e7
  db 48
  !rest
  db 8
  !a6
  db 16
  !rest
  db 8
  !d7
  db 16
  !rest
  db 8
  !b6
  !rest
  !a6
  !d6
  !rest
  !e6
  !end

.sub29DC
  db 16
  !g3
  db 8
  !g3
  db 16
  !rest
  db 24
  !c4
  db 8
  !b3
  db 16
  !c4
  db 8
  !a3
  db 16
  !g3
  db 8
  !g3
  db 40
  !rest
  db 8
  !d3
  db 16
  !f3
  db 8
  !d3
  !end

.sub29F7
  db 16
  !g3
  db 8
  !g3
  db 16
  !rest
  db 24
  !c4
  db 8
  !d4
  db 16
  !f4
  db 8
  !g4
  db 16
  !g3
  db 8
  !g3
  db 40
  !rest
  db 8
  !d3
  db 16
  !f3
  db 8
  !d3
  !end

.sub2A12
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  !end

.sub2A17
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 16
  %percNote(!instr05-!instr04)
  db 8
  %percNote(!instr05-!instr04)
  db 16
  %percNote(!instr05-!instr04)
  db 8
  %percNote(!instr05-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  !end

.sub2A27
  db 24,$7F
  !b5
  db 16,$79
  !b5
  db 24,$7F
  !a5
  db 24,$79
  !a5
  db 8,$73
  !a5
  db 16
  !tie
  db 24,$7F
  !b5
  db 24,$79
  !b5
  db 24,$73
  !b5
  db 8
  !rest
  !end

.sub2A44
  db 24,$7F
  !b5
  db 16,$79
  !b5
  db 24,$7F
  !c6
  db 8
  !c6
  db 24,$79
  !a5
  db 16,$73
  !a5
  db 24,$7F
  !b5
  db 24,$79
  !b5
  db 24,$73
  !b5
  db 8
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
