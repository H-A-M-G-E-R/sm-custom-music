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
  db !instr00,$FF,$EB,$B8,$01,$C0
  db !instr01,$FF,$F2,$B8,$03,$30
  db !instr02,$FF,$E8,$B8,$02,$30
  db !instr03,$8F,$EE,$B8,$07,$F0
  db !instr04,$8F,$E0,$B8,$07,$A0
  db !instr05,$FF,$E0,$B8,$04,$B0
  db !instr06,$FF,$F4,$B8,$03,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1917
  dw Sample01,Sample01+1791
  dw Sample02,Sample02+1233
  dw Sample03,Sample03+153
  dw Sample04,Sample04+1116
  dw Sample05,Sample05+1773
  dw Sample06,Sample06+1152
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_78d4418a22588a299a724b5a7fc922a7.brr"
  Sample01: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample02: incbin "Sample_109c5729f128f87a93842e99c2b20c67.brr"
  Sample03: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample04: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample05: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample06: incbin "Sample_902a1cfa6206b16ff325e6df14f7c7d7.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr04
  !musicVolume,255
  !tempo,32
  !instr,!instr00
  !volume,166
  !subtranspose,28
  db 6,$7B
  !a5
  !c6
  !d6
  db 78
  !e6
  db 6
  !a5
  !c6
  !d6
  db 78
  !e6
  db 6
  !a5
  !c6
  !e6
  db 78
  !d6
  db 96
  !tie
  !end

.pattern0_1
  !instr,!instr01
  !volume,146
  !subtranspose,54
  db 48
  !rest
  db 6,$7B
  !a5
  !c6
  !d6
  db 30
  !e6
  !loop : dw .sub2AF0 : db 2
  db 96
  !tie

.pattern0_2
  !instr,!instr03
  !volume,166
  !transpose,12
  db 96,$7F
  !a2
  !f2
  !g2
  db 60,$6F
  !tie
  db 24,$1F
  !g2
  db 12,$4F
  !g2

.pattern0_3
  !volume,198
  db 36,$7C
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 48
  %percNote(!instr04-!instr04)
  db 36
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 48
  %percNote(!instr04-!instr04)
  db 36
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 36
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  !rest
  db 24
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  !instr,!instr06
  !pan,7
  !c5
  !pan,10
  !g4
  !pan,13
  !d4

.pattern0_4
  !instr,!instr02
  !volume,104
  !pan,4
  !vibrato,48,24,96
  !subtranspose,88
  db 96,$7E
  !a5
  db 96,$7E
  !f5
  db 96,$7E
  !g5
  db 12
  !rest
  db 12,$1D
  !g5
  db 12,$15
  !g5
  db 12,$1C
  !g5
  db 12,$1D
  !g5
  db 12,$15
  !g5
  db 12,$1E
  !g5
  db 12,$15
  !g5

.pattern0_5
  !instr,!instr02
  !volume,104
  !pan,15
  !vibrato,48,24,96
  !subtranspose,96
  db 96,$7E
  !e5
  db 96,$7E
  !c5
  db 96,$7E
  !d5
  db 12
  !rest
  db 12,$1D
  !d5
  db 12,$15
  !d5
  db 12,$4C
  !d5
  db 12,$1C
  !d5
  db 12,$15
  !d5
  db 12,$1D
  !d5
  db 12,$15
  !d5

.pattern0_6
  db 18
  !rest
  !instr,!instr00
  !volume,104
  !subtranspose,36
  db 6,$7B
  !a5
  !c6
  db 6,$7B
  !d6
  db 78,$7B
  !e6
  db 6,$7B
  !a5
  !c6
  db 6,$7B
  !d6
  db 78,$7B
  !e6
  db 6,$7B
  !a5
  !c6
  db 6,$7B
  !e6
  db 78,$7B
  !d6
  !tie

