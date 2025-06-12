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
!instr07 = $1D

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr03,$FF,$F2,$B8,$03,$30
  db !instr04,$8F,$E0,$B8,$07,$A0
  db !instr05,$FF,$E0,$B8,$04,$B0
  db !instr06,$FF,$E0,$B8,$07,$A0
  db !instr07,$FF,$F6,$B8,$04,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+27
  dw Sample03,Sample03+1791
  dw Sample04,Sample04+1116
  dw Sample05,Sample05+1773
  dw Sample06,Sample06+522
  dw Sample07,Sample07+207
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample03: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample04: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample05: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample06: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"
  Sample07: incbin "Sample_52321808d69bf220a373c01cbb04d19b.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw .pattern3
  dw .pattern4
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, 0
.pattern3: dw .pattern3_0, 0, .pattern3_2, .pattern3_3, .pattern3_4, .pattern3_5, 0, .pattern3_7
.pattern4: dw .pattern4_0, .pattern4_1, .pattern4_2, .pattern4_3, .pattern4_4, .pattern4_5, .pattern4_6, .pattern4_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr04
  !musicVolume,255
  !tempo,27
  !end

.pattern1_0
  !volume,104
  !instr,!instr00
  !vibrato,24,24,72
  db 96,$7F
  !a5
  db 24
  !d6
  !e6
  !f6
  !g6
  db 96
  !a6
  !a6
  !dynamicVolume,72,62
  db 72
  !tie
  db 24
  !rest
  !end

.pattern1_1
  !pan,13
  !instr,!instr02
  !volume,146
  !subtranspose,29
  db 48,$7F
  !d5
  !e5
  !f5
  !g5
  db 96
  !a5
  !a5
  !tie
  !end

.pattern1_2
  !instr,!instr02
  !volume,166
  !subtranspose,29
  db 48,$7F
  !d4
  !c4
  !as3
  !a3
  db 96
  !g3
  !c4
  !tie
  !end

.pattern1_3
  !pan,20
  !instr,!instr03
  !volume,83
  !subtranspose,53
  db 6,$7F
  !d6
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !f6
  db 6,$7F
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !d6
  db 6,$75
  !d6
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  !loop : dw .sub2ABC : db 1
  db 4
  !d6
  !e6
  !g6
  !c7
  db 4,$7B
  !d6
  !e6
  !g6
  !c7
  db 4,$77
  !d6
  !e6
  !g6
  !c7
  db 4,$75
  !d6
  !e6
  !g6
  !c7
  db 8
  !rest
  !volume,198
  !pan,10
  db 24,$7F
  %percNote(!instr07-!instr04)
  !end

.pattern1_4
  !pan,7
  !instr,!instr02
  !volume,125
  !subtranspose,29
  db 48,$7F
  !a4
  !c5
  !d5
  !e5
  db 96
  !f5
  !e5
  !tie
  !end

.pattern1_5
  !pan,10
  !instr,!instr02
  !volume,125
  !subtranspose,29
  db 48,$7F
  !f4
  !g4
  !a4
  !c5
  db 96
  !d5
  !d5
  !tie
  !end

.pattern1_6
  db 1
  !rest
  !pan,0
  !instr,!instr03
  !volume,83
  !subtranspose,53
  db 6,$7F
  !d6
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !f6
  db 6,$7F
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !d6
  db 6,$75
  !d6
  db 6,$7F
  !a5
  db 6,$75
  !a5
  db 6,$7F
  !c6
  db 6,$75
  !c6
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !a5
  !loop : dw .sub2ABC : db 1
  db 4
  !d6
  !e6
  !g6
  !c7
  db 4,$7B
  !d6
  !e6
  !g6
  !c7
  db 4,$77
  !d6
  !e6
  !g6
  !c7
  db 4,$75
  !d6
  !e6
  !g6
  !c7
  db 31
  !rest
  !end

