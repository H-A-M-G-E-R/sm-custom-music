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
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr03,$FF,$F2,$B8,$03,$30
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$FF,$E0,$B8,$04,$B0
  db !instr07,$FF,$F4,$B8,$03,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+27
  dw Sample03,Sample03+1791
  dw Sample05,Sample05+1116
  dw Sample06,Sample06+1773
  dw Sample07,Sample07+1152
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample03: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample05: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample06: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample07: incbin "Sample_275308c417a62bf632cb4fd35402d354.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2587

Tracker2587:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, 0, .pattern2_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr05
  !musicVolume,255
  !tempo,31
  !end

.pattern1_0
  !instr,!instr00
  !volume,125
  !vibrato,24,24,96
  !pan,11
  db 6,$7F
  !b6
  !a6
  !g6
  !f6
  db 72
  !e6
  db 18,$75
  !e6
  db 6
  !rest
  db 1
  !rest
  !end

.pattern1_1
  db 24
  !rest
  !instr,!instr02
  !volume,125
  !pan,13
  !subtranspose,29
  db 48,$7F
  !e5
  !pitchSlide,30,18 : !e6
  !tie
  db 1
  !rest

.pattern1_2
  db 24
  !rest
  !instr,!instr01
  !volume,166
  db 72,$7F
  !e3
  db 24
  !e3
  db 1
  !rest

.pattern1_3
  db 24
  !rest
  db 96
  !rest
  db 1
  !rest

.pattern1_4
  db 24
  !rest
  !instr,!instr02
  !volume,125
  !pan,7
  !subtranspose,29
  db 48,$7F
  !b4
  !pitchSlide,30,18 : !b5
  !tie
  db 1
  !rest

.pattern1_5
  db 24
  !rest
  !instr,!instr03
  !volume,83
  !subtranspose,54
  db 6,$7F
  !b7
  !a7
  !f7
  !e7
  !c7
  !b6
  !a6
  !f6
  !e6
  db 6,$79
  !a6
  !f6
  !e6
  db 6,$73
  !a6
  !f6
  !e6
  !rest
  db 1
  !rest

.pattern1_6
  db 24
  !rest
  db 1
  !rest
  !instr,!instr03
  !volume,83
  !subtranspose,62
  db 6,$7F
  !b7
  !a7
  !f7
  !e7
  !c7
  !b6
  !a6
  !f6
  !e6
  db 6,$79
  !a6
  !f6
  !e6
  db 6,$73
  !a6
  !f6
  !e6
  !rest

.pattern1_7
  db 24
  !rest
  !instr,!instr00
  !volume,83
  !pan,9
  !subtranspose,8
  !vibrato,24,24,96
  db 6,$7F
  !b6
  !a6
  !g6
  !f6
  db 72
  !e6
  db 1
  !rest

.pattern2_0
  !volume,104
  db 72,$7F
  !a6
  db 6
  !a6
  !b6
  !a6
  !g6
  db 48
  !e6
  db 6
  !d6
  !c6
  !d6
  !e6
  !g6
  !e6
  !d6
  !c6
  db 96
  !a5
  !dynamicVolume,72,42
  db 72
  !tie
  db 24
  !rest
  !volume,104
  db 72
  !a6
  db 6
  !a6
  !b6
  !a6
  !g6
  !loop : dw .sub28A7 : db 1
  !volume,104
  db 18
  !a6
  !c7
  db 12
  !g6
  db 48
  !a6
  db 24
  !tie
  !dynamicVolume,48,42
  db 48
  !tie
  !volume,125
  db 24
  !c7
  !loop : dw .sub28D8 : db 1
  db 48
  !tie
  db 6,$75
  !a7
  db 6,$7F
  !g7
  db 6,$75
  !a7
  !rest
  db 24,$7F
  !g7
  !end

