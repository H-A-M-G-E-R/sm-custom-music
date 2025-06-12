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
  db !instr00,$FF,$E9,$B8,$03,$00
  db !instr01,$FF,$F3,$B8,$06,$00
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr03,$8F,$EE,$B8,$07,$F0
  db !instr04,$8F,$E0,$B8,$07,$A0
  db !instr05,$FF,$E0,$B8,$04,$B0
  db !instr06,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1386
  dw Sample01,Sample01+612
  dw Sample02,Sample02+27
  dw Sample03,Sample03+153
  dw Sample04,Sample04+1116
  dw Sample05,Sample05+1773
  dw Sample06,Sample06+522
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_146a6954706c31d4a7f0210f1a41430a.brr"
  Sample01: incbin "Sample_f45902c0951fdb47812a49b937fa662d.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample03: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample04: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample05: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample06: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"

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
  !tempo,30
  !instr,!instr00
  !volume,125
  !vibrato,48,30,128
  !pan,8
  db 36
  !rest
  db 24,$0C
  !d6
  db 36,$7C
  !c6
  db 1
  !rest
  db 24,$02
  !d6
  db 36,$72
  !c6
  db 35
  !rest
  db 36
  !rest
  db 24,$1D
  !d6
  db 24,$4D
  !c6
  db 12,$5D
  !g6
  db 96,$7D
  !fs6
  db 36
  !rest
  db 24,$0C
  !d6
  db 36,$7C
  !c6
  db 24,$02
  !d6
  db 36
  !c6
  !rest
  !rest
  db 24,$1D
  !d6
  db 24,$4D
  !c6
  db 12,$5D
  !g6
  db 96,$7D
  !a6
  !end

.pattern0_1
  !instr,!instr02
  !pan,10
  !volume,208
  !subtranspose,29
  db 96,$79
  !a4
  db 84
  !tie
  db 12,$79
  !g4
  db 96,$79
  !a4
  db 84
  !tie
  db 12,$78
  !g4
  db 96,$7A
  !a5
  db 84
  !tie
  db 12,$78
  !g5
  db 96
  !a5
  !tie
  !end

.pattern0_2
  !instr,!instr03
  !volume,150
  db 18,$3C
  !a3
  db 18,$0B
  !a3
  db 24,$4C
  !a3
  db 12,$2C
  !a3
  db 12,$1C
  !a3
  db 12,$1B
  !a3
  db 18,$4C
  !a3
  db 18,$0C
  !a3
  db 24,$4C
  !a3
  db 12,$1C
  !a3
  db 12,$1C
  !a3
  db 12,$3C
  !a3
  !loop : dw .sub2D78 : db 3
  !end

.pattern0_3
  !volume,198
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  !loop : dw .sub2D9D : db 6
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 6,$7B
  %percNote(!instr04-!instr04)
  db 6,$7F
  %percNote(!instr05-!instr04)
  !end

.pattern0_4
  !instr,!instr01
  !volume,208
  !pan,11
  db 96
  !rest
  db 36
  !rest
  db 24,$7A
  !d5
  db 36,$7A
  !c5
  db 96
  !tie
  db 36
  !rest
  db 24
  !g5
  db 24,$7A
  !fs5
  db 12,$7A
  !a5
  db 96
  !tie
  db 36
  !rest
  db 24,$7A
  !d5
  db 36,$7B
  !c5
  db 96
  !tie
  !rest
  !end

.pattern0_5
  !instr,!instr01
  !volume,208
  !pan,9
  db 96
  !rest
  db 36
  !rest
  db 24,$79
  !a4
  db 36,$78
  !g4
  db 96
  !tie
  db 36
  !rest
  db 24,$7A
  !d5
  db 24,$7A
  !c5
  db 12,$7A
  !e5
  db 96
  !tie
  db 36
  !rest
  db 24,$7A
  !a4
  db 36,$78
  !g4
  db 96
  !tie
  !rest
  !end

