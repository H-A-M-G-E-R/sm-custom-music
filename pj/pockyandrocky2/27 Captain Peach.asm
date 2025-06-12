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
  db !instr00,$FF,$E1,$B8,$02,$40
  db !instr01,$FF,$E8,$B8,$02,$30
  db !instr02,$8F,$EE,$B8,$07,$F0
  db !instr03,$FF,$E0,$B8,$02,$40
  db !instr04,$8F,$F0,$B8,$03,$F0
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$FF,$E0,$B8,$04,$B0
  db !instr07,$FF,$F4,$B8,$03,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1260
  dw Sample01,Sample01+1233
  dw Sample02,Sample02+153
  dw Sample03,Sample03+801
  dw Sample04,Sample04+2421
  dw Sample05,Sample05+1116
  dw Sample06,Sample06+1773
  dw Sample07,Sample07+1152
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_e0cd4780e5debcb8f2c88f0c931af1a1.brr"
  Sample01: incbin "Sample_109c5729f128f87a93842e99c2b20c67.brr"
  Sample02: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample03: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample04: incbin "Sample_ad13fd1d1be59b4022dd8f5a20195d63.brr"
  Sample05: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample06: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample07: incbin "Sample_902a1cfa6206b16ff325e6df14f7c7d7.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr05
  !musicVolume,255
  !tempo,31
  !volume,125
  !pan,10
  !instr,!instr00
  !vibrato,24,24,72
  db 28,$7F
  !d6
  db 12
  !rest
  db 8,$4F
  !e6
  db 8,$6F
  !d6
  !rest
  db 8,$7F
  !d6
  db 20
  !b5
  db 4
  !rest
  !loop : dw .sub2A50 : db 1
  db 16
  !rest
  db 8,$2F
  !d6
  !d6
  !rest
  !d6
  db 8,$4F
  !d6
  !rest
  db 16,$7F
  !d6
  db 8
  !rest
  db 8,$5F
  !d6
  !end

.pattern0_1
  !volume,146
  !pan,6
  !instr,!instr01
  !subtranspose,88
  db 8,$78
  !g4
  db 16
  !rest
  db 8
  !b4
  db 40
  !rest
  db 8
  !d5
  db 16
  !rest
  !vibrato,0,24,176
  db 16,$68
  !e5
  db 8
  !ds5
  db 16
  !d5
  db 8
  !cs5
  db 42,$78
  !c5
  db 6
  !rest
  !endVibrato
  db 24
  !rest
  db 9,$38
  !d6
  db 15
  !rest
  db 8,$78
  !d6
  db 32
  !rest
  db 8,$28
  !d6
  db 16
  !rest
  db 8,$08
  !a5
  db 8,$58
  !fs6
  !rest
  db 8,$08
  !a5
  db 8,$78
  !fs6
  !rest
  db 24,$58
  !d6
  db 8
  !fs6
  !end

.pattern0_2
  !volume,166
  !pan,10
  !instr,!instr02
  db 24,$2F
  !g3
  !d4
  db 20
  !g3
  db 4
  !rest
  db 12,$7F
  !d4
  !rest
  db 24,$5F
  !c4
  db 16
  !c4
  db 8
  !c4
  db 48,$7F
  !c4
  db 96,$6F
  !d4
  db 88
  !d4
  db 6,$7F
  !d4
  db 2
  !rest
  !end

.pattern0_3
  !volume,198
  !pan,10
  db 24,$7F
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 40
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 88
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 64
  %percNote(!instr06-!instr05)
  !instr,!instr07
  !pan,13
  db 8
  !e5
  !pan,10
  db 16
  !c5
  !pan,7
  db 8
  !gs4
  !end

.pattern0_4
  db 96
  !rest
  !rest
  !rest
  db 16
  !rest
  !instr,!instr03
  !volume,146
  !pan,10
  !vibrato,24,24,96
  db 8,$19
  !fs5
  db 8,$49
  !fs5
  !rest
  db 8,$19
  !fs5
  db 16,$69
  !fs5
  db 24,$59
  !g5
  db 8,$69
  !a5
  !end