.pattern0_7
  db 18
  !rest
  !instr,!instr01
  !volume,83
  !subtranspose,62
  db 48
  !rest
  db 6,$7B
  !a5
  !c6
  db 6,$7B
  !d6
  db 30,$7B
  !e6
  !loop : dw .sub2AF9 : db 2
  db 78
  !tie

.pattern1_0
  db 12,$7B
  !e6
  db 12,$7A
  !d6
  db 12,$7C
  !e6
  !rest
  db 12,$2C
  !b5
  !rest
  db 12,$7C
  !g5
  db 12,$2C
  !a5
  !rest
  !a5
  !rest
  db 12,$3B
  !a5
  db 12,$6D
  !g5
  !rest
  db 12,$6C
  !a5
  !rest
  db 24,$7C
  !c6
  db 12,$5C
  !a5
  !rest
  db 12,$6C
  !a5
  !rest
  db 12,$6C
  !g5
  db 12,$7C
  !a5
  db 96
  !tie
  db 12,$7B
  !e6
  db 12,$7A
  !d6
  db 12,$7C
  !e6
  !rest
  db 12,$2C
  !b5
  !rest
  db 12,$7C
  !g5
  db 12,$2C
  !a5
  !rest
  db 12,$3C
  !a5
  !rest
  db 12,$3B
  !a5
  db 12,$6D
  !g5
  !rest
  db 12,$6C
  !a5
  !rest
  db 24,$7C
  !e6
  db 12,$5C
  !a5
  !rest
  db 12,$5C
  !a5
  !rest
  db 12,$1C
  !g5
  db 12,$7C
  !a5
  !loop : dw .sub2B06 : db 1
  db 24
  !tie
  db 24,$4C
  !f6
  db 24,$4C
  !e6
  db 12,$7B
  !d6
  !c6
  db 12,$6B
  !e6
  db 12,$6A
  !d6
  db 24,$2C
  !e6
  db 24,$0C
  !b5
  db 12,$7C
  !g5
  db 12,$2C
  !a5
  !loop : dw .sub2B2F : db 1
  !loop : dw .sub2B6D : db 1
  db 24
  !tie
  db 24,$4C
  !f6
  db 24,$4C
  !e6
  db 24,$5B
  !d6
  !pan,13
  db 12,$2C
  !a6
  db 12,$2B
  !a6
  db 12,$2B
  !a6
  db 12,$2B
  !a6
  db 12,$26
  !a6
  db 12,$23
  !a6
  db 12,$23
  !a6
  db 12,$22
  !a6
  db 12,$23
  !a6
  db 12,$22
  !a6
  db 12,$22
  !a6
  db 12,$21
  !a6
  db 12,$22
  !a6
  db 12,$22
  !a6
  db 12,$21
  !a6
  db 12,$21
  !a6
  !loop : dw .sub2BA5 : db 3
  !loop : dw .sub2BD6 : db 2
  !pan,10
  db 12,$7C
  !b6
  db 12,$7B
  !a6
  db 12,$7B
  !f6
  db 12,$7A
  !d6
  db 48,$7D
  !e6
  !loop : dw .sub2C07 : db 1
  db 96
  !tie
  !end

.pattern1_1
  !loop : dw .sub2C1F : db 1
  !loop : dw .sub2C5D : db 1
  db 12,$16
  !a5
  db 12,$26
  !a5
  db 12,$26
  !g5
  db 12,$26
  !a5
  db 12,$27
  !c6
  db 24,$06
  !a5
  db 12,$27
  !g5
  !loop : dw .sub2CB0 : db 1
  !loop : dw .sub2C5D : db 2
  !loop : dw .sub2CB0 : db 1
  db 96
  !rest
  db 60
  !rest
  db 12,$6D
  !a5
  db 12,$7D
  !b5
  db 12,$7D
  !c6
  !loop : dw .sub2CF8 : db 1
  db 96
  !tie