.pattern0_6
  !instr,!instr00
  !volume,125
  !vibrato,47,30,170
  !pan,12
  db 36
  !rest
  db 24,$0C
  !a5
  db 36,$7C
  !g5
  db 1
  !rest
  db 24,$02
  !a5
  db 36,$72
  !g5
  db 35
  !rest
  db 36
  !rest
  db 24,$1D
  !a5
  db 24,$3D
  !g5
  db 12,$6D
  !d6
  db 96,$7D
  !c6
  db 36
  !rest
  db 24,$0C
  !a5
  db 36,$7C
  !g5
  db 24,$02
  !a5
  db 36,$72
  !g5
  !rest
  !rest
  db 24,$1D
  !a5
  db 24,$3D
  !g5
  db 12,$6D
  !d6
  db 96,$7D
  !e6
  !end

.pattern0_7
  !volume,198
  db 6,$73
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !loop : dw .sub2DAD : db 7
  !end

.pattern1_0
  !volume,125
  !pan,10
  db 12,$7D
  !a5
  db 12,$7D
  !b5
  !c6
  db 6,$7D
  !d6
  db 12,$7D
  !e6
  db 18
  !a5
  db 12,$7E
  !b5
  db 12,$7D
  !c6
  !loop : dw .sub2DBE : db 2
  db 6,$74
  !b5
  !c6
  !pan,7
  db 12,$0E
  !d6
  db 24,$4E
  !c6
  db 12,$1D
  !d6
  db 6,$1D
  !d6
  db 30,$5E
  !c6
  !pan,10
  db 12,$7D
  !a5
  db 12,$7D
  !b5
  !c6
  db 6,$7D
  !d6
  db 12,$7D
  !e6
  db 18
  !a5
  db 12,$7E
  !b5
  db 12,$7D
  !c6
  !loop : dw .sub2DBE : db 2
  !pan,7
  !rest
  db 12,$1E
  !g6
  db 24,$4E
  !fs6
  db 12,$1D
  !g6
  db 6,$4D
  !g6
  db 30,$7E
  !a6
  db 12,$1E
  !g6
  !g6
  db 12,$2E
  !fs6
  !fs6
  db 12,$1D
  !g6
  db 6,$4D
  !g6
  db 30,$7D
  !a6
  db 12
  !rest
  db 12,$2B
  !e6
  db 24,$4A
  !e6
  db 18,$5B
  !e6
  db 18,$5B
  !e6
  db 12,$1B
  !e6
  db 12,$2B
  !f6
  !f6
  db 12,$5B
  !f6
  db 6,$3A
  !d6
  db 54,$7B
  !e6
  db 12
  !rest
  db 12,$2B
  !e6
  db 24,$3B
  !e6
  db 18,$5B
  !e6
  db 18,$5A
  !e6
  db 12,$0B
  !e6
  db 12,$2B
  !b6
  db 12,$2B
  !b6
  db 12,$6B
  !a6
  db 6,$4B
  !f6
  db 54,$7B
  !e6
  db 12
  !rest
  db 12,$1B
  !e6
  db 24,$4A
  !e6
  db 18,$5B
  !e6
  db 18,$5B
  !e6
  db 12,$1B
  !e6
  db 12,$2B
  !f6
  !f6
  db 12,$5B
  !e6
  db 6,$4A
  !d6
  db 54,$7B
  !e6
  db 12
  !rest
  db 12,$2B
  !e6
  db 24,$3B
  !e6
  db 18,$5B
  !e6
  db 18,$5A
  !e6
  db 12,$0B
  !e6
  db 18,$3B
  !f6
  !f6
  db 24,$4B
  !f6
  db 12,$4A
  !f6
  db 12,$3B
  !g6
  db 12,$3B
  !f6
  db 24,$3B
  !e6
  db 12,$0A
  !a6
  db 24,$4B
  !b6
  db 24,$4B
  !d7
  db 12,$7B
  !e7
  db 96
  !tie
  !pan,11
  !volume,187
  db 24
  !rest
  db 72,$79
  !e6
  !loop : dw .sub2DD4 : db 1
  db 96
  !e6
  !loop : dw .sub2E1D : db 1
  db 96,$79
  !e6
  !loop : dw .sub2E50 : db 1
  db 96,$79
  !e6
  db 12
  !rest
  db 12,$19
  !a6
  !rest
  db 12,$19
  !a6
  !rest
  !a6
  !rest
  db 12,$2A
  !g6
  !end