.pattern2_1
  !instr,!instr03
  !volume,94
  !pan,10
  !subtranspose,54
  db 6,$7F
  !a5
  !rest
  !e5
  !g5
  !rest
  !e5
  !b5
  !e5
  !a5
  db 6,$75
  !b5
  db 6,$7F
  !e5
  !g5
  !rest
  !e5
  !b5
  !e5
  !loop : dw .sub28EE : db 3
  !a5
  db 6,$75
  !b5
  db 6,$7F
  !e5
  !g5
  !c6
  !d6
  !e6
  !g6
  !a6
  db 6,$79
  !e6
  !g6
  !a6
  db 6,$73
  !e6
  !g6
  !a6
  !rest
  !volume,83
  db 6,$7F
  !c7
  !d7
  !f7
  !g7
  !a7
  !rest
  db 6,$79
  !c7
  !d7
  !f7
  !g7
  !a7
  !rest
  db 6,$73
  !c7
  !d7
  !f7
  !g7
  db 6,$7F
  !c7
  !d7
  !f7
  !g7
  !a7
  !rest
  db 6,$79
  !c7
  !d7
  !f7
  !g7
  !a7
  !rest
  db 6,$73
  !c7
  !d7
  !f7
  !g7
  !loop : dw .sub2927 : db 2
  !loop : dw .sub293E : db 2
  !loop : dw .sub2927 : db 2

.pattern2_2
  db 18,$7F
  !a3
  !a3
  db 12
  !g3
  db 18
  !e3
  !e3
  db 12
  !g3
  !loop : dw .sub2955 : db 3
  db 18
  !a3
  !a3
  db 12
  !g3
  !a3
  !rest
  db 24
  !e3
  !loop : dw .sub2969 : db 2
  !loop : dw .sub2974 : db 2
  !loop : dw .sub2969 : db 2
  db 18
  !a3
  !a3
  db 12
  !g3
  db 18
  !e3
  !e3
  db 12
  !g3
  db 18
  !a3
  !a3
  db 12
  !g3
  db 6
  !a3
  !e3
  db 12
  !rest
  db 24
  !e3

.pattern2_3
  !volume,198
  db 18,$7F
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !loop : dw .sub297F : db 3
  db 18
  %percNote(!instr05-!instr05)
  db 6
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !instr,!instr07
  !pan,7
  db 6
  !d5
  !d5
  !pan,10
  !b4
  !b4
  !pan,13
  !gs4
  !gs4
  !pan,10
  db 18
  %percNote(!instr05-!instr05)
  db 6
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !loop : dw .sub2997 : db 7

.pattern2_4
  !instr,!instr02
  !volume,125
  !pan,12
  !vibrato,24,24,96
  !subtranspose,29
  db 96,$7F
  !a5
  db 48
  !a5
  !g5
  db 96
  !a5
  db 48
  !a5
  !g5
  db 96
  !a5
  db 48
  !a5
  !g5
  !a5
  !g5
  !a5
  db 12
  !a5
  db 6,$75
  !a5
  db 12
  !a5
  db 18
  !rest
  db 96,$7F
  !a4
  !pitchSlide,30,18 : !a5
  !tie
  !a4
  !pitchSlide,30,18 : !a5
  db 24
  !tie
  !e5
  !d5
  !e5
  db 96
  !a4
  !pitchSlide,30,18 : !a5
  !tie
  !a4
  !pitchSlide,30,18 : !a5
  !pitchSlide,30,18 : !a6
  db 54
  !tie
  db 12
  !g5
  db 6
  !rest
  db 24
  !g5

.pattern2_5
  !instr,!instr02
  !volume,125
  !pan,8
  !vibrato,24,24,96
  !subtranspose,29
  db 96,$7F
  !e5
  db 48
  !e5
  !d5
  db 96
  !e5
  db 48
  !e5
  !d5
  db 96
  !e5
  db 48
  !e5
  !d5
  !e5
  !d5
  !e5
  db 12
  !e5
  db 6,$75
  !e5
  db 12
  !e5
  db 18
  !rest
  db 96,$7F
  !f4
  !pitchSlide,30,18 : !f5
  !tie
  !e4
  !pitchSlide,30,18 : !e5
  db 24
  !tie
  !c5
  !b4
  !c5
  db 96
  !f4
  !pitchSlide,30,18 : !f5
  !tie
  !e4
  !pitchSlide,30,18 : !e5
  !pitchSlide,30,18 : !e6
  db 54
  !tie
  db 12
  !d5
  db 6
  !rest
  db 24
  !d5