.pattern1_7
  db 24
  !rest
  !subtranspose,8
  !volume,83
  !instr,!instr00
  !vibrato,24,24,72
  db 96,$7F
  !a5
  db 24
  !d6
  !e6
  !f6
  !g6
  db 96
  !a6
  !a6
  !dynamicVolume,72,52
  db 72
  !tie
  !end

.pattern2_0
  !instr,!instr00
  !volume,104
  !pan,10
  !vibrato,24,24,64
  db 12,$5F
  !d7
  db 12,$55
  !d7
  !rest
  db 12,$5F
  !c7
  !a6
  db 12,$55
  !a6
  !rest
  db 12,$5F
  !f6
  db 12,$55
  !f6
  !rest
  db 12,$7F
  !g6
  !a6
  db 6
  !g6
  db 6,$75
  !a6
  !g6
  db 6,$7F
  !f6
  db 12
  !e6
  !c6
  db 84
  !d6
  !dynamicVolume,48,42
  db 12
  !tie
  db 36
  !tie
  db 12,$75
  !d6
  db 4
  !rest
  !instr,!instr03
  !volume,114
  !pan,8
  !subtranspose,53
  db 8,$7F
  !c5
  !f5
  !a5
  !d5
  !g5
  db 4
  !c6
  !instr,!instr00
  !volume,104
  !pan,10
  !subtranspose,0
  db 12,$5F
  !d7
  db 12,$55
  !d7
  !rest
  db 12,$5F
  !c7
  !a6
  db 12,$55
  !a6
  !rest
  db 12,$5F
  !f6
  db 12,$55
  !f6
  !rest
  db 12,$7F
  !g6
  !a6
  db 6
  !g6
  db 6,$75
  !a6
  !g6
  db 6,$7F
  !f6
  db 12
  !e6
  !c6
  db 96
  !d6
  db 24
  !tie
  !dynamicVolume,48,42
  db 48
  !tie
  db 24
  !rest
  !end

.pattern2_1
  !instr,!instr03
  !volume,114
  !pan,10
  !endVibrato
  !subtranspose,53
  db 12,$7F
  !d6
  db 12,$75
  !d6
  !rest
  db 12,$7F
  !c6
  !a5
  db 12,$75
  !a5
  !rest
  db 12,$7F
  !f5
  !loop : dw .sub2B0F : db 1
  db 48
  !rest
  !pan,12
  db 8,$7F
  !a4
  !d5
  !g5
  !c5
  !f5
  !a5
  !pan,10
  db 12
  !d6
  db 12,$75
  !d6
  !rest
  db 12,$7F
  !c6
  !a5
  db 12,$75
  !a5
  !rest
  db 12,$7F
  !f5
  !loop : dw .sub2B0F : db 1
  db 24
  !rest
  !rest
  !rest
  !rest
  !end

.pattern2_2
  !instr,!instr01
  !volume,166
  !endVibrato
  !subtranspose,0
  db 12,$7F
  !d4
  db 24
  !rest
  db 12
  !c4
  !d4
  db 36
  !rest
  !loop : dw .sub2B28 : db 6
  db 12
  !d4
  db 24
  !rest
  db 12
  !c4
  !d4
  !g3
  !a3
  !c4
  !end