.pattern1_1
  !volume,208
  db 96,$77
  !a5
  db 96,$78
  !c6
  db 84,$79
  !b5
  db 12,$78
  !g5
  db 96,$78
  !a5
  db 96,$79
  !a5
  db 96,$79
  !c6
  db 36,$78
  !e6
  db 36,$78
  !d6
  db 24
  !c6
  db 12,$72
  !c6
  db 12,$78
  !a5
  db 72
  !a5
  db 12,$72
  !a5
  db 72,$79
  !a5
  db 12,$79
  !d6
  db 96,$79
  !e6
  db 84
  !tie
  db 12,$78
  !d6
  db 96
  !e6
  db 84
  !tie
  db 12,$78
  !d6
  db 96,$78
  !e6
  db 84
  !tie
  db 12
  !d6
  db 96,$79
  !e6
  db 96,$78
  !f6
  db 96,$79
  !e6
  !tie
  db 96,$76
  !a4
  db 84
  !tie
  db 12,$76
  !c5
  db 96
  !a4
  db 84
  !tie
  db 12,$77
  !g4
  db 96,$77
  !a4
  db 84
  !tie
  db 12,$77
  !c5
  db 96,$76
  !a4
  db 84
  !tie
  db 12,$77
  !g4
  db 96,$76
  !a4
  db 84
  !tie
  db 12,$76
  !c5
  db 96
  !a4
  db 84
  !tie
  db 12,$77
  !g4
  db 96,$77
  !a4
  db 84
  !tie
  db 12,$77
  !c5
  db 96,$76
  !a4
  db 84
  !tie
  db 12,$77
  !g4
  db 84,$67
  !a4
  db 12,$77
  !g4
  db 84
  !a4
  db 12,$68
  !g5
  db 96,$78
  !a5
  db 84
  !tie
  db 12,$78
  !g5
  !end

.pattern1_2
  db 12,$5D
  !a3
  db 12,$5B
  !a4
  db 12,$5D
  !a3
  db 12,$5B
  !a4
  db 12,$5D
  !a3
  db 12,$5B
  !a4
  db 12,$5C
  !a3
  db 12,$5B
  !a4
  !loop : dw .sub2EA3 : db 1
  !loop : dw .sub2ED4 : db 1
  !loop : dw .sub2EA3 : db 1
  !loop : dw .sub2F05 : db 2
  !loop : dw .sub2F1E : db 7
  db 12,$5C
  !f3
  db 12,$5B
  !f4
  db 12,$5C
  !f3
  db 12,$5B
  !f4
  db 12,$5D
  !f3
  db 12,$5B
  !f4
  db 12,$5D
  !f3
  db 12,$5C
  !f4
  !loop : dw .sub2F1E : db 2
  !loop : dw .sub2ED4 : db 10
  !end

.pattern1_3
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  !loop : dw .sub2D9D : db 6
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  db 6,$7F
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  db 6,$7F
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  db 6,$7F
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  !loop : dw .sub2D9D : db 2
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  db 6,$7B
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  !loop : dw .sub2D9D : db 4
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  db 6
  %percNote(!instr05-!instr04)
  db 6,$7B
  %percNote(!instr04-!instr04)
  db 6,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  !loop : dw .sub2D9D : db 2
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 6,$7B
  %percNote(!instr04-!instr04)
  db 6,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  !loop : dw .sub2D9D : db 2
  !loop : dw .sub2F37 : db 1
  !loop : dw .sub2D9D : db 2
  !loop : dw .sub2F37 : db 1
  !loop : dw .sub2D9D : db 2
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 6,$7B
  %percNote(!instr04-!instr04)
  db 6,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !loop : dw .sub2F5B : db 2
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 6,$7B
  %percNote(!instr04-!instr04)
  db 6,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !end