.pattern1_2
  !loop : dw .sub2D60 : db 3
  db 36,$4D
  !a2
  db 12,$6B
  !e3
  db 12,$7D
  !ds3
  db 24,$2C
  !d3
  db 12,$6D
  !c3
  !loop : dw .sub2D60 : db 3
  !loop : dw .sub2D6A : db 1
  db 36,$1C
  !g2
  db 36,$0C
  !g2
  db 24,$2C
  !g2
  db 36,$1C
  !e2
  db 36,$0C
  !e2
  db 24,$2C
  !e2
  db 36,$1D
  !a2
  db 24,$7C
  !a2
  db 12,$7C
  !a3
  db 12,$7D
  !gs3
  db 12,$7C
  !g3
  !loop : dw .sub2D60 : db 3
  db 36,$4D
  !a2
  db 12,$6B
  !e3
  db 12,$7D
  !ds3
  db 24,$2C
  !d3
  db 12,$6D
  !c3
  !loop : dw .sub2D60 : db 3
  !loop : dw .sub2D6A : db 1
  db 36,$18
  !g2
  db 36,$0C
  !g2
  db 24,$2C
  !g2
  db 36,$18
  !e2
  db 36,$0C
  !e2
  db 24,$2C
  !e2
  db 36,$1D
  !a2
  db 24,$7C
  !a2
  db 12,$7C
  !a3
  db 12,$7D
  !gs3
  db 12,$7C
  !g3
  !loop : dw .sub2D60 : db 3
  db 36,$1C
  !a2
  db 36,$0C
  !a2
  db 12,$7D
  !a2
  db 12,$7C
  !g2
  db 36,$18
  !f2
  db 36,$0C
  !f2
  db 24,$2C
  !f2
  db 36,$1C
  !f2
  db 24,$0C
  !f2
  db 12,$6C
  !f2
  db 24,$7D
  !f3
  !loop : dw .sub2D80 : db 2
  db 36,$1C
  !g2
  db 36,$0C
  !g2
  db 24,$2C
  !g2
  db 36,$1C
  !g2
  db 24,$0C
  !g2
  db 12,$3D
  !g2
  db 24,$5D
  !g3
  !loop : dw .sub2D8A : db 2
  !loop : dw .sub2D60 : db 4

.pattern1_3
  !pan,10
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 24,$7F
  %percNote(!instr05-!instr04)
  !loop : dw .sub2D94 : db 2
  !loop : dw .sub2DA3 : db 1
  !loop : dw .sub2D94 : db 2
  !loop : dw .sub2DC2 : db 1
  !loop : dw .sub2D94 : db 2
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !loop : dw .sub2D94 : db 3
  !loop : dw .sub2DA3 : db 1
  !loop : dw .sub2D94 : db 2
  !loop : dw .sub2DC2 : db 1
  !loop : dw .sub2D94 : db 2
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 12,$7C
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !loop : dw .sub2D94 : db 12
  !loop : dw .sub2DC2 : db 1
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 12,$7C
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 12,$7C
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)

