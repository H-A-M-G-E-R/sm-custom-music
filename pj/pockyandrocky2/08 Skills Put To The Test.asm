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
  dw Tracker2A61

Tracker2A61:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr04
  !musicVolume,255
  !tempo,29
  !end

.pattern1_0
  !instr,!instr00
  !volume,104
  !vibrato,24,24,96
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !f6
  !g6
  !as6
  !g6
  db 6,$75
  !g6
  !as6
  !g6
  !loop : dw .sub2E51 : db 1
  !g6
  db 6,$75
  !g6
  !f6
  !g6
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !f6
  !g6
  !as6
  !g6
  db 6,$75
  !g6
  db 6,$7F
  !d6
  !f6
  !loop : dw .sub2E96 : db 1
  db 48
  !d7
  !c7
  db 42
  !as6
  db 6,$75
  !as6
  db 24,$7F
  !as6
  !a6
  db 6
  !g6
  db 12,$75
  !a6
  db 6
  !g6
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !f6
  !g6
  !as6
  !g6
  db 6,$75
  !g6
  !as6
  !g6
  !loop : dw .sub2E51 : db 1
  !g6
  db 6,$75
  !as6
  !g6
  !f6
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !f6
  !g6
  !as6
  !g6
  db 6,$75
  !g6
  db 6,$7F
  !d6
  !f6
  !loop : dw .sub2E96 : db 1
  db 72
  !d7
  db 24
  !d7
  db 90
  !c7
  db 6,$75
  !c7
  db 72,$7F
  !c7
  db 24
  !c7
  db 72
  !as6
  db 12
  !g6
  !a6
  db 72
  !as6
  db 24
  !as6
  db 48
  !a6
  db 18
  !f6
  !g6
  db 12
  !a6
  db 96
  !g6
  db 48
  !tie
  db 6
  !g6
  !as6
  !d7
  !as6
  !d7
  !f7
  !d7
  !f7
  db 96
  !g7
  !dynamicVolume,72,42
  db 72
  !tie
  db 24
  !rest
  !end

.pattern1_1
  !pan,13
  !instr,!instr02
  !volume,83
  !subtranspose,54
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !f6
  !g6
  !as6
  !g6
  db 6,$75
  !g6
  !as6
  !g6
  !loop : dw .sub2ED9 : db 1
  !loop : dw .sub2F8A : db 1
  !loop : dw .sub2ED9 : db 1
  db 6,$7F
  !g5
  !as5
  !d6
  !ds6
  !g6
  db 6,$75
  !d6
  db 6,$7F
  !g5
  !as5
  !d6
  !ds6
  !g6
  db 6,$75
  !d6
  db 6,$7F
  !g5
  !as5
  !d6
  !ds6
  !loop : dw .sub2FC7 : db 1
  !loop : dw .sub3040 : db 4
  !end

.pattern1_2
  !instr,!instr01
  !volume,166
  db 12,$7F
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !loop : dw .sub3051 : db 2
  !loop : dw .sub305A : db 2
  !loop : dw .sub3051 : db 2
  db 18
  !d4
  !d5
  db 12
  !d4
  db 18
  !c4
  !c5
  db 12
  !c4
  db 18
  !as3
  !as4
  db 12
  !as3
  !ds3
  db 6
  !ds4
  !rest
  db 12
  !f3
  db 6
  !f4
  !rest
  db 12
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !loop : dw .sub3051 : db 2
  !loop : dw .sub305A : db 2
  !loop : dw .sub3051 : db 2
  db 18
  !ds3
  !ds3
  db 12
  !ds3
  db 18
  !ds3
  !ds3
  db 12
  !ds3
  db 18
  !f3
  !f3
  db 12
  !f3
  db 18
  !f3
  !f3
  db 12
  !f3
  db 18
  !d4
  !d4
  db 12
  !d4
  db 18
  !d4
  !d4
  db 12
  !d4
  db 18
  !g3
  !g3
  db 12
  !g3
  db 18
  !g3
  !g3
  db 12
  !g3
  db 18
  !c4
  !c4
  db 12
  !c4
  db 18
  !c4
  !c4
  db 12
  !c4
  db 18
  !d4
  !d4
  db 12
  !d4
  db 18
  !d4
  !d4
  db 12
  !d4
  !loop : dw .sub3063 : db 2
  !end

.pattern1_3
  !volume,198
  !transpose,252
  db 24,$7F
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  !loop : dw .sub3076 : db 7
  db 18
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 18
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 18
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  !loop : dw .sub307B : db 6
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !loop : dw .sub3080 : db 6
  db 18
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 18
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 18
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 18
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !end