.pattern0_5
  !volume,146
  !pan,14
  !instr,!instr01
  !subtranspose,88
  db 24
  !rest
  db 8,$78
  !d5
  db 16
  !rest
  db 8
  !g4
  db 16
  !rest
  db 8
  !b4
  db 16
  !rest
  !vibrato,0,24,176
  db 16,$68
  !g5
  db 8
  !fs5
  db 16
  !f5
  db 8
  !e5
  db 44,$78
  !ds5
  db 4
  !rest
  !endVibrato
  db 40
  !rest
  db 6,$28
  !d6
  db 18
  !rest
  db 24,$18
  !d6
  db 8
  !rest
  db 16
  !rest
  db 8
  !fs6
  db 8,$58
  !a5
  !rest
  db 8,$18
  !fs6
  db 8,$58
  !d6
  !rest
  db 24
  !fs6
  db 8,$68
  !d6
  !end

.pattern0_7
  db 16
  !rest
  !volume,83
  !subtranspose,8
  !pan,10
  !instr,!instr00
  !vibrato,24,24,72
  db 28,$7F
  !d6
  db 12
  !rest
  db 8,$4F
  !e6
  db 8,$6F
  !d6
  !rest
  db 8,$7F
  !d6
  db 20
  !b5
  db 4
  !rest
  !loop : dw .sub2A50 : db 1
  db 16
  !rest
  db 8,$2F
  !d6
  !d6
  !rest
  !d6
  db 8,$4F
  !d6
  !rest
  db 16,$7F
  !d6
  !end

.pattern1_0
  db 15,$7F
  !e6
  db 9
  !rest
  db 8
  !e6
  !rest
  db 14
  !c6
  db 10
  !rest
  db 28
  !g5
  db 4
  !rest
  !loop : dw .sub2A77 : db 1
  !g6
  !rest
  !fs6
  !rest
  db 10
  !e6
  db 6
  !rest
  db 28
  !fs6
  db 4
  !rest
  !end

.pattern1_1
  db 24
  !rest
  db 8,$78
  !g5
  !rest
  db 8,$72
  !g5
  db 16
  !rest
  db 32,$78
  !g5
  db 16,$72
  !g5
  db 8
  !rest
  db 8,$78
  !g5
  !rest
  db 8,$72
  !g5
  db 16
  !rest
  db 28,$78
  !g5
  db 4,$72
  !g5
  db 12
  !tie
  !rest
  db 8,$78
  !fs5
  !rest
  db 8,$72
  !fs5
  db 16
  !rest
  db 32,$78
  !fs5
  db 2
  !tie
  db 16,$72
  !fs5
  db 6
  !rest
  db 8,$78
  !fs5
  !rest
  db 8,$72
  !fs5
  db 16
  !rest
  db 32,$78
  !fs5
  db 2
  !tie
  db 16,$72
  !fs5
  db 6
  !rest
  db 8,$78
  !e5
  !rest
  db 8,$72
  !e5
  db 16
  !rest
  db 28,$78
  !e5
  db 4,$72
  !e5
  db 12
  !tie
  !rest
  db 8,$78
  !e5
  !rest
  db 8,$72
  !e5
  db 16
  !rest
  db 28,$78
  !e5
  db 4,$72
  !e5
  db 12
  !tie
  !rest
  db 16,$58
  !b4
  db 16,$52
  !b4
  !rest
  db 16,$38
  !c5
  db 8,$32
  !c5
  !tie
  db 16
  !rest
  db 19,$78
  !d5
  db 16,$72
  !d5
  db 13
  !rest
  db 19,$78
  !d5
  db 5,$72
  !d5
  db 11
  !tie
  db 13
  !rest
  db 8,$58
  !g5
  !rest
  db 8,$52
  !g5
  db 16
  !rest
  db 32,$78
  !g5
  db 2
  !tie
  db 16,$72
  !g5
  db 6
  !rest
  db 8,$28
  !g5
  !rest
  db 8,$22
  !g5
  db 16
  !rest
  db 32,$78
  !g5
  db 2
  !tie
  db 16,$72
  !g5
  db 6
  !rest
  db 8,$48
  !fs5
  !rest
  db 8,$42
  !fs5
  db 16
  !rest
  db 32,$78
  !fs5
  db 2
  !tie
  db 16,$72
  !fs5
  db 6
  !rest
  db 8,$28
  !fs5
  !rest
  db 8,$22
  !fs5
  db 16
  !rest
  db 32,$78
  !fs5
  db 8,$68
  !e5
  !rest
  db 8,$62
  !e5
  db 16
  !rest
  db 50,$78
  !e5
  db 6,$72
  !e5
  db 8,$68
  !fs5
  !rest
  db 8,$62
  !fs5
  db 16
  !rest
  db 56,$78
  !d5
  db 16,$72
  !d5
  db 8
  !rest
  db 8,$78
  !c5
  !rest
  db 8,$72
  !c5
  db 16
  !rest
  db 32,$78
  !e5
  db 2
  !tie
  db 16,$72
  !e5
  db 6
  !rest
  db 8,$68
  !fs5
  !rest
  db 8,$72
  !fs5
  db 16
  !rest
  db 32,$78
  !d5
  !end