.pattern1_4
  db 18,$1E
  !a5
  db 18,$15
  !a5
  db 6,$4D
  !a5
  db 6,$45
  !a5
  db 24,$1E
  !a5
  db 24,$19
  !a5
  db 12
  !rest
  db 12,$1E
  !a5
  db 12,$15
  !a5
  db 6,$4E
  !a5
  db 6,$45
  !a5
  db 24,$1E
  !a5
  db 24,$15
  !a5
  db 18,$1E
  !a5
  db 18,$15
  !a5
  db 6,$4E
  !a5
  db 6,$45
  !a5
  db 24,$1E
  !a5
  db 24,$15
  !a5
  db 12
  !rest
  db 12,$1D
  !a5
  db 12,$15
  !a5
  db 6,$4E
  !a5
  db 6,$45
  !a5
  db 24,$1D
  !a5
  db 24,$15
  !a5
  db 18,$1D
  !a5
  db 18,$15
  !a5
  db 6,$4E
  !a5
  db 6,$45
  !a5
  db 24,$1E
  !a5
  db 24,$15
  !a5
  db 12
  !rest
  db 12,$1D
  !a5
  db 12,$18
  !a5
  db 6,$4E
  !a5
  db 6,$45
  !a5
  db 24,$1D
  !a5
  db 24,$15
  !a5
  db 18,$1D
  !a5
  db 18,$15
  !a5
  db 6,$4D
  !a5
  db 6,$45
  !a5
  db 24,$1E
  !a5
  db 24,$15
  !a5
  db 12
  !rest
  db 12,$1E
  !a5
  db 12,$15
  !a5
  db 6,$4E
  !a5
  db 6,$45
  !a5
  db 24,$1E
  !a5
  db 24,$15
  !a5
  db 18,$1E
  !f5
  db 18,$15
  !f5
  db 6,$4E
  !f5
  db 6,$45
  !f5
  db 24,$1E
  !f5
  db 24,$15
  !f5
  db 12
  !rest
  db 12,$1E
  !g5
  db 12,$15
  !g5
  db 6,$4E
  !g5
  db 6,$45
  !g5
  db 24,$1E
  !g5
  db 24,$15
  !g5
  db 18,$1E
  !e5
  db 18,$15
  !e5
  db 6,$4E
  !e5
  db 6,$45
  !e5
  db 24,$1E
  !e5
  db 24,$15
  !e5
  db 12
  !rest
  db 12,$1E
  !a5
  db 12,$15
  !a5
  db 6,$4E
  !a5
  db 6,$45
  !a5
  db 24,$1E
  !a5
  db 24,$15
  !a5
  !loop : dw .sub2DE0 : db 4
  db 18,$1E
  !f5
  db 18,$15
  !f5
  db 6,$4E
  !f5
  db 6,$45
  !f5
  db 24,$1E
  !f5
  db 24,$15
  !f5
  db 12
  !rest
  db 12,$1E
  !d5
  db 12,$15
  !d5
  db 12,$6D
  !g5
  db 12,$1C
  !c6
  db 12,$15
  !c6
  db 12,$7E
  !b5
  db 12,$75
  !b5
  db 18,$1E
  !b4
  db 18,$15
  !b4
  db 6,$4E
  !e5
  db 6,$45
  !e5
  db 24,$1E
  !e5
  db 24,$15
  !e5
  db 12
  !rest
  db 12,$1E
  !a5
  db 12,$15
  !a5
  db 6,$4E
  !a5
  db 6,$45
  !a5
  db 24,$1D
  !a5
  db 24,$15
  !a5
  db 96,$7D
  !e5
  !tie
  !tie
  db 96,$78
  !tie
  db 96,$7D
  !a5
  db 96,$78
  !tie
  db 96,$7D
  !c6
  !tie
  db 96,$7C
  !b5
  !tie
  !tie
  db 96,$78
  !tie
  db 96,$7C
  !e5
  !tie
  !tie
  !tie

.pattern1_5
  db 18,$1D
  !e5
  db 18,$15
  !e5
  db 6,$4D
  !e5
  db 6,$45
  !e5
  db 24,$1D
  !e5
  db 24,$15
  !e5
  !loop : dw .sub2E07 : db 3
  !loop : dw .sub2E2E : db 1
  db 12
  !rest
  db 12,$1E
  !d5
  db 12,$15
  !d5
  db 6,$4E
  !d5
  db 6,$45
  !d5
  db 24,$1E
  !d5
  db 24,$15
  !d5
  db 18,$1E
  !b4
  db 18,$15
  !b4
  db 6,$4D
  !b4
  db 6,$45
  !b4
  db 24,$1E
  !b4
  db 24,$15
  !b4
  !loop : dw .sub2E55 : db 4
  !loop : dw .sub2E2E : db 1
  db 12
  !rest
  db 12,$1E
  !b4
  db 12,$15
  !b4
  db 6,$4E
  !b4
  db 6,$45
  !b4
  db 12,$1E
  !b4
  db 12,$15
  !b4
  db 24
  !rest
  db 18,$1E
  !b5
  db 18,$15
  !b5
  db 6,$4D
  !b4
  db 6,$45
  !b4
  db 24,$1E
  !b4
  db 24,$15
  !b4
  db 12
  !rest
  db 12,$1E
  !e5
  db 12,$15
  !e5
  db 6,$4E
  !e5
  db 6,$45
  !e5
  db 24,$1E
  !e5
  db 24,$15
  !e5
  db 96,$7D
  !a4
  !tie
  !tie
  db 96,$78
  !tie
  db 96,$7D
  !e5
  db 96,$78
  !tie
  db 96,$7D
  !e5
  !tie
  db 96,$7C
  !d5
  !tie
  !tie
  !tie
  !a4
  !tie
  !tie
  !tie