.pattern2_7
  db 24
  !rest
  !volume,83
  db 72,$7F
  !a6
  db 6
  !a6
  !b6
  !a6
  !g6
  db 48
  !e6
  db 6
  !d6
  !c6
  !d6
  !e6
  !g6
  !e6
  !d6
  !c6
  db 96
  !a5
  !dynamicVolume,72,42
  db 72
  !tie
  db 24
  !rest
  !volume,83
  db 72
  !a6
  db 6
  !a6
  !b6
  !a6
  !g6
  !loop : dw .sub28A7 : db 1
  !volume,83
  db 18
  !a6
  !c7
  db 12
  !g6
  db 48
  !a6
  db 24
  !tie
  !dynamicVolume,48,42
  db 48
  !tie
  !volume,83
  db 24
  !c7
  !loop : dw .sub28D8 : db 1
  db 24
  !tie
  db 6,$75
  !a7
  db 6,$7F
  !e7
  db 6,$75
  !a7
  !rest
  db 24,$7F
  !e7

.sub28A7
  db 48
  !e6
  db 6
  !d6
  !c6
  !d6
  !e6
  !g6
  !e6
  !d6
  !c6
  db 24
  !a5
  db 6
  !g5
  !a5
  !c6
  !d6
  db 24
  !e6
  db 6
  !e6
  !d6
  !e6
  !g6
  db 48
  !a6
  db 24,$75
  !a6
  db 24,$7F
  !c7
  db 18
  !d7
  !a6
  db 12
  !c7
  db 48
  !d7
  !tie
  !dynamicVolume,36,55
  db 36
  !tie
  db 12
  !rest
  !end

.sub28D8
  db 18
  !d7
  !e7
  db 12
  !c7
  db 48
  !d7
  db 24
  !tie
  db 6
  !d7
  !c7
  !d7
  !e7
  db 18
  !g7
  !e7
  db 12
  !g7
  db 96
  !a7
  !end

.sub28EE
  !a5
  db 6,$75
  !b5
  db 6,$7F
  !e5
  !g5
  !rest
  !e5
  !b5
  !e5
  !a5
  db 6,$75
  !b5
  db 6,$7F
  !g5
  db 6,$75
  !a5
  db 6,$7F
  !e5
  db 6,$75
  !g5
  db 6,$7F
  !g5
  db 6,$75
  !e5
  db 6,$7F
  !a5
  !rest
  !e5
  !g5
  !rest
  !e5
  !b5
  !e5
  !a5
  db 6,$75
  !b5
  db 6,$7F
  !e5
  !g5
  !rest
  !e5
  !b5
  !e5
  !end

.sub2927
  db 6,$7F
  !c7
  !d7
  !e7
  !g7
  !a7
  !rest
  db 6,$79
  !c7
  !d7
  !e7
  !g7
  !a7
  !rest
  db 6,$73
  !c7
  !d7
  !e7
  !g7
  !end

.sub293E
  db 6,$7F
  !c7
  !d7
  !f7
  !g7
  !a7
  !rest
  db 6,$79
  !c7
  !d7
  !f7
  !g7
  !a7
  !rest
  db 6,$73
  !c7
  !d7
  !f7
  !g7
  !end

.sub2955
  db 18
  !a3
  !a3
  db 12
  !g3
  !e3
  !d3
  !e3
  !g3
  db 18
  !a3
  !a3
  db 12
  !g3
  db 18
  !e3
  !e3
  db 12
  !g3
  !end

.sub2969
  db 18
  !d4
  !d4
  db 12
  !c4
  db 18
  !a3
  !a3
  db 12
  !c4
  !end

.sub2974
  db 18
  !a3
  !a3
  db 12
  !g3
  db 18
  !e3
  !e3
  db 12
  !g3
  !end

.sub297F
  db 18
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !instr,!instr07
  !pan,13
  db 24
  !gs4
  !pan,10
  db 18
  %percNote(!instr05-!instr05)
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !end

.sub2997
  db 18
  %percNote(!instr05-!instr05)
  db 6
  %percNote(!instr05-!instr05)
  db 12
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