.pattern1_4
  !volume,187
  !pan,11
  db 12
  !rest
  db 18,$79
  !a4
  !a4
  db 48
  !a4
  !loop : dw .sub2F70 : db 2
  db 12
  !rest
  !d5
  db 24
  !c5
  db 12
  !d5
  db 6
  !d5
  db 30
  !c5
  !loop : dw .sub2F70 : db 3
  db 12
  !rest
  !g4
  db 24
  !fs4
  db 12
  !g4
  db 6
  !g4
  db 30
  !a4
  db 12
  !g4
  !g4
  !fs4
  !fs4
  !g4
  db 6
  !g4
  db 30
  !a4
  db 12
  !rest
  db 12,$7A
  !e5
  db 12,$79
  !e5
  db 24,$78
  !d5
  db 12,$7A
  !e5
  db 12,$7B
  !e5
  db 12,$7A
  !d5
  !tie
  db 12,$7A
  !e5
  db 12,$7A
  !e5
  db 24,$7B
  !d5
  db 12,$7A
  !f5
  db 12,$7A
  !e5
  db 12,$7B
  !d5
  !tie
  db 12,$7A
  !e5
  db 12,$79
  !e5
  db 24
  !d5
  db 12,$7A
  !e5
  db 12,$7B
  !e5
  db 12,$7A
  !d5
  !tie
  db 12,$7A
  !e5
  db 12,$7A
  !e5
  db 24,$7B
  !d5
  db 12,$7A
  !f5
  db 12,$7A
  !e5
  db 12,$7B
  !d5
  !tie
  db 12,$7A
  !e5
  db 12,$79
  !e5
  db 24,$78
  !d5
  db 12,$7A
  !e5
  db 12,$7B
  !e5
  db 12,$7A
  !d5
  !tie
  db 12,$7A
  !e5
  db 12,$7A
  !e5
  db 24,$7B
  !d5
  db 12,$7A
  !f5
  db 12,$7A
  !e5
  db 12,$7B
  !d5
  !tie
  !e5
  db 12,$79
  !e5
  db 24,$78
  !d5
  db 12,$7A
  !e5
  db 12,$7B
  !e5
  db 12,$7A
  !d5
  !tie
  db 12,$7A
  !f5
  db 12,$7B
  !f5
  db 24
  !f5
  db 12,$7C
  !f5
  db 12,$7A
  !f5
  db 12,$7B
  !f5
  !tie
  db 12,$79
  !e5
  db 36,$7C
  !e5
  db 12,$7A
  !e5
  db 24,$7A
  !e5
  db 12
  !tie
  db 12,$7C
  !e5
  db 12,$7C
  !e5
  db 12,$7C
  !e5
  db 12,$7B
  !e5
  db 12,$7C
  !e5
  db 12,$7D
  !e5
  db 6,$7E
  !g4
  !g4
  !loop : dw .sub2F78 : db 1
  db 12,$7C
  !e4
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  !e4
  db 12,$7B
  !e4
  db 12,$7C
  !e4
  db 6,$7A
  !g4
  db 6,$7B
  !g4
  !loop : dw .sub2F78 : db 1
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  !e4
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  db 12,$7B
  !e4
  db 6,$77
  !d4
  db 6,$7D
  !d4
  !loop : dw .sub2F78 : db 1
  db 12,$7C
  !e4
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  !e4
  db 12,$7B
  !e4
  db 12,$7C
  !e4
  db 6,$7A
  !g4
  db 6,$7B
  !g4
  !loop : dw .sub2F78 : db 1
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  !e4
  !e4
  db 12,$7D
  !e4
  db 12,$7C
  !e4
  db 12,$7B
  !e4
  db 6,$77
  !d4
  db 6,$7D
  !d4
  db 12
  !d4
  db 12,$7C
  !e4
  !e4
  db 12,$7B
  !e4
  db 12,$7C
  !e4
  db 12,$7A
  !e4
  db 12,$7C
  !e4
  db 6,$79
  !d4
  db 6,$7B
  !d4
  db 12,$7D
  !d4
  db 12,$7D
  !e4
  !e4
  db 12,$7A
  !e4
  db 12,$7B
  !e4
  db 12,$7B
  !e4
  db 12,$7C
  !e4
  db 6,$7D
  !d4
  db 6,$7B
  !d4
  db 12,$7B
  !d4
  db 12,$7C
  !e4
  db 12,$7C
  !e4
  db 12,$7C
  !e4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  db 12,$7E
  !e4
  db 12,$7D
  !e4
  db 12,$7E
  !e4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  !e4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  db 12,$7E
  !g4
  !end