.pattern1_6
  db 18
  !rest
  !instr,!instr00
  !volume,104
  !pan,10
  !subtranspose,36
  db 12,$6B
  !e6
  db 12,$7A
  !d6
  db 24,$2C
  !e6
  db 24,$0C
  !b5
  db 12,$7C
  !g5
  db 12,$2C
  !a5
  !loop : dw .sub2B2F : db 1
  db 24,$7C
  !e6
  db 24,$1C
  !a5
  db 24,$1C
  !a5
  db 12,$1C
  !g5
  db 12,$7C
  !a5
  !loop : dw .sub2B06 : db 1
  db 24
  !tie
  db 24,$4C
  !f6
  db 24,$4C
  !e6
  db 6,$7B
  !d6
  !volume,146
  !subtranspose,28
  db 12,$69
  !c6
  db 12,$78
  !b5
  db 12,$68
  !c6
  db 12,$62
  !c6
  db 12,$72
  !b5
  db 12,$62
  !c6
  db 24
  !rest
  db 96
  !rest
  db 24,$7A
  !a5
  db 12,$59
  !e5
  db 12,$73
  !a5
  db 12,$5A
  !e5
  db 12,$53
  !e5
  db 12,$5A
  !d5
  db 12,$7A
  !e5
  db 96
  !tie
  db 12,$69
  !c6
  db 12,$78
  !b5
  db 12,$68
  !c6
  db 12,$62
  !c6
  db 12,$72
  !b5
  db 12,$62
  !c6
  db 24
  !rest
  db 96
  !rest
  db 24,$7A
  !a5
  db 12,$59
  !e5
  db 12,$73
  !a5
  db 12,$5A
  !e5
  db 12,$53
  !e5
  db 12,$5A
  !d5
  db 12,$7A
  !e5
  db 96
  !tie
  !rest
  !rest
  db 84
  !rest
  db 12,$79
  !a5
  db 12,$59
  !a5
  !rest
  db 24,$49
  !c6
  db 24,$49
  !c6
  db 24,$59
  !a5
  !pan,7
  db 12,$2C
  !e6
  db 12,$2C
  !e6
  db 12,$2B
  !e6
  db 12,$2B
  !e6
  db 12,$28
  !e6
  db 12,$23
  !e6
  db 12,$23
  !e6
  db 12,$22
  !e6
  db 12,$23
  !e6
  db 12,$22
  !e6
  db 12,$22
  !e6
  db 12,$21
  !e6
  db 12,$22
  !e6
  db 12,$22
  !e6
  db 12,$21
  !e6
  db 12,$21
  !e6
  !loop : dw .sub2E7C : db 3
  !loop : dw .sub2EAD : db 2
  db 18
  !rest
  !instr,!instr00
  !volume,104
  !pan,10
  !subtranspose,36
  db 12,$7C
  !b6
  db 12,$7B
  !a6
  db 12,$7B
  !f6
  db 12,$7A
  !d6
  db 48,$7D
  !e6
  !loop : dw .sub2C07 : db 1
  db 78
  !tie