.pattern1_2
  !loop : dw .sub2B4B : db 2
  db 40,$1F
  !b3
  db 48,$6F
  !b3
  db 8,$3F
  !b3
  db 40,$1F
  !b3
  db 24,$4F
  !b3
  db 24,$6F
  !b3
  db 8,$3F
  !as3
  !loop : dw .sub2B55 : db 2
  db 48
  !g3
  !a3
  db 24,$5F
  !b3
  !g3
  !a3
  !b3
  !loop : dw .sub2B4B : db 2
  db 40,$1F
  !b3
  db 48,$6F
  !b3
  db 8,$3F
  !b3
  db 40,$0F
  !b3
  db 24,$6F
  !b3
  !b3
  db 8,$3F
  !as3
  db 40,$1F
  !a3
  db 48,$6F
  !a3
  db 8,$3F
  !a3
  db 40,$1F
  !b3
  db 48,$5F
  !b3
  db 8,$3F
  !b3
  db 40,$1F
  !a3
  db 56,$6F
  !a3
  db 40,$1F
  !d4
  db 48,$5F
  !d4
  db 8,$3F
  !d4
  !end

.pattern1_3
  !pan,10
  db 24,$7F
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !loop : dw .sub2B5F : db 2
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 16
  %percNote(!instr05-!instr05)
  !instr,!instr07
  !pan,13
  db 8
  !d5
  !pan,10
  db 16
  !a4
  !pan,7
  db 8
  !e4
  !pan,10
  db 24
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !loop : dw .sub2B5F : db 2
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 16
  %percNote(!instr05-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !loop : dw .sub2B5F : db 2
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 16
  %percNote(!instr05-!instr05)
  !instr,!instr07
  !pan,13
  db 8
  !d5
  !pan,10
  db 16
  !a4
  !pan,7
  db 8
  !e4
  !pan,10
  db 40
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr06-!instr05)
  !instr,!instr07
  !pan,13
  !d5
  !pan,7
  db 8
  !e4
  !pan,10
  db 40
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr06-!instr05)
  !instr,!instr07
  !pan,13
  db 8
  !d5
  !pan,10
  db 16
  !a4
  !pan,7
  db 8
  !e4
  !pan,10
  db 24
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  !end

.pattern1_4
  !instr,!instr03
  db 72,$79
  !g5
  !dynamicVolume,48,104
  db 24
  !tie
  !tie
  db 72
  !rest
  !volume,146
  db 96
  !fs5
  db 16
  !tie
  db 8
  !d6
  db 8,$73
  !fs5
  !d6
  db 8,$19
  !d6
  db 16,$49
  !d6
  db 20,$79
  !b5
  db 4,$73
  !b5
  db 8,$79
  !d6
  db 48
  !c6
  !b5
  !a5
  db 17
  !b5
  db 7,$73
  !b5
  db 17,$79
  !c6
  db 7,$73
  !c6
  db 24,$79
  !b5
  db 24,$43
  !b5
  db 24,$79
  !c6
  db 24,$43
  !c6
  db 16,$79
  !d6
  db 16,$73
  !d6
  db 64
  !rest
  db 72,$79
  !e5
  !dynamicVolume,48,104
  db 24
  !tie
  db 48,$28
  !tie
  !volume,146
  db 24,$79
  !fs5
  db 22
  !g5
  db 2,$73
  !g5
  db 64,$79
  !a5
  db 8
  !d6
  db 8,$73
  !a5
  !d6
  db 8,$79
  !a5
  db 56
  !tie
  db 8,$73
  !a5
  db 24,$79
  !a5
  db 6
  !gs5
  db 2,$73
  !a5
  db 20,$79
  !g5
  db 16,$73
  !g5
  db 4
  !rest
  db 56,$79
  !g5
  db 8
  !b5
  db 8,$73
  !g5
  !b5
  db 16
  !rest
  db 48,$79
  !b5
  db 8,$73
  !b5
  !instr,!instr04
  db 8,$7C
  !a5
  !rest
  db 8,$73
  !a5
  db 8,$7C
  !b5
  !rest
  db 8,$73
  !b5
  db 8,$7C
  !c6
  !rest
  db 8,$73
  !c6
  db 8,$7C
  !e6
  !rest
  db 8,$73
  !e6
  db 8,$7C
  !g6
  !rest
  db 8,$73
  !g6
  db 8,$7C
  !fs6
  !rest
  db 8,$73
  !fs6
  db 8,$7C
  !e6
  !rest
  !fs6
  !rest
  db 8,$73
  !fs6
  !rest
  !end