.pattern1_5
  !volume,187
  !pan,9
  db 12
  !rest
  db 18,$79
  !e4
  !e4
  db 48
  !e4
  !loop : dw .sub2FBF : db 2
  db 12
  !rest
  !a4
  db 24
  !g4
  db 12
  !a4
  db 6
  !a4
  db 30
  !g4
  !loop : dw .sub2FBF : db 3
  db 12
  !rest
  !d4
  db 24
  !c4
  db 12
  !d4
  db 6
  !d4
  db 30
  !e4
  db 12
  !d4
  !d4
  !c4
  !c4
  !d4
  db 6
  !d4
  db 30
  !e4
  db 12
  !rest
  db 12,$7B
  !b4
  db 12,$7A
  !b4
  db 24,$78
  !a4
  db 12,$7B
  !b4
  db 12,$7A
  !b4
  db 12,$78
  !a4
  !tie
  db 12,$7B
  !b4
  db 12,$7A
  !b4
  db 24,$78
  !a4
  db 12,$7B
  !c5
  db 12,$7B
  !b4
  !a4
  !loop : dw .sub2FC7 : db 2
  !tie
  !b4
  db 12,$7A
  !b4
  db 24,$79
  !a4
  db 12,$7A
  !b4
  db 12,$7B
  !b4
  db 12,$77
  !a4
  !tie
  db 12,$7B
  !c5
  db 12,$7C
  !c5
  db 24,$7B
  !c5
  db 12,$7C
  !c5
  db 12,$7B
  !c5
  db 12,$7A
  !c5
  !tie
  db 12,$7B
  !b4
  db 36,$7C
  !b4
  db 12
  !b4
  db 24,$7B
  !b4
  db 12
  !tie
  db 12,$7D
  !b4
  db 12,$7B
  !b4
  db 12,$7C
  !b4
  db 12,$7C
  !b4
  !b4
  !b4
  !pan,10
  db 6,$7E
  !d4
  db 6,$7E
  !d4
  !loop : dw .sub2FEC : db 1
  db 12,$7C
  !b4
  db 12,$7D
  !b4
  db 12,$7D
  !b4
  !b4
  db 12,$7D
  !b4
  db 12,$7C
  !b4
  db 12,$7D
  !b4
  db 6,$7C
  !d4
  db 6,$7D
  !d4
  !loop : dw .sub2FEC : db 1
  db 12,$7C
  !b4
  db 12,$7D
  !b4
  db 12,$7D
  !b4
  !b4
  db 12,$7D
  !b4
  db 12,$7C
  !b4
  db 12,$7D
  !b4
  db 6,$7C
  !a4
  db 6,$7D
  !a4
  !loop : dw .sub2FEC : db 1
  db 12,$7C
  !b4
  db 12,$7D
  !b4
  db 12,$7D
  !b4
  !b4
  db 12,$7D
  !b4
  db 12,$7C
  !b4
  db 12,$7D
  !b4
  db 6,$7C
  !b4
  db 6,$7D
  !b4
  !loop : dw .sub2FEC : db 1
  db 12,$7C
  !b4
  db 12,$7D
  !b4
  db 12,$7D
  !b4
  !b4
  db 12,$7D
  !b4
  db 12,$7C
  !b4
  db 12,$7D
  !b4
  db 6,$7C
  !a4
  db 6,$7D
  !a4
  db 12,$7D
  !a4
  db 12,$7D
  !b4
  db 12,$7E
  !b4
  db 12,$7D
  !b4
  db 12,$7C
  !b4
  db 12,$7A
  !b4
  db 12,$7C
  !b4
  db 6,$79
  !a4
  db 6,$7B
  !a4
  db 12,$7D
  !a4
  db 12,$7D
  !b4
  db 12,$7D
  !b4
  db 12,$7C
  !b4
  db 12,$7C
  !b4
  db 12,$7C
  !b4
  !b4
  db 6,$7D
  !a4
  db 6,$7A
  !a4
  db 12,$7B
  !a4
  db 12,$7D
  !b4
  db 12,$7D
  !b4
  db 12,$7E
  !b4
  db 12,$7D
  !b4
  db 12,$7E
  !b4
  db 12,$7D
  !b4
  db 12,$7E
  !b4
  db 12,$7E
  !b4
  db 12,$7E
  !b4
  db 12,$7E
  !b4
  !b4
  db 12,$7D
  !b4
  db 12,$7D
  !b4
  !b4
  db 12,$7E
  !d5
  !end