.pattern1_7
  db 96
  !rest
  !loop : dw .sub2EDE : db 11
  db 18
  !rest
  !instr,!instr00
  !volume,104
  !pan,10
  !subtranspose,36
  db 12,$6B
  !e6
  db 12,$6A
  !d6
  db 24,$2C
  !e6
  db 24,$0C
  !b5
  db 12,$7C
  !g5
  db 12,$2C
  !a5
  !loop : dw .sub2B2F : db 1
  !loop : dw .sub2B6D : db 1
  db 24
  !tie
  db 24,$4C
  !f6
  db 24,$4C
  !e6
  db 24,$5B
  !d6
  db 96
  !rest
  db 60
  !rest
  !instr,!instr01
  !volume,83
  !subtranspose,70
  db 12,$6D
  !a5
  db 12,$7D
  !b5
  db 12,$7D
  !c6
  !loop : dw .sub2CF8 : db 1
  db 78
  !tie

.sub2AF0
  db 48
  !tie
  db 6
  !a5
  !c6
  !d6
  db 30
  !e6
  !end

.sub2AF9
  db 48
  !tie
  db 6,$7B
  !a5
  !c6
  db 6,$7B
  !d6
  db 30,$7B
  !e6
  !end

.sub2B06
  db 96
  !tie
  db 12,$3C
  !f5
  db 12,$2B
  !f5
  db 24,$1D
  !f5
  db 24,$1D
  !f5
  db 12,$7C
  !c6
  db 12,$7C
  !b5
  db 96
  !tie
  db 12,$4C
  !g5
  db 12,$4B
  !g5
  db 24,$1D
  !g5
  db 24,$1C
  !g5
  db 12,$7B
  !d6
  db 12,$7C
  !e6
  !end

.sub2B2F
  !rest
  db 24,$0C
  !a5
  db 12,$3B
  !a5
  db 24,$1D
  !g5
  db 24,$1C
  !a5
  db 24,$7C
  !c6
  db 24,$1C
  !a5
  db 24,$1C
  !a5
  db 12,$5C
  !g5
  db 12,$7C
  !a5
  db 96
  !tie
  db 12,$6B
  !e6
  db 12,$7A
  !d6
  db 24,$2C
  !e6
  db 24,$0C
  !b5
  db 12,$7C
  !g5
  db 12,$2C
  !a5
  !rest
  db 24,$0C
  !a5
  db 12,$3B
  !a5
  db 24,$1D
  !g5
  db 24,$1C
  !a5
  !end

.sub2B6D
  db 24,$7C
  !e6
  db 24,$1C
  !a5
  db 24,$1C
  !a5
  db 12,$5C
  !g5
  db 12,$7C
  !a5
  db 96
  !tie
  db 12,$3C
  !f5
  db 12,$2B
  !f5
  db 24,$1D
  !f5
  db 24,$1D
  !f5
  db 12,$7C
  !c6
  db 12,$7C
  !b5
  db 96
  !tie
  db 12,$4C
  !g5
  db 12,$4B
  !g5
  db 24,$1D
  !g5
  db 24,$1C
  !g5
  db 12,$7B
  !d6
  db 12,$7C
  !e6
  !end

.sub2BA5
  db 12,$2C
  !a6
  db 12,$2B
  !a6
  db 12,$2B
  !a6
  db 12,$2B
  !a6
  db 12,$26
  !a6
  db 12,$23
  !a6
  db 12,$23
  !a6
  db 12,$22
  !a6
  db 12,$23
  !a6
  db 12,$22
  !a6
  db 12,$22
  !a6
  db 12,$21
  !a6
  db 12,$22
  !a6
  db 12,$22
  !a6
  db 12,$21
  !a6
  db 12,$21
  !a6
  !end

.sub2BD6
  db 12,$2C
  !g6
  db 12,$2B
  !g6
  db 12,$2B
  !g6
  db 12,$2B
  !g6
  db 12,$26
  !g6
  db 12,$23
  !g6
  db 12,$23
  !g6
  db 12,$22
  !g6
  db 12,$23
  !g6
  db 12,$22
  !g6
  db 12,$22
  !g6
  db 12,$21
  !g6
  db 12,$22
  !g6
  db 12,$22
  !g6
  db 12,$21
  !g6
  db 12,$21
  !g6
  !end

