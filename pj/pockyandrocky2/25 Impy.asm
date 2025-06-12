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
  db !instr05,$FF,$E0,$B8,$04,$B0
  db !instr06,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+1791
  dw Sample03,Sample03+27
  dw Sample04,Sample04+1116
  dw Sample05,Sample05+1773
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
  dw Tracker2402

Tracker2402:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7
.pattern2: dw .pattern2_0, .pattern2_1, .pattern2_2, .pattern2_3, .pattern2_4, .pattern2_5, .pattern2_6, .pattern2_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr04
  !musicVolume,255
  !tempo,30
  !end

.pattern1_0
  !instr,!instr03
  !volume,104
  !pan,7
  !subtranspose,29
  db 96,$7F
  !e5
  !tie
  !tie
  !tie
  !end

.pattern1_1
  !instr,!instr02
  !volume,146
  !subtranspose,54
  db 12,$7A
  !b4
  !d5
  db 12,$7B
  !e5
  db 6,$4A
  !b4
  db 12,$3A
  !d5
  db 18,$7A
  !e5
  db 12
  !b4
  !d5
  !loop : dw .sub27D5 : db 3
  !end

.pattern1_2
  !instr,!instr01
  !volume,187
  db 36,$4B
  !e3
  db 36,$0B
  !e3
  db 24,$5B
  !e3
  !loop : dw .sub27E7 : db 3
  !end

.pattern1_3
  !volume,198
  !pan,10
  db 24,$7F
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  db 18
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  !loop : dw .sub27F1 : db 2
  db 24
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  db 18
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !end

.pattern1_4
  db 96
  !rest
  !instr,!instr03
  !volume,104
  !pan,9
  !subtranspose,29
  db 96,$7F
  !b5
  !tie
  !tie
  !end

.pattern1_5
  db 96
  !rest
  !rest
  !instr,!instr03
  !volume,104
  !pan,11
  !subtranspose,29
  db 96,$7F
  !d6
  !tie
  !end

.pattern1_6
  !volume,198
  !pan,10
  db 12,$75
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  !loop : dw .sub27FC : db 2
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 18
  %percNote(!instr06-!instr04)
  !end

.pattern1_7
  db 96
  !rest
  !rest
  !rest
  !instr,!instr03
  !volume,104
  !pan,13
  !subtranspose,29
  db 96,$7F
  !e6
  !end

.pattern2_0
  !instr,!instr00
  !volume,104
  !pan,11
  !vibrato,24,24,72
  !subtranspose,0
  db 96,$7C
  !f6
  db 84
  !tie
  db 6,$7B
  !e6
  !d6
  db 96
  !e6
  db 12
  !rest
  db 6,$5A
  !b5
  !rest
  db 6,$53
  !b5
  db 6,$5A
  !b5
  !rest
  db 6,$53
  !b5
  db 18,$7A
  !b5
  db 6,$5A
  !b5
  db 6,$73
  !b5
  db 6,$53
  !b5
  db 12
  !rest
  db 96,$7B
  !a6
  !pitchSlide,2,1 : !b6
  !loop : dw .sub2811 : db 1
  db 12
  !rest
  db 6,$5A
  !e6
  !rest
  db 6,$53
  !e6
  db 6,$5A
  !e6
  !rest
  db 6,$53
  !e6
  db 18,$7A
  !e6
  db 6,$5A
  !e6
  db 6,$73
  !e6
  db 6,$53
  !e6
  db 12
  !rest
  db 6,$6D
  !f6
  db 6,$7B
  !e6
  !d6
  db 6,$6A
  !b5
  db 6,$4B
  !d6
  !rest
  db 10,$7C
  !e6
  db 14
  !rest
  db 36,$7B
  !f6
  !loop : dw .sub281C : db 1
  db 12,$3D
  !e6
  db 12,$3B
  !e6
  !d6
  db 36,$7B
  !e6
  db 24
  !rest
  !end

.pattern2_1
  !pan,10
  db 12,$7A
  !b4
  !d5
  db 12,$7B
  !e5
  db 6,$4A
  !b4
  db 12,$3A
  !d5
  db 18,$7A
  !e5
  db 12
  !b4
  !d5
  !loop : dw .sub27D5 : db 7
  !pan,11
  db 18,$79
  !f5
  db 18,$73
  !f5
  db 18,$79
  !f5
  db 18,$73
  !f5
  db 24
  !rest
  db 18,$79
  !e5
  db 18,$73
  !e5
  db 18,$79
  !e5
  db 18,$73
  !e5
  !rest
  db 6,$79
  !e5
  db 18
  !f5
  db 18,$73
  !f5
  db 18,$79
  !f5
  db 18,$73
  !f5
  !rest
  db 6,$79
  !f5
  db 12
  !e5
  !e5
  !d5
  db 18
  !e5
  db 18,$73
  !e5
  db 24
  !rest
  !end