.pattern1_5
  db 24
  !rest
  db 8,$78
  !e5
  !rest
  db 8,$72
  !e5
  db 16
  !rest
  db 32,$78
  !e5
  db 16,$72
  !e5
  db 8
  !rest
  db 8,$78
  !e5
  !rest
  db 8,$72
  !e5
  db 16
  !rest
  db 28,$78
  !e5
  db 4,$72
  !e5
  db 12
  !tie
  !rest
  db 8,$78
  !d5
  !rest
  db 8,$72
  !d5
  db 16
  !rest
  db 32,$78
  !d5
  db 2
  !tie
  db 16,$72
  !d5
  db 6
  !rest
  db 8,$78
  !d5
  !rest
  db 8,$72
  !d5
  db 16
  !rest
  db 32,$78
  !d5
  db 2
  !tie
  db 16,$72
  !d5
  db 6
  !rest
  db 8,$78
  !c5
  !rest
  db 8,$72
  !c5
  db 16
  !rest
  db 28,$78
  !c5
  db 4,$72
  !c5
  db 12
  !tie
  !rest
  db 8,$78
  !c5
  !rest
  db 8,$72
  !c5
  db 16
  !rest
  db 28,$78
  !c5
  db 4,$72
  !c5
  db 12
  !tie
  !rest
  db 16,$68
  !g4
  db 16,$62
  !g4
  !rest
  db 16,$48
  !a4
  db 8,$42
  !a4
  !tie
  db 16
  !rest
  db 18,$78
  !b4
  db 16,$72
  !b4
  db 14
  !rest
  db 19,$78
  !b4
  db 5,$72
  !b4
  db 11
  !tie
  db 13
  !rest
  db 8,$78
  !e5
  !rest
  db 8,$72
  !e5
  db 16
  !rest
  db 32,$78
  !e5
  db 2
  !tie
  db 16,$72
  !e5
  db 6
  !rest
  db 8,$28
  !e5
  !rest
  db 8,$22
  !e5
  db 16
  !rest
  db 32,$78
  !e5
  db 2
  !tie
  db 16,$72
  !e5
  db 6
  !rest
  db 8,$48
  !d5
  !rest
  db 8,$42
  !d5
  db 16
  !rest
  db 32,$78
  !d5
  db 2
  !tie
  db 16,$72
  !d5
  db 6
  !rest
  db 8,$28
  !d5
  !rest
  db 8,$22
  !d5
  db 16
  !rest
  db 32,$78
  !d5
  db 8
  !c5
  !rest
  db 8,$72
  !c5
  db 16
  !rest
  db 50,$78
  !c5
  db 6,$72
  !c5
  db 8,$68
  !d5
  !rest
  db 8,$62
  !d5
  db 16
  !rest
  db 56,$78
  !fs5
  db 16,$72
  !fs5
  db 8
  !rest
  db 8,$68
  !e5
  !rest
  db 8,$62
  !e5
  db 16
  !rest
  db 32,$78
  !c5
  db 2
  !tie
  db 16,$72
  !c5
  db 6
  !rest
  db 8,$78
  !d5
  !rest
  db 8,$72
  !d5
  db 16
  !rest
  db 32,$78
  !fs5
  !end

.pattern1_6
  db 96
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !instr,!instr00
  !volume,125
  !pan,10
  !vibrato,24,24,72
  db 24
  !rest
  db 16,$78
  !g5
  db 8
  !rest
  db 16
  !a5
  db 8
  !rest
  db 12
  !b5
  !rest
  db 10,$79
  !c6
  db 14
  !rest
  db 10,$78
  !c6
  db 14
  !rest
  db 16
  !g5
  db 24
  !rest
  db 8
  !c6
  db 6
  !tie
  db 10
  !rest
  db 11
  !c6
  db 13
  !rest
  db 7
  !c6
  db 1
  !rest
  db 10
  !e6
  db 6
  !rest
  db 16,$79
  !d6
  db 8
  !rest
  db 7
  !c6
  db 1
  !rest
  db 10
  !d6
  db 14
  !rest
  db 12,$78
  !d6
  !rest
  db 10,$79
  !d6
  db 6
  !rest
  db 12
  !b6
  !rest
  db 8,$78
  !d6
  db 50
  !tie
  db 14
  !rest
  db 15
  !d6
  db 9
  !rest
  db 8,$77
  !cs6
  db 96
  !rest
  !rest
  !rest
  db 12,$78
  !e6
  !rest
  db 14
  !d6
  db 10
  !rest
  !c6
  db 6
  !rest
  db 28
  !d6
  db 4
  !rest
  !end