.sub2C07
  db 84
  !tie
  db 6,$7B
  !d6
  db 6,$6B
  !e6
  db 12,$7C
  !f6
  db 12,$7B
  !e6
  db 12,$7C
  !b5
  db 12,$7C
  !d6
  db 48,$7D
  !e6
  !end

.sub2C1F
  db 12,$26
  !a5
  !a5
  db 12,$26
  !g5
  db 12,$26
  !a5
  db 12,$27
  !c6
  db 24,$06
  !a5
  db 12,$26
  !g5
  db 12,$17
  !a5
  db 12,$27
  !a5
  db 12,$26
  !g5
  db 12,$26
  !a5
  db 12,$17
  !c6
  db 24,$06
  !a5
  db 12,$36
  !g5
  db 12,$16
  !a5
  db 12,$26
  !a5
  db 12,$26
  !g5
  db 12,$26
  !a5
  db 12,$27
  !c6
  db 24,$06
  !a5
  db 12,$26
  !g5
  !end

.sub2C5D
  db 12,$16
  !a5
  db 12,$26
  !a5
  db 12,$26
  !g5
  db 12,$26
  !a5
  db 12,$27
  !c6
  db 24,$06
  !a5
  db 12,$27
  !g5
  db 12,$26
  !a5
  !a5
  db 12,$26
  !g5
  db 12,$26
  !a5
  db 12,$27
  !c6
  db 24,$06
  !a5
  db 12,$26
  !g5
  db 12,$17
  !a5
  db 12,$27
  !a5
  db 12,$26
  !g5
  db 12,$26
  !a5
  db 12,$17
  !c6
  db 24,$06
  !a5
  db 12,$36
  !g5
  db 12,$16
  !a5
  db 12,$26
  !a5
  db 12,$26
  !g5
  db 12,$26
  !a5
  db 12,$27
  !c6
  db 24,$06
  !a5
  db 12,$26
  !g5
  !end

.sub2CB0
  db 12,$77
  !f5
  db 12,$76
  !a5
  db 12,$76
  !c6
  db 24,$27
  !f6
  db 24,$26
  !c6
  db 12,$76
  !a5
  db 12,$76
  !g5
  db 12,$76
  !b5
  !d6
  db 24,$26
  !g6
  db 24,$27
  !d6
  db 12,$76
  !b5
  db 12,$77
  !e5
  db 12,$77
  !g5
  db 12,$76
  !b5
  db 24,$27
  !d6
  db 24,$26
  !b5
  db 12,$76
  !g5
  db 12,$77
  !a5
  db 12,$76
  !c6
  db 12,$77
  !e6
  db 24,$27
  !a5
  db 12,$76
  !a5
  !c6
  db 12,$76
  !e6
  !end

.sub2CF8
  db 36,$7D
  !d6
  db 60,$7E
  !e6
  db 84,$7D
  !g6
  db 6,$6D
  !e6
  db 6,$6E
  !d6
  db 96,$7E
  !e6
  db 24
  !tie
  db 60
  !a6
  db 6,$7D
  !e6
  db 6,$7E
  !d6
  db 96,$7E
  !e6
  db 24
  !tie
  db 24,$7D
  !f6
  db 24,$7D
  !e6
  db 24,$7E
  !d6
  db 36
  !tie
  db 36,$7D
  !g6
  db 24,$7E
  !d6
  db 72
  !tie
  db 12,$6E
  !b5
  db 12,$7E
  !c6
  db 36,$7E
  !d6
  db 36,$7D
  !g6
  db 24,$7D
  !d6
  db 24,$7D
  !d6
  db 24,$7E
  !f6
  !e6
  db 24,$7E
  !f6
  db 24,$2A
  !e6
  db 24,$29
  !b5
  db 48,$7B
  !b5
  db 90
  !tie
  db 6,$09
  !b5
  db 24,$2A
  !b5
  db 12,$7A
  !e5
  db 12,$7A
  !b5
  db 48,$7A
  !b5
  !end