.pattern1_6
  !subtranspose,0
  !volume,125
  !pan,13
  db 96
  !rest
  !rest
  !rest
  db 12
  !rest
  db 12,$0E
  !a5
  db 24,$3E
  !g5
  db 12,$1D
  !a5
  db 6,$1D
  !a5
  db 30,$5E
  !g5
  db 96
  !rest
  !rest
  !rest
  db 12
  !rest
  db 12,$1E
  !d6
  db 24,$4E
  !c6
  db 12,$0D
  !d6
  db 6,$4D
  !d6
  db 30,$7E
  !e6
  db 12,$1E
  !d6
  !d6
  db 12,$1E
  !c6
  !c6
  db 12,$0D
  !d6
  db 6,$4D
  !d6
  db 30,$7D
  !e6
  db 12
  !rest
  db 12,$1B
  !b5
  db 24,$4A
  !b5
  db 18,$5B
  !b5
  !b5
  db 12,$1B
  !b5
  !loop : dw .sub302D : db 1
  db 12,$2B
  !f6
  !f6
  db 12,$6B
  !e6
  db 6,$3B
  !c6
  db 54,$6B
  !b5
  db 12
  !rest
  db 12,$2B
  !b5
  db 24,$3B
  !b5
  db 18,$5B
  !b5
  db 18,$5A
  !b5
  db 12,$0B
  !b5
  !loop : dw .sub302D : db 1
  db 18,$4B
  !c6
  !c6
  db 24,$4B
  !c6
  db 12,$4A
  !c6
  db 12,$3B
  !d6
  db 12,$3B
  !c6
  db 24,$3B
  !b5
  db 12,$2A
  !e6
  db 24,$3B
  !f6
  db 24,$3B
  !a6
  db 12,$7B
  !b6
  db 96
  !tie
  db 18
  !rest
  !pan,9
  !volume,125
  !subtranspose,8
  db 24
  !rest
  db 72,$79
  !e6
  !loop : dw .sub2DD4 : db 1
  db 96
  !e6
  !loop : dw .sub2E1D : db 1
  db 96,$79
  !e6
  !loop : dw .sub2E50 : db 1
  db 96,$79
  !e6
  db 12
  !rest
  db 12,$19
  !a6
  !rest
  db 12,$19
  !a6
  !rest
  !a6
  db 6
  !rest
  !end

.pattern1_7
  db 6,$73
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !loop : dw .sub2DAD : db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  db 12
  !rest
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  !rest
  db 6
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  !loop : dw .sub2DAD : db 3
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !loop : dw .sub2DAD : db 5
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !loop : dw .sub2DAD : db 3
  !loop : dw .sub304C : db 1
  !loop : dw .sub2DAD : db 2
  !loop : dw .sub304C : db 1
  !loop : dw .sub2DAD : db 2
  !loop : dw .sub304C : db 1
  !loop : dw .sub2DAD : db 2
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  !rest
  !loop : dw .sub306E : db 2
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  !rest
  !end