.pattern2_3
  !loop : dw .sub2B32 : db 7
  db 12,$7F
  %percNote(!instr04-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12,$7F
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !end

.pattern2_4
  !pan,13
  !instr,!instr02
  !volume,125
  !subtranspose,29
  !endVibrato
  db 24,$7F
  !a5
  db 24,$79
  !a5
  db 24,$73
  !a5
  !rest
  !loop : dw .sub2B47 : db 3
  db 48,$7F
  !g5
  !pitchSlide,30,18 : !c6
  !tie
  !end

.pattern2_5
  !pan,7
  !instr,!instr02
  !volume,125
  !subtranspose,29
  !endVibrato
  db 24,$7F
  !f5
  db 24,$79
  !f5
  db 24,$73
  !f5
  !rest
  !loop : dw .sub2B5C : db 3
  db 48,$7F
  !e5
  !pitchSlide,30,18 : !g5
  !tie
  !end

.pattern2_6
  !pan,10
  !instr,!instr02
  !volume,125
  !subtranspose,29
  !endVibrato
  db 24,$7F
  !d5
  db 24,$79
  !d5
  db 24,$73
  !d5
  !rest
  !loop : dw .sub2B71 : db 3
  db 48,$7F
  !c5
  !pitchSlide,30,18 : !e5
  !tie
  !end

.pattern3_0
  !instr,!instr00
  !volume,104
  !pan,10
  !vibrato,24,24,64
  db 36,$7F
  !d6
  db 6
  !f6
  db 6,$75
  !d6
  db 24,$7F
  !g6
  db 12
  !f6
  !c6
  !loop : dw .sub2B86 : db 1
  db 96
  !d6
  db 48
  !tie
  db 12,$75
  !d6
  db 36
  !rest
  !end

.pattern3_2
  db 12,$7F
  !d4
  db 24
  !rest
  db 12
  !d4
  !c4
  db 36
  !rest
  !loop : dw .sub2C69 : db 1
  db 12
  !d4
  db 24
  !rest
  db 12
  !d4
  !c4
  db 36
  !rest
  !loop : dw .sub2C7D : db 2
  !loop : dw .sub2C87 : db 1
  !d4
  db 24
  !rest
  db 12
  !d4
  !c4
  db 36
  !rest
  !loop : dw .sub2C69 : db 1
  db 12
  !d4
  db 24
  !rest
  db 12
  !d4
  !c4
  db 36
  !rest
  !loop : dw .sub2C7D : db 2
  !loop : dw .sub2C87 : db 1
  !d4
  db 24
  !rest
  db 12
  !c4
  !d4
  !g3
  !a3
  !c4
  !end

.pattern3_3
  !loop : dw .sub2C9C : db 7
  db 12,$7F
  %percNote(!instr04-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  !loop : dw .sub2C9C : db 7
  db 12,$7F
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !end

.pattern3_4
  !instr,!instr03
  !volume,104
  !pan,13
  !endVibrato
  !subtranspose,53
  db 12
  !rest
  db 12,$7F
  !f5
  !f5
  !rest
  !e5
  !rest
  !e5
  !e5
  !loop : dw .sub2CB1 : db 3
  db 12,$75
  !e5
  db 12,$7F
  !f5
  !f5
  !rest
  !f5
  !f5
  !e5
  !e5
  db 12,$75
  !f5
  db 12,$7F
  !f5
  !f5
  !rest
  !e5
  !rest
  !e5
  !e5
  !loop : dw .sub2CB1 : db 3
  db 12,$75
  !e5
  db 12,$7F
  !f5
  !f5
  !rest
  !e5
  !rest
  !e5
  !e5
  db 12,$75
  !e5
  db 12,$7F
  !f5
  !f5
  !rest
  !f5
  !f5
  !e5
  !e5
  !end

.pattern3_5
  !instr,!instr03
  !volume,104
  !pan,7
  !endVibrato
  !subtranspose,53
  db 12
  !rest
  db 12,$7F
  !d5
  !d5
  !rest
  !c5
  !rest
  !c5
  !c5
  db 12,$75
  !c5
  db 12,$7F
  !d5
  !d5
  !rest
  !c5
  !rest
  !c5
  db 12,$75
  !c5
  !rest
  db 12,$7F
  !c5
  !c5
  !rest
  !c5
  !rest
  !c5
  !c5
  !loop : dw .sub2CCA : db 2
  db 12,$75
  !c5
  db 12,$7F
  !d5
  !d5
  !rest
  !d5
  !d5
  !c5
  !c5
  db 12,$75
  !d5
  db 12,$7F
  !d5
  !d5
  !rest
  !c5
  !rest
  !c5
  !c5
  db 12,$75
  !c5
  db 12,$7F
  !d5
  !d5
  !rest
  !c5
  !rest
  !c5
  db 12,$75
  !c5
  !rest
  db 12,$7F
  !c5
  !c5
  !rest
  !c5
  !rest
  !c5
  !c5
  !loop : dw .sub2CCA : db 2
  db 12,$75
  !c5
  db 12,$7F
  !d5
  !d5
  !rest
  !c5
  !rest
  !c5
  !c5
  db 12,$75
  !c5
  db 12,$7F
  !d5
  !d5
  !rest
  !d5
  !d5
  !c5
  !c5
  !end

.pattern3_7
  !instr,!instr00
  !volume,83
  !pan,10
  !vibrato,24,24,64
  !subtranspose,16
  db 12
  !rest
  db 36,$7F
  !d6
  db 6
  !f6
  db 6,$75
  !d6
  db 24,$7F
  !g6
  db 12
  !f6
  !c6
  !loop : dw .sub2B86 : db 1
  db 96
  !d6
  db 48
  !tie
  db 12,$75
  !d6
  db 24
  !rest
  !end

.pattern4_0
  !volume,198
  db 96
  !rest
  db 72
  !rest
  db 24,$7F
  %percNote(!instr07-!instr04)
  db 96
  !rest
  !loop : dw .sub2CE3 : db 2
  db 60
  !rest
  db 12
  %percNote(!instr07-!instr04)
  db 24
  %percNote(!instr07-!instr04)
  !instr,!instr00
  !volume,104
  !pan,10
  !vibrato,24,24,64
  db 48
  !d6
  !c6
  !loop : dw .sub2CEA : db 1
  db 96
  !d6
  db 48
  !d6
  !c6
  !loop : dw .sub2CEA : db 1
  db 96
  !d6
  !end

.pattern4_1
  !instr,!instr03
  !volume,125
  !pan,11
  !endVibrato
  !subtranspose,53
  db 12,$7F
  !d6
  db 12,$75
  !d6
  !rest
  db 12,$7F
  !c6
  !d6
  db 12,$75
  !d6
  db 12,$7F
  !a5
  !c6
  !loop : dw .sub2D00 : db 1
  !volume,94
  !pan,5
  !dynamicPan,96,15
  db 6,$7F
  !d6
  !rest
  !f6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 6,$75
  !f6
  db 6,$7F
  !d7
  db 6,$75
  !a6
  db 6,$7F
  !c6
  db 6,$75
  !d7
  db 6,$7F
  !e6
  db 6,$75
  !c6
  db 6,$7F
  !g6
  db 6,$75
  !e6
  db 6,$7F
  !c7
  db 6,$75
  !g6
  !loop : dw .sub2D5F : db 1
  !dynamicPan,96,15
  db 6,$7F
  !d6
  db 6,$75
  !f6
  db 6,$7F
  !f6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 6,$75
  !f6
  db 6,$7F
  !d7
  db 6,$75
  !a6
  db 6,$7F
  !c6
  db 6,$75
  !d7
  db 6,$7F
  !e6
  db 6,$75
  !c6
  db 6,$7F
  !g6
  db 6,$75
  !e6
  db 6,$7F
  !c7
  db 6,$75
  !g6
  !loop : dw .sub2D5F : db 1
  !end

.pattern4_2
  db 12,$7F
  !as3
  db 24
  !rest
  db 12
  !as3
  !as3
  db 36
  !rest
  db 12
  !a3
  db 24
  !rest
  db 12
  !a3
  !a3
  db 36
  !rest
  db 12
  !g3
  db 24
  !rest
  db 12
  !g3
  !c4
  db 36
  !rest
  db 12
  !d4
  db 24
  !rest
  db 12
  !d4
  !d4
  db 36
  !rest
  db 12
  !as3
  db 24
  !rest
  db 12
  !as3
  !as3
  db 36
  !rest
  db 12
  !a3
  db 24
  !rest
  db 12
  !a3
  !a3
  db 36
  !rest
  db 12
  !g3
  db 24
  !rest
  db 12
  !g3
  !g3
  db 36
  !rest
  db 12
  !a3
  db 24
  !rest
  db 12
  !a3
  !a3
  db 36
  !rest
  db 24
  !d4
  db 12
  !rest
  !d4
  db 24
  !c4
  db 12
  !rest
  !c4
  !loop : dw .sub2EC5 : db 1
  !d4
  db 12
  !rest
  !d4
  db 24
  !c4
  db 12
  !rest
  !c4
  !loop : dw .sub2EC5 : db 1
  !end

.pattern4_3
  !loop : dw .sub2C9C : db 23
  db 12,$7F
  %percNote(!instr04-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !end

.pattern4_4
  !instr,!instr02
  !volume,125
  !pan,13
  !endVibrato
  !subtranspose,29
  db 96,$7F
  !d5
  !e5
  db 48
  !d5
  !e5
  !f5
  !e5
  db 96
  !d5
  !e5
  !g5
  db 48
  !e5
  !e5
  !pitchSlide,32,16 : !a5
  !tie
  !g5
  db 96
  !f5
  db 48
  !d5
  !e5
  !f5
  !e5
  !f5
  !e5
  db 96
  !d5
  !e5
  db 48
  !f5
  !g5
  !a5
  !g5
  db 96
  !f5
  db 48
  !d5
  !e5
  !f5
  !e5
  !f5
  !e5
  db 96
  !d5
  !e5
  db 48
  !f5
  !g5
  !end

.pattern4_5
  !instr,!instr02
  !volume,125
  !pan,7
  !endVibrato
  !subtranspose,29
  db 96,$7F
  !as4
  !c5
  db 48
  !as4
  !c5
  !d5
  !c5
  db 96
  !as4
  !c5
  !d5
  db 48
  !cs5
  !cs5
  !pitchSlide,32,16 : !f5
  !tie
  !e5
  db 96
  !c5
  db 48
  !as4
  !c5
  !d5
  !c5
  !d5
  !c5
  db 96
  !as4
  !c5
  db 48
  !d5
  !e5
  !f5
  !e5
  db 96
  !d5
  db 48
  !as4
  !c5
  !d5
  !c5
  !d5
  !c5
  db 96
  !as4
  !c5
  db 48
  !d5
  !d5
  !end

.pattern4_6
  !instr,!instr02
  !volume,125
  !pan,10
  !endVibrato
  !subtranspose,29
  db 96,$7F
  !f4
  !g4
  db 48
  !f4
  !g4
  !a4
  !g4
  db 96
  !f4
  !g4
  !as4
  db 48
  !a4
  !a4
  !pitchSlide,32,16 : !d5
  !tie
  !c5
  db 96
  !a4
  db 48
  !f4
  !g4
  !a4
  !g4
  !a4
  !g4
  db 96
  !f4
  !g4
  db 48
  !a4
  !c5
  !d5
  !c5
  db 96
  !a4
  db 48
  !f4
  !g4
  !a4
  !g4
  !a4
  !g4
  db 96
  !f4
  !g4
  db 48
  !a4
  !c5
  !end

.pattern4_7
  !instr,!instr03
  !volume,83
  !pan,9
  !endVibrato
  !subtranspose,61
  db 12
  !rest
  db 12,$7F
  !d6
  db 12,$75
  !d6
  !rest
  db 12,$7F
  !c6
  !d6
  db 12,$75
  !d6
  db 12,$7F
  !a5
  !c6
  !loop : dw .sub2D00 : db 1
  !instr,!instr00
  !volume,83
  !pan,10
  !vibrato,24,24,64
  !subtranspose,16
  db 48,$7F
  !d6
  !c6
  !loop : dw .sub2CEA : db 1
  db 96
  !d6
  db 48
  !d6
  !c6
  !loop : dw .sub2CEA : db 1
  db 84
  !d6
  !end

.sub2ABC
  db 6,$7F
  !f5
  db 6,$75
  !f5
  db 6,$7F
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !f5
  db 6,$75
  !f5
  db 6,$7F
  !c5
  db 6,$75
  !c5
  db 6,$7F
  !d5
  db 6,$75
  !d5
  db 6,$7F
  !a4
  db 6,$75
  !a4
  db 6,$7F
  !c5
  db 6,$75
  !c5
  db 6,$7F
  !d6
  !c6
  !a5
  !g5
  !f5
  !d5
  !c5
  !a4
  !g4
  !a4
  !c5
  !d5
  !f5
  !g5
  !a5
  !c6
  !d6
  !c6
  !a5
  !g5
  !f5
  !d5
  !c5
  !a4
  !g4
  !a4
  !c5
  !d5
  !f5
  !g5
  !a5
  !c6
  !end

.sub2B0F
  db 12,$75
  !f5
  !rest
  db 12,$7F
  !g5
  !a5
  !g5
  db 6,$75
  !g5
  db 6,$7F
  !f5
  db 12
  !e5
  !c5
  !d5
  db 12,$75
  !d5
  db 72
  !rest
  !end

.sub2B28
  db 12
  !d4
  db 24
  !rest
  db 12
  !c4
  !d4
  db 36
  !rest
  !end

.sub2B32
  db 12,$7F
  %percNote(!instr04-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12,$7F
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  !end

.sub2B47
  db 24,$7F
  !g5
  db 24,$79
  !g5
  db 24,$73
  !g5
  !rest
  db 24,$7F
  !a5
  db 24,$79
  !a5
  db 24,$73
  !a5
  !rest
  !end

.sub2B5C
  db 24,$7F
  !e5
  db 24,$79
  !e5
  db 24,$73
  !e5
  !rest
  db 24,$7F
  !f5
  db 24,$79
  !f5
  db 24,$73
  !f5
  !rest
  !end

.sub2B71
  db 24,$7F
  !c5
  db 24,$79
  !c5
  db 24,$73
  !c5
  !rest
  db 24,$7F
  !d5
  db 24,$79
  !d5
  db 24,$73
  !d5
  !rest
  !end

.sub2B86
  db 6
  !d6
  db 6,$75
  !c6
  db 6,$7F
  !d6
  !rest
  db 12
  !d6
  !f6
  db 24
  !g6
  db 12
  !f6
  !g6
  db 24
  !a6
  db 12
  !a6
  !c7
  db 24
  !g6
  db 12
  !a6
  !g6
  db 6
  !f6
  db 6,$75
  !g6
  db 6,$7F
  !f6
  !rest
  db 12
  !f6
  !a6
  db 42
  !e6
  db 6,$75
  !e6
  db 6,$7F
  !f6
  db 6,$75
  !g6
  db 6,$7F
  !f6
  !rest
  db 12
  !d6
  !f6
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !a6
  !g6
  db 6
  !f6
  db 6,$75
  !g6
  db 6,$7F
  !f6
  !rest
  db 12
  !d6
  !f6
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 6
  !a6
  !g6
  !f6
  db 6,$75
  !g6
  db 6,$7F
  !f6
  !rest
  db 12
  !d6
  !f6
  db 24
  !g6
  db 12
  !e6
  !c6
  db 72
  !d6
  db 12,$75
  !d6
  !rest
  db 36,$7F
  !d6
  db 6
  !f6
  db 6,$75
  !d6
  db 24,$7F
  !g6
  db 12
  !f6
  !c6
  db 6
  !d6
  db 6,$75
  !c6
  db 6,$7F
  !d6
  !rest
  db 12
  !d6
  !f6
  db 24
  !g6
  db 12
  !f6
  !g6
  db 24
  !a6
  db 12
  !a6
  !c7
  db 24
  !g6
  db 12
  !a6
  !g6
  db 6
  !f6
  db 6,$75
  !g6
  db 6,$7F
  !f6
  !rest
  db 12
  !f6
  !a6
  db 42
  !e6
  db 6,$75
  !e6
  db 6,$7F
  !f6
  db 6,$75
  !g6
  db 6,$7F
  !f6
  !rest
  db 12
  !d6
  !f6
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !a6
  !g6
  db 6
  !f6
  db 6,$75
  !g6
  db 6,$7F
  !f6
  !rest
  db 12
  !d6
  !f6
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 6
  !a6
  !g6
  !f6
  db 6,$75
  !g6
  db 6,$7F
  !f6
  !rest
  db 12
  !d6
  !f6
  db 24
  !g6
  db 12
  !e6
  !c6
  !end

.sub2C69
  db 12
  !as3
  db 24
  !rest
  db 12
  !as3
  !c4
  !rest
  db 24
  !e4
  db 12
  !f4
  db 24
  !rest
  db 12
  !f4
  !e4
  db 36
  !rest
  !end

.sub2C7D
  db 12
  !as3
  db 24
  !rest
  db 12
  !as3
  !a3
  db 36
  !rest
  !end

.sub2C87
  db 12
  !g3
  db 24
  !rest
  db 12
  !g3
  !c4
  !rest
  db 24
  !c4
  db 12
  !d4
  db 24
  !rest
  db 12
  !c4
  !d4
  !g3
  !a3
  !c4
  !end

.sub2C9C
  db 12,$7F
  %percNote(!instr04-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 12,$79
  %percNote(!instr06-!instr04)
  !end

.sub2CB1
  db 12,$75
  !e5
  db 12,$7F
  !f5
  !f5
  !rest
  !e5
  !rest
  !e5
  db 12,$75
  !e5
  !rest
  db 12,$7F
  !f5
  !f5
  !rest
  !e5
  !rest
  !e5
  !e5
  !end

.sub2CCA
  db 12,$75
  !c5
  db 12,$7F
  !d5
  !d5
  !rest
  !c5
  !rest
  !c5
  db 12,$75
  !c5
  !rest
  db 12,$7F
  !d5
  !d5
  !rest
  !c5
  !rest
  !c5
  !c5
  !end

.sub2CE3
  db 72
  !rest
  db 24
  %percNote(!instr07-!instr04)
  db 96
  !rest
  !end

.sub2CEA
  db 72
  !a5
  db 24
  !f5
  !g5
  !a5
  !f5
  !g5
  db 96
  !d5
  db 48
  !d6
  !c6
  !a5
  db 24
  !d6
  !f6
  !g6
  !a6
  !f6
  !e6
  !end

.sub2D00
  !d6
  !d6
  !c6
  !c6
  !d6
  db 12,$75
  !d6
  db 24
  !rest
  db 12,$7F
  !g6
  !g6
  !g6
  !f6
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c6
  !c6
  !d6
  !d6
  !c6
  !c6
  !d6
  db 12,$75
  !d6
  db 24
  !rest
  db 12,$7F
  !d6
  db 12,$75
  !d6
  !rest
  db 12,$7F
  !c6
  !d6
  db 12,$75
  !d6
  db 12,$7F
  !a5
  !c6
  !d6
  !d6
  !c6
  !c6
  !d6
  db 12,$75
  !d6
  db 12,$7F
  !f6
  db 12,$75
  !f6
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !g6
  !f6
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !f6
  !g6
  !a6
  !a6
  !g6
  !g6
  !a6
  db 12,$75
  !a6
  db 24
  !rest
  !end

.sub2D5F
  !dynamicPan,96,5
  db 6,$7F
  !c6
  db 6,$75
  !g6
  db 6,$7F
  !f6
  db 6,$75
  !c6
  db 6,$7F
  !a6
  db 6,$75
  !f6
  db 6,$7F
  !c7
  db 6,$75
  !a6
  db 6,$7F
  !f7
  db 6,$75
  !c7
  db 6,$7F
  !a6
  db 6,$75
  !f7
  db 6,$7F
  !c7
  db 6,$75
  !a6
  db 6,$7F
  !f6
  db 6,$75
  !c7
  !dynamicPan,96,15
  db 6,$7F
  !as5
  db 6,$75
  !c7
  db 6,$7F
  !d6
  db 6,$75
  !as5
  db 6,$7F
  !g6
  db 6,$75
  !d6
  db 6,$7F
  !as6
  db 6,$75
  !g6
  db 6,$7F
  !c6
  db 6,$75
  !as6
  db 6,$7F
  !e6
  db 6,$75
  !g6
  db 6,$7F
  !g6
  db 6,$75
  !e6
  db 6,$7F
  !c7
  db 6,$75
  !g6
  !dynamicPan,96,5
  db 6,$7F
  !d6
  db 6,$75
  !c7
  db 6,$7F
  !f6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 6,$75
  !f6
  db 6,$7F
  !d7
  db 6,$75
  !a6
  db 6,$7F
  !c6
  db 6,$75
  !d7
  db 6,$7F
  !e6
  db 6,$75
  !c6
  db 6,$7F
  !g6
  db 6,$75
  !e6
  db 6,$7F
  !c7
  db 6,$75
  !g6
  !dynamicPan,96,15
  db 6,$7F
  !d6
  db 6,$75
  !c7
  db 6,$7F
  !f6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 6,$75
  !f6
  db 6,$7F
  !d7
  db 6,$75
  !a6
  db 6,$7F
  !c6
  db 6,$75
  !d7
  db 6,$7F
  !e6
  db 6,$75
  !c6
  db 6,$7F
  !g6
  db 6,$75
  !e6
  db 6,$7F
  !c7
  db 6,$75
  !g6
  !dynamicPan,96,5
  db 6,$7F
  !d6
  db 6,$75
  !c7
  db 6,$7F
  !f6
  db 6,$75
  !d6
  db 6,$7F
  !as6
  db 6,$75
  !f6
  db 6,$7F
  !d7
  db 6,$75
  !as6
  db 6,$7F
  !f7
  db 6,$75
  !d7
  db 6,$7F
  !as6
  db 6,$75
  !f7
  db 6,$7F
  !d7
  db 6,$75
  !as6
  db 6,$7F
  !f6
  db 6,$75
  !d7
  !dynamicPan,96,15
  db 6,$7F
  !c6
  db 6,$75
  !f6
  db 6,$7F
  !e6
  db 6,$75
  !c6
  db 6,$7F
  !g6
  db 6,$75
  !e6
  db 6,$7F
  !c7
  db 6,$75
  !g6
  db 6,$7F
  !c6
  db 6,$75
  !c7
  db 6,$7F
  !e6
  db 6,$75
  !c6
  db 6,$7F
  !g6
  db 6,$75
  !e6
  db 6,$7F
  !c7
  db 6,$75
  !g6
  !dynamicPan,96,5
  db 6,$7F
  !d6
  db 6,$75
  !c7
  db 6,$7F
  !f6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 6,$75
  !f6
  db 6,$7F
  !d7
  db 6,$75
  !a6
  db 6,$7F
  !f7
  db 6,$75
  !d7
  db 6,$7F
  !d7
  db 6,$75
  !f7
  db 6,$7F
  !a6
  db 6,$75
  !d7
  db 6,$7F
  !f6
  db 6,$75
  !a6
  !end

.sub2EC5
  db 24
  !f3
  db 12
  !rest
  !f3
  db 24
  !c4
  !f3
  !g3
  db 12
  !rest
  !g3
  db 24
  !a3
  db 12
  !rest
  !a3
  db 24
  !d4
  db 12
  !rest
  !d4
  !c4
  !g3
  !a3
  !c4
  db 24
  !d4
  db 12
  !rest
  !d4
  db 24
  !c4
  db 12
  !rest
  !c4
  db 24
  !as3
  db 12
  !rest
  !as3
  db 24
  !as3
  db 12
  !f3
  !g3
  db 24
  !a3
  db 12
  !rest
  !a3
  !a3
  !e3
  !g3
  !a3
  db 24
  !d4
  db 12
  !rest
  !d4
  db 24
  !d4
  !c4
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