.sub2D60
  db 36,$1C
  !a2
  db 36,$0C
  !a2
  db 24,$2C
  !a2
  !end

.sub2D6A
  db 36,$1D
  !a2
  db 24,$6C
  !a2
  db 24,$6C
  !gs2
  db 12,$7B
  !g2
  db 36,$1C
  !f2
  db 36,$0C
  !f2
  db 24,$2C
  !f2
  !end

.sub2D80
  db 36,$18
  !f2
  db 36,$0C
  !f2
  db 24,$2C
  !f2
  !end

.sub2D8A
  db 36,$1C
  !g2
  db 36,$0C
  !g2
  db 24,$2C
  !g2
  !end

.sub2D94
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 24,$7F
  %percNote(!instr05-!instr04)
  !end

.sub2DA3
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 12,$7C
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 12,$7C
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 24,$7F
  %percNote(!instr05-!instr04)
  !end

.sub2DC2
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 12,$7C
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 24,$7C
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 24,$7F
  %percNote(!instr05-!instr04)
  !end

.sub2DE0
  db 18,$1E
  !a5
  db 18,$15
  !a5
  db 6,$4E
  !a5
  db 6,$45
  !a5
  db 24,$1E
  !a5
  db 24,$15
  !a5
  db 12
  !rest
  db 12,$1E
  !a5
  db 12,$15
  !a5
  db 6,$4E
  !a5
  db 6,$45
  !a5
  db 24,$1E
  !a5
  db 24,$15
  !a5
  !end

.sub2E07
  db 12
  !rest
  db 12,$1D
  !d5
  db 12,$15
  !d5
  db 6,$4C
  !d5
  db 6,$45
  !d5
  db 24,$1C
  !d5
  db 24,$15
  !d5
  db 18,$1D
  !e5
  db 18,$15
  !e5
  db 6,$4D
  !e5
  db 6,$45
  !e5
  db 24,$1D
  !e5
  db 24,$15
  !e5
  !end

.sub2E2E
  db 12
  !rest
  db 12,$1D
  !e5
  db 12,$15
  !e5
  db 6,$4D
  !e5
  db 6,$45
  !e5
  db 24,$1E
  !e5
  db 24,$15
  !e5
  db 18,$1E
  !c5
  db 18,$15
  !c5
  db 6,$4D
  !c5
  db 6,$45
  !c5
  db 24,$1E
  !c5
  db 24,$15
  !c5
  !end

.sub2E55
  db 12
  !rest
  db 12,$1E
  !e5
  db 12,$15
  !e5
  db 6,$4E
  !e5
  db 6,$45
  !e5
  db 24,$1E
  !e5
  db 24,$15
  !e5
  db 18,$1D
  !e5
  db 18,$15
  !e5
  db 6,$4D
  !e5
  db 6,$45
  !e5
  db 24,$1D
  !e5
  db 24,$15
  !e5
  !end

.sub2E7C
  db 12,$2C
  !e6
  db 12,$2C
  !e6
  db 12,$2B
  !e6
  db 12,$2B
  !e6
  db 12,$28
  !e6
  db 12,$23
  !e6
  db 12,$23
  !e6
  db 12,$22
  !e6
  db 12,$23
  !e6
  db 12,$22
  !e6
  db 12,$22
  !e6
  db 12,$21
  !e6
  db 12,$22
  !e6
  db 12,$22
  !e6
  db 12,$21
  !e6
  db 12,$21
  !e6
  !end

.sub2EAD
  db 12,$2C
  !d6
  db 12,$2B
  !d6
  db 12,$2B
  !d6
  db 12,$2B
  !d6
  db 12,$26
  !d6
  db 12,$23
  !d6
  db 12,$23
  !d6
  db 12,$22
  !d6
  db 12,$23
  !d6
  db 12,$22
  !d6
  db 12,$22
  !d6
  db 12,$21
  !d6
  db 12,$22
  !d6
  db 12,$22
  !d6
  db 12,$21
  !d6
  db 12,$21
  !d6
  !end

.sub2EDE
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