.pattern2_2
  !loop : dw .sub27E7 : db 8
  db 36,$0C
  !b3
  db 48,$7C
  !b3
  db 12,$6C
  !b3
  db 36,$0D
  !e3
  db 48,$6C
  !e3
  db 12,$6A
  !e3
  db 36,$0A
  !f3
  db 48,$6A
  !f3
  db 12,$7A
  !f3
  db 12,$1A
  !e3
  db 12,$7A
  !e3
  db 12,$5A
  !d3
  db 24,$0A
  !e3
  db 36,$6A
  !e3
  !end

.pattern2_3
  db 24,$7F
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  db 18
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  !loop : dw .sub27F1 : db 6
  db 24
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  db 18
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 18
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 18
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  !end

.pattern2_4
  !instr,!instr01
  !volume,104
  !pan,13
  !subtranspose,0
  db 96,$7C
  !e6
  !e6
  !e6
  !e6
  !e6
  db 84
  !f6
  db 12
  !d6
  db 96
  !e6
  !e6
  !instr,!instr03
  !volume,166
  !pan,10
  !subtranspose,29
  db 96,$77
  !b5
  !e6
  db 96,$78
  !f6
  db 12,$48
  !e6
  db 12,$68
  !e6
  !d6
  db 60,$78
  !e6
  !end

.pattern2_5
  !instr,!instr01
  !volume,104
  !pan,7
  !subtranspose,0
  db 96,$7C
  !b5
  !b5
  !b5
  !b5
  !b5
  db 84
  !b5
  db 12
  !b5
  db 96
  !b5
  !b5
  !instr,!instr02
  !volume,146
  !pan,9
  !subtranspose,54
  db 18,$79
  !b4
  db 18,$73
  !b4
  db 18,$79
  !b4
  db 18,$73
  !b4
  db 24
  !rest
  db 18,$79
  !b4
  db 18,$73
  !b4
  db 18,$79
  !b4
  db 18,$73
  !b4
  !rest
  db 6,$79
  !b4
  db 18
  !b4
  db 18,$73
  !b4
  db 18,$79
  !b4
  db 18,$73
  !b4
  !rest
  db 6,$79
  !b4
  db 12
  !b4
  !b4
  !a4
  db 18
  !b4
  db 18,$73
  !b4
  db 24
  !rest
  !end

.pattern2_6
  db 12,$79
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  !loop : dw .sub27FC : db 6
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  !end

.pattern2_7
  db 12
  !rest
  !instr,!instr00
  !volume,83
  !pan,9
  !vibrato,24,24,72
  !subtranspose,16
  db 96,$7C
  !f6
  db 84
  !tie
  db 6,$7B
  !e6
  !d6
  db 96
  !e6
  !volume,146
  db 6,$7A
  !e5
  !rest
  db 6,$53
  !e5
  db 6,$5A
  !e5
  !rest
  db 6,$53
  !e5
  db 18,$7A
  !e5
  db 6,$5A
  !e5
  db 6,$73
  !e5
  db 6,$53
  !e5
  db 12
  !rest
  !volume,94
  !rest
  db 96,$7B
  !a6
  !pitchSlide,2,1 : !b6
  !loop : dw .sub2811 : db 1
  !volume,146
  db 6,$5A
  !b5
  !rest
  db 6,$53
  !b5
  db 6,$5A
  !b5
  !rest
  db 6,$53
  !b5
  db 18,$7A
  !b5
  db 6,$5A
  !b5
  db 6,$73
  !b5
  db 6,$53
  !b5
  db 12
  !rest
  !volume,94
  !rest
  db 6,$6D
  !f6
  db 6,$7B
  !e6
  !d6
  db 6,$6A
  !b5
  db 6,$4B
  !d6
  !rest
  db 10,$7C
  !e6
  db 14
  !rest
  db 36,$7B
  !f6
  !loop : dw .sub281C : db 1
  db 12,$3D
  !e6
  db 12,$3B
  !e6
  !d6
  db 36,$7B
  !e6
  db 6
  !rest
  !rest
  !end

.sub27D5
  !b4
  !d5
  db 12,$7B
  !e5
  db 6,$4A
  !b4
  db 12,$3A
  !d5
  db 18,$7A
  !e5
  db 12
  !b4
  !d5
  !end

.sub27E7
  db 36,$4B
  !e3
  db 36,$0B
  !e3
  db 24,$5B
  !e3
  !end

.sub27F1
  db 24
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  db 18
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  !end

.sub27FC
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  %percNote(!instr06-!instr04)
  db 6
  %percNote(!instr06-!instr04)
  !end

.sub2811
  db 72
  !tie
  db 12
  !a6
  db 12,$6A
  !f6
  db 96,$7B
  !e6
  !end

.sub281C
  db 6,$6C
  !e6
  db 6,$5A
  !d6
  db 6,$7B
  !b5
  db 6,$69
  !a5
  db 6,$4B
  !b5
  !rest
  db 12,$5B
  !d6
  !rest
  db 36,$7A
  !e6
  db 6,$5C
  !d6
  db 6,$6B
  !b5
  db 6,$6A
  !a5
  db 6,$69
  !f5
  db 6,$6B
  !d6
  !b5
  db 6,$69
  !a5
  !f5
  db 6,$6B
  !d6
  db 6,$6A
  !b5
  !a5
  !f5
  db 6,$6B
  !d6
  db 6,$6A
  !b5
  !a5
  !f5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