.sub2D78
  db 18,$3C
  !a3
  db 18,$0B
  !a3
  db 24,$4C
  !a3
  db 12,$2C
  !a3
  db 12,$1C
  !a3
  db 12,$1B
  !a3
  db 18,$4C
  !a3
  db 18,$0C
  !a3
  db 24,$4C
  !a3
  db 12,$1C
  !a3
  db 12,$1C
  !a3
  db 12,$3C
  !a3
  !end

.sub2D9D
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  !end

.sub2DAD
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !end

.sub2DBE
  db 12,$7D
  !a5
  db 12,$7D
  !b5
  !c6
  db 6,$7D
  !d6
  db 12,$7D
  !e6
  db 18
  !a5
  db 12,$7E
  !b5
  db 12,$7D
  !c6
  !end

.sub2DD4
  db 12
  !tie
  db 48,$79
  !f6
  db 24,$79
  !a6
  db 12,$78
  !f6
  db 72,$79
  !e6
  db 12,$79
  !b5
  db 12,$79
  !d6
  !tie
  db 84,$79
  !e6
  db 12
  !rest
  db 12,$79
  !a5
  db 12,$79
  !b5
  !d6
  db 12,$79
  !e6
  !f6
  !a6
  db 12,$78
  !f6
  db 12,$7A
  !b6
  db 6,$79
  !c7
  db 6,$7A
  !b6
  db 12,$79
  !a6
  !f6
  db 12,$7A
  !b6
  db 12,$7A
  !a6
  !f6
  !e6
  db 24,$79
  !a6
  !f6
  db 36,$7A
  !e6
  db 12,$79
  !d6
  !end

.sub2E1D
  db 12
  !rest
  db 12,$78
  !b5
  !d6
  db 12,$79
  !e6
  db 18
  !b5
  db 18,$78
  !d6
  db 12,$78
  !e6
  db 16,$49
  !f6
  db 16,$48
  !f6
  db 16,$68
  !f6
  db 18,$78
  !f6
  db 18,$79
  !e6
  db 12,$68
  !d6
  db 36,$78
  !a6
  db 12,$78
  !f6
  db 12,$79
  !b6
  db 12,$78
  !a6
  db 24,$78
  !f6
  !end

.sub2E50
  db 36,$79
  !a6
  db 12,$78
  !f6
  db 12,$78
  !b6
  db 12,$78
  !a6
  db 12,$78
  !b6
  db 12,$78
  !d7
  db 12,$78
  !e7
  !d7
  db 12,$77
  !b6
  db 12,$77
  !a6
  db 12,$77
  !b6
  db 12,$78
  !a6
  db 12,$77
  !f6
  db 12,$77
  !e6
  db 12,$77
  !d6
  db 12,$78
  !e6
  !f6
  db 12,$78
  !a6
  db 12,$68
  !b6
  db 6,$79
  !c7
  db 6,$78
  !b6
  db 12,$79
  !a6
  db 12,$78
  !f6
  db 72
  !e6
  db 24,$69
  !d6
  db 84,$79
  !e6
  db 12,$69
  !f6
  db 84,$79
  !e6
  db 12,$69
  !d6
  !end

.sub2EA3
  db 12,$5C
  !f3
  db 12,$5B
  !f4
  db 12,$5C
  !f3
  db 12,$5B
  !f4
  db 12,$5D
  !f3
  db 12,$5B
  !f4
  db 12,$5D
  !f3
  db 12,$5C
  !f4
  db 12,$5D
  !g3
  db 12,$5B
  !g4
  db 12,$5D
  !g3
  db 12,$5B
  !g4
  db 12,$5D
  !g3
  db 12,$5B
  !g4
  db 12,$5C
  !g3
  db 12,$5B
  !g4
  !end

.sub2ED4
  db 12,$5C
  !a3
  db 12,$5B
  !a4
  db 12,$5C
  !a3
  db 12,$5B
  !a4
  db 12,$5D
  !a3
  db 12,$5B
  !a4
  db 12,$5D
  !a3
  db 12,$5C
  !a4
  db 12,$5D
  !a3
  db 12,$5B
  !a4
  db 12,$5D
  !a3
  db 12,$5B
  !a4
  db 12,$5D
  !a3
  db 12,$5B
  !a4
  db 12,$5C
  !a3
  db 12,$5B
  !a4
  !end