.pattern1_7
  db 16
  !rest
  db 15,$7F
  !e6
  db 9
  !rest
  db 8
  !e6
  !rest
  db 14
  !c6
  db 10
  !rest
  db 28
  !g5
  db 4
  !rest
  !loop : dw .sub2A77 : db 1
  !g6
  !rest
  !fs6
  !rest
  db 10
  !e6
  db 6
  !rest
  db 16
  !fs6
  !end

.sub2A50
  !vibrato,0,24,192
  db 16,$6F
  !g6
  db 8
  !fs6
  db 16,$7F
  !f6
  db 8
  !e6
  db 42
  !ds6
  db 6
  !rest
  !vibrato,24,24,72
  db 24
  !rest
  db 8,$2F
  !d6
  !rest
  !d6
  db 8,$7F
  !d6
  !rest
  !d6
  db 16
  !rest
  db 8
  !d6
  !end

.sub2A77
  db 16
  !rest
  db 5
  !e6
  db 3
  !rest
  db 8
  !e6
  !rest
  db 5
  !e6
  db 3
  !rest
  db 8
  !g6
  !rest
  db 19
  !fs6
  db 5
  !rest
  db 3
  !e6
  db 5
  !rest
  db 12
  !d6
  !rest
  db 8
  !d6
  !rest
  db 10
  !d6
  db 14
  !rest
  db 12
  !b5
  !rest
  db 8
  !d6
  db 40
  !tie
  db 24
  !rest
  db 22
  !d6
  db 2
  !rest
  db 4
  !cs6
  !rest
  db 12
  !c6
  !rest
  db 8
  !c6
  !rest
  db 10
  !c6
  db 14
  !rest
  db 10
  !a5
  db 14
  !rest
  db 8
  !c6
  db 16
  !rest
  db 4
  !c6
  db 20
  !rest
  db 4
  !c6
  !rest
  db 8
  !c6
  !rest
  db 12
  !b5
  !rest
  db 6
  !c6
  db 2
  !rest
  db 16
  !b5
  db 32
  !rest
  db 16
  !c6
  db 32
  !rest
  db 12
  !d6
  !rest
  db 14
  !b5
  db 10
  !rest
  db 16
  !c6
  db 8
  !rest
  db 16
  !d6
  db 8
  !rest
  db 10
  !e6
  db 14
  !rest
  db 10
  !e6
  db 14
  !rest
  db 12
  !e6
  db 4
  !rest
  db 12
  !c6
  !rest
  db 8
  !e6
  db 7
  !tie
  db 9
  !rest
  db 12
  !e6
  !rest
  db 6
  !e6
  db 2
  !rest
  db 12
  !g6
  db 4
  !rest
  db 15
  !fs6
  db 9
  !rest
  db 6
  !g6
  db 2
  !rest
  db 10
  !fs6
  db 14
  !rest
  db 12
  !fs6
  !rest
  db 14
  !fs6
  db 2
  !rest
  db 10
  !d7
  db 14
  !rest
  db 8
  !fs6
  db 48
  !tie
  db 16
  !rest
  !fs6
  db 8
  !rest
  db 6
  !f6
  db 2
  !rest
  db 10
  !e6
  db 14
  !rest
  db 16
  !fs6
  db 48
  !g6
  db 8
  !rest
  !b5
  db 16
  !rest
  db 10
  !c6
  db 6
  !rest
  db 48
  !d6
  db 8
  !rest
  db 10
  !a5
  db 14
  !rest
  !b5
  db 10
  !rest
  db 9
  !c6
  db 15
  !rest
  db 12
  !e6
  !rest
  !end

.sub2B4B
  db 40,$1F
  !c4
  db 48,$6F
  !c4
  db 8,$3F
  !c4
  !end

.sub2B55
  db 40,$1F
  !a3
  db 48,$6F
  !a3
  db 8,$3F
  !a3
  !end

.sub2B5F
  %percNote(!instr05-!instr05)
  db 16
  %percNote(!instr06-!instr05)
  db 8
  %percNote(!instr06-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