.pattern1_4
  !instr,!instr03
  !volume,104
  !pan,11
  !vibrato,24,24,96
  !subtranspose,29
  db 84,$7F
  !g5
  db 6
  !d5
  !f5
  db 96
  !g5
  db 84
  !g5
  db 6
  !c5
  !e5
  db 96
  !g5
  !loop : dw .sub308B : db 1
  db 84
  !c6
  db 6
  !g5
  !as5
  db 96
  !c6
  db 48
  !d6
  !c6
  !as5
  db 24
  !as5
  !a5
  !loop : dw .sub308B : db 1
  db 84
  !g5
  db 6
  !c5
  !e5
  db 96
  !g5
  !loop : dw .sub308B : db 1
  db 84
  !c6
  db 6
  !g5
  !as5
  db 96
  !c6
  db 72
  !g6
  db 24
  !g6
  db 96
  !f6
  db 72
  !f6
  db 24
  !f6
  db 96
  !ds6
  db 72
  !ds6
  db 24
  !ds6
  db 96
  !d6
  db 18
  !d6
  !a5
  db 12
  !c6
  !d6
  !rest
  db 24
  !d6
  !tie
  !f6
  !e6
  !c6
  db 18
  !d6
  !a5
  db 12
  !c6
  !d6
  !rest
  db 24
  !d6
  db 96
  !tie
  !end

.pattern1_5
  !instr,!instr03
  !volume,104
  !pan,9
  !vibrato,24,24,96
  !subtranspose,29
  db 84,$7F
  !d5
  db 6
  !as4
  !c5
  db 96
  !d5
  db 84
  !ds5
  db 6
  !g4
  !c5
  db 96
  !ds5
  db 84
  !d5
  db 6
  !as4
  !c5
  db 96
  !d5
  !loop : dw .sub308B : db 1
  db 48
  !a5
  !g5
  !f5
  db 24
  !g5
  !f5
  db 84
  !d5
  db 6
  !as4
  !c5
  db 96
  !d5
  db 84
  !ds5
  db 6
  !g4
  !c5
  db 96
  !ds5
  db 84
  !d5
  db 6
  !as4
  !c5
  db 96
  !d5
  !loop : dw .sub308B : db 1
  db 72
  !ds6
  db 24
  !ds6
  db 96
  !c6
  db 72
  !d6
  db 24
  !d6
  db 96
  !c6
  db 72
  !as5
  db 24
  !as5
  db 96
  !a5
  db 18
  !g5
  !d5
  db 12
  !f5
  !g5
  !rest
  db 24
  !g5
  !tie
  !as5
  !a5
  !f5
  db 18
  !g5
  !d5
  db 12
  !f5
  !g5
  !rest
  db 24
  !g5
  db 96
  !tie
  !end

.pattern1_6
  !subtranspose,54
  !transpose,244
  !pan,7
  !instr,!instr02
  !volume,83
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !f6
  !g6
  !as6
  !g6
  db 6,$75
  !g6
  !as6
  !g6
  !loop : dw .sub2ED9 : db 1
  !loop : dw .sub2F8A : db 1
  !loop : dw .sub2ED9 : db 1
  db 1
  !rest
  !subtranspose,62
  !transpose,0
  db 6,$7F
  !g5
  !as5
  !d6
  !ds6
  !g6
  db 6,$75
  !d6
  db 6,$7F
  !g5
  !as5
  !d6
  !ds6
  !g6
  db 6,$75
  !d6
  db 6,$7F
  !g5
  !as5
  !d6
  !ds6
  !loop : dw .sub2FC7 : db 1
  !loop : dw .sub3040 : db 3
  !g7
  !f7
  !d7
  !as6
  !a6
  !g6
  !f6
  !d6
  !as5
  !a5
  !g5
  !f5
  !d5
  !as4
  !a4
  db 5
  !g4
  !end

.pattern1_7
  !volume,198
  !transpose,244
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$75
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$75
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$78
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$75
  %percNote(!instr06-!instr04)
  !loop : dw .sub3093 : db 7
  !loop : dw .sub30AC : db 2
  db 12,$79
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !loop : dw .sub30C9 : db 7
  db 12
  %percNote(!instr06-!instr04)
  db 6,$75
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 6,$75
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 6,$75
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 6,$75
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !loop : dw .sub30AC : db 9
  !end

.sub2E51
  db 6,$7F
  !g6
  !rest
  db 12
  !as6
  db 6
  !g6
  !f6
  !d6
  !f6
  !g6
  !f6
  !g6
  !as6
  !g6
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !as6
  !c7
  db 6,$75
  !g6
  !as6
  !c7
  db 6,$7F
  !c7
  db 12
  !rest
  db 6,$75
  !c7
  db 6,$7F
  !c7
  !as6
  !c7
  !ds7
  !c7
  db 6,$75
  !c7
  !ds7
  !c7
  db 6,$7F
  !c7
  !rest
  db 12
  !ds7
  db 6
  !c7
  !as6
  !g6
  !as6
  !c7
  !as6
  !c7
  !ds7
  !c7
  !as6
  !g6
  !f6
  !end

.sub2E96
  !g6
  db 6,$75
  !g6
  db 12,$7F
  !as6
  db 6
  !g6
  !f6
  !d6
  !f6
  !g6
  !as6
  !c7
  !d7
  !c7
  !as6
  !g6
  !as6
  !c7
  db 6,$75
  !g6
  !as6
  !c7
  db 6,$7F
  !c7
  db 12
  !rest
  db 6,$75
  !c7
  db 6,$7F
  !c7
  !as6
  !c7
  !ds7
  !c7
  db 6,$75
  !c7
  db 6,$7F
  !g6
  !as6
  !c7
  db 6,$75
  !g6
  db 12,$7F
  !ds7
  db 6
  !c7
  !as6
  !g6
  !as6
  !c7
  !ds7
  !f7
  !g7
  db 24
  !f7
  !end