.sub2F05
  db 12,$5D
  !a3
  db 12,$5B
  !a4
  db 12,$5D
  !a3
  db 12,$5B
  !a4
  db 12,$5D
  !a3
  db 12,$5B
  !a4
  db 12,$5C
  !a3
  db 12,$5C
  !a4
  !end

.sub2F1E
  db 12,$5C
  !e3
  db 12,$5B
  !e4
  db 12,$5C
  !e3
  db 12,$5B
  !e4
  db 12,$5D
  !e3
  db 12,$5B
  !e4
  db 12,$5D
  !e3
  db 12,$5C
  !e4
  !end

.sub2F37
  db 12
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 6,$7B
  %percNote(!instr04-!instr04)
  db 6,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  !end

.sub2F5B
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 18,$7B
  %percNote(!instr04-!instr04)
  db 18,$7F
  %percNote(!instr05-!instr04)
  db 6,$7B
  %percNote(!instr04-!instr04)
  db 6,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !end

.sub2F70
  db 12
  !rest
  db 18
  !a4
  !a4
  db 48
  !a4
  !end

.sub2F78
  db 12,$7C
  !g4
  db 12,$7C
  !a4
  db 12,$7B
  !a4
  db 12,$7C
  !a4
  db 12,$7C
  !a4
  db 12,$7C
  !a4
  !a4
  db 12,$7B
  !a4
  db 12,$7B
  !a4
  db 12,$7C
  !b4
  db 12,$7C
  !b4
  db 12,$7B
  !b4
  db 12,$7B
  !b4
  db 12,$7A
  !b4
  db 12,$7B
  !b4
  db 12,$7D
  !e4
  db 12,$7C
  !d4
  db 12,$7D
  !d4
  db 12,$7D
  !d4
  db 12,$7D
  !d4
  db 12,$7C
  !d4
  db 12,$7D
  !d4
  db 12,$7C
  !b3
  db 12,$7D
  !d4
  !end

.sub2FBF
  db 12
  !rest
  db 18
  !e4
  !e4
  db 48
  !e4
  !end

.sub2FC7
  !tie
  db 12,$7B
  !b4
  db 12,$7A
  !b4
  db 24,$78
  !a4
  db 12,$7B
  !b4
  db 12,$7A
  !b4
  db 12,$78
  !a4
  !tie
  db 12,$7B
  !b4
  db 12,$7A
  !b4
  db 24,$78
  !a4
  db 12,$7B
  !c5
  db 12,$7B
  !b4
  !a4
  !end

.sub2FEC
  db 12,$7D
  !d4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  !e4
  !e4
  db 12,$7D
  !e4
  db 12,$7D
  !e4
  !e4
  db 12,$7B
  !e4
  db 12,$7D
  !f4
  db 12,$7D
  !f4
  db 12,$7D
  !f4
  !f4
  db 12,$7B
  !f4
  db 12,$7D
  !f4
  db 12,$7D
  !b4
  db 12,$7C
  !a4
  db 12,$7D
  !a4
  db 12,$7C
  !a4
  db 12,$7D
  !a4
  db 12,$7C
  !a4
  db 12,$7C
  !a4
  db 12,$7E
  !f4
  db 12,$7D
  !a4
  !end

.sub302D
  db 12,$2B
  !c6
  !c6
  db 12,$5B
  !b5
  db 6,$3A
  !a5
  db 54,$7B
  !b5
  db 12
  !rest
  db 12,$2B
  !b5
  db 24,$3B
  !b5
  db 18,$5B
  !b5
  db 18,$5A
  !b5
  db 12,$0B
  !b5
  !end

.sub304C
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  !rest
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !end

.sub306E
  db 6
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  !rest
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  %percNote(!instr06-!instr04)
  db 12
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