.sub2ED9
  db 6,$7F
  !g6
  !rest
  !as6
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !f6
  !d6
  !f6
  !g6
  !f6
  !g6
  !as6
  !g6
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !as6
  !c7
  db 6,$75
  !g6
  !as6
  !c7
  db 6,$7F
  !c7
  db 12
  !rest
  db 6,$75
  !c7
  db 6,$7F
  !c7
  !as6
  !c7
  !ds7
  !c7
  db 6,$75
  !c7
  !ds7
  !c7
  db 6,$7F
  !c7
  !rest
  !ds7
  db 6,$75
  !c7
  db 6,$7F
  !c7
  !as6
  !g6
  !as6
  !c7
  !as6
  !c7
  !ds7
  !c7
  !as6
  !g6
  !f6
  !g6
  db 6,$75
  !g6
  !f6
  !g6
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !f6
  !g6
  !as6
  !g6
  db 6,$75
  !g6
  db 6,$7F
  !d6
  !f6
  !g6
  !rest
  !as6
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !f6
  !d6
  !f6
  !g6
  !as6
  !c7
  !d7
  !c7
  !as6
  !g6
  !as6
  !c7
  db 6,$75
  !g6
  !as6
  !g6
  db 6,$7F
  !c7
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !c7
  !as6
  !c7
  !ds7
  !c7
  db 6,$75
  !c7
  db 6,$7F
  !g6
  !as6
  !c7
  db 6,$75
  !g6
  db 6,$7F
  !ds7
  db 6,$75
  !c7
  db 6,$7F
  !c7
  !as6
  !g6
  !as6
  !c7
  !ds7
  !f7
  !g7
  !f7
  db 6,$75
  !f7
  !g7
  !f7
  !end

.sub2F8A
  db 6,$7F
  !d6
  !d7
  !c6
  !c7
  !a5
  !a6
  !f5
  !f6
  !c6
  !c7
  !as5
  !as6
  !g5
  !g6
  !ds5
  !ds6
  !as5
  !as6
  !a5
  !a6
  !f5
  !f6
  !d5
  !d6
  !ds6
  !g6
  !as6
  !ds7
  !f6
  !a6
  !c7
  !f7
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  db 12
  !rest
  db 6,$75
  !g6
  db 6,$7F
  !g6
  !f6
  !g6
  !as6
  !g6
  db 6,$75
  !g6
  !as6
  !g6
  !end

.sub2FC7
  !a5
  !c6
  !ds6
  !f6
  !a6
  db 6,$75
  !ds6
  db 6,$7F
  !a5
  !c6
  !ds6
  !f6
  !a6
  db 6,$75
  !ds6
  db 6,$7F
  !a5
  !c6
  !ds6
  !f6
  !a5
  !c6
  !d6
  !f6
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !a5
  !c6
  !d6
  !f6
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !a5
  !c6
  !d6
  !f6
  !g5
  !as5
  !d6
  !f6
  !g6
  db 6,$75
  !d6
  db 6,$7F
  !g5
  !as5
  !d6
  !f6
  !g6
  db 6,$75
  !d6
  db 6,$7F
  !g5
  !as5
  !d6
  !f6
  !g5
  !as5
  !c6
  !d6
  !g6
  db 6,$75
  !c6
  db 6,$7F
  !g5
  !as5
  !c6
  !d6
  !g6
  db 6,$75
  !c6
  db 6,$7F
  !g5
  !as5
  !c6
  !d6
  !a5
  !c6
  !d6
  !f6
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !a5
  !c6
  !d6
  !f6
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !a5
  !c6
  !d6
  !f6
  !end

.sub3040
  !g7
  !f7
  !d7
  !as6
  !a6
  !g6
  !f6
  !d6
  !as5
  !a5
  !g5
  !f5
  !d5
  !as4
  !a4
  !g4
  !end

.sub3051
  !c4
  !rest
  !c4
  !rest
  !c4
  !rest
  !c4
  !rest
  !end

.sub305A
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !g3
  !rest
  !end

.sub3063
  db 18
  !g3
  !d3
  db 12
  !f3
  db 6
  !g3
  db 18
  !rest
  db 24
  !g3
  db 48
  !tie
  db 18
  !f3
  !f3
  db 12
  !f3
  !end

.sub3076
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  !end

.sub307B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  !end

.sub3080
  db 18
  %percNote(!instr04-!instr04)
  db 6
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  !end

.sub308B
  db 84
  !g5
  db 6
  !d5
  !f5
  db 96
  !g5
  !end

.sub3093
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$75
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$75
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$75
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$75
  %percNote(!instr06-!instr04)
  !end

.sub30AC
  db 12,$79
  %percNote(!instr06-!instr04)
  db 6,$75
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 6,$75
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 6,$75
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 6,$75
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !end

.sub30C9
  db 12
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
