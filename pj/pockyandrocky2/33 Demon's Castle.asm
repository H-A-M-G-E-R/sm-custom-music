asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr03 = $19
!instr04 = $1A
!instr06 = $1B
!instr07 = $1C
!instr08 = $1D
!instr09 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$8F,$EE,$B8,$07,$F0
  db !instr01,$FF,$E0,$B8,$02,$40
  db !instr02,$FF,$F3,$B8,$06,$00
  db !instr03,$FF,$E0,$B8,$01,$B0
  db !instr04,$8F,$E0,$B8,$03,$00
  db !instr06,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$E0,$B8,$03,$C0
  db !instr08,$FF,$F4,$B8,$03,$90
  db !instr09,$FC,$F1,$B8,$03,$E0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+153
  dw Sample01,Sample01+801
  dw Sample02,Sample02+612
  dw Sample03,Sample03+1053
  dw Sample04_05,Sample04_05+27
  dw Sample06,Sample06+1116
  dw Sample07,Sample07+1530
  dw Sample08,Sample08+1152
  dw Sample09,Sample09+549
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample01: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample02: incbin "Sample_f45902c0951fdb47812a49b937fa662d.brr"
  Sample03: incbin "Sample_9b824c2347515bb03a8f9a1ef9fe03cf.brr"
  Sample04_05: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample06: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample07: incbin "Sample_c38c118110713ed94b98dc70871a6061.brr"
  Sample08: incbin "Sample_902a1cfa6206b16ff325e6df14f7c7d7.brr"
  Sample09: incbin "Sample_5cac8ed5aaaa86695a684f7f807906cc.brr"

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
  !percBase,!instr06
  !musicVolume,255
  !tempo,29
  !instr,!instr02
  !volume,187
  !pan,10
  db 6,$7E
  !a4
  db 12,$7D
  !a4
  db 18,$7C
  !g4
  db 24,$7D
  !a4
  db 24,$7C
  !c5
  db 12,$7D
  !d5
  db 96
  !tie
  !loop : dw .sub2CD1 : db 3
  !end

.pattern0_1
  !instr,!instr04
  !volume,125
  !pan,15
  !subtranspose,29
  !dynamicVolume,192,187
  db 96,$7D
  !a3
  !tie
  !dynamicVolume,192,250
  !tie
  !tie
  !volume,208
  db 60,$78
  !a4
  db 24,$77
  !c5
  db 12
  !d5
  db 96
  !tie
  db 60,$78
  !a4
  db 24,$77
  !c5
  db 12
  !d5
  db 96
  !tie
  !end

.pattern0_2
  db 96
  !rest
  !rest
  !rest
  !rest
  !instr,!instr00
  !volume,166
  db 12,$2B
  !a3
  db 12,$6A
  !a3
  db 12,$6B
  !c4
  db 12,$39
  !a3
  db 12,$2B
  !a3
  db 12,$6A
  !a3
  db 12,$6B
  !c4
  db 12,$6A
  !d4
  !loop : dw .sub2CE6 : db 3
  !end

.pattern0_3
  !volume,198
  db 24
  !rest
  db 48,$7C
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  !rest
  db 36
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  !rest
  db 48
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  !rest
  db 48
  %percNote(!instr06-!instr06)
  !instr,!instr08
  !pan,7
  db 6,$7C
  !d5
  !pan,10
  db 6,$7C
  !g4
  !pan,13
  db 12,$7C
  !c4
  !pan,10
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  !loop : dw .sub2CFF : db 2
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  !end

.pattern0_4
  !instr,!instr04
  !volume,125
  !pan,5
  !subtranspose,29
  !dynamicVolume,192,187
  db 96,$7D
  !a2
  !tie
  !dynamicVolume,192,250
  !tie
  !tie
  !volume,208
  db 60,$78
  !e4
  db 24,$77
  !g4
  db 12
  !a4
  db 96
  !tie
  db 60,$78
  !e4
  db 24,$77
  !g4
  db 12
  !a4
  db 96
  !tie
  !end

.pattern0_5
  !instr,!instr02
  !volume,187
  !pan,13
  db 6,$7E
  !e4
  db 12,$7D
  !e4
  db 18,$7C
  !d4
  db 24,$7D
  !e4
  db 24,$7C
  !g4
  db 12,$7D
  !g4
  db 96
  !tie
  db 6,$7E
  !e4
  db 12,$7D
  !e4
  db 18,$7C
  !d4
  db 24,$7D
  !e4
  db 24,$7C
  !g4
  db 12,$7D
  !g4
  db 96
  !tie
  db 6,$7E
  !e4
  db 12,$7D
  !e4
  db 18,$7C
  !d4
  db 24,$7D
  !e4
  db 24,$7C
  !g4
  db 12,$7D
  !g4
  db 96
  !tie
  db 6
  !e4
  db 12,$7D
  !e4
  db 18,$7C
  !d4
  db 24,$7D
  !e4
  db 24,$7C
  !g4
  db 12,$7D
  !g4
  db 96
  !tie
  !end

.pattern0_6
  !instr,!instr02
  !volume,187
  !pan,7
  db 6,$7E
  !a3
  db 12,$7D
  !a3
  db 18,$7C
  !g3
  db 24,$7D
  !a3
  db 24,$7C
  !c4
  db 12,$7D
  !d4
  db 96
  !tie
  !loop : dw .sub2D10 : db 3
  !end

.pattern0_7
  db 96
  !rest
  !rest
  !rest
  !rest
  !volume,198
  db 96,$78
  %percNote(!instr09-!instr06)
  !rest
  !rest
  !rest
  !end

.pattern1_0
  !instr,!instr01
  !volume,125
  !pan,10
  !vibrato,47,27,170
  db 96,$7D
  !e6
  !loop : dw .sub2D25 : db 1
  db 12,$75
  !e6
  !instr,!instr03
  !volume,229
  db 12,$68
  !a5
  db 12,$78
  !c6
  db 12,$79
  !d6
  db 18,$79
  !ds6
  db 18,$79
  !d6
  db 12,$79
  !c6
  db 12,$7A
  !e6
  db 12,$74
  !e6
  db 12,$78
  !c6
  db 24,$78
  !d6
  db 18,$79
  !c6
  db 18,$74
  !c6
  !instr,!instr01
  !volume,125
  db 12
  !rest
  db 12,$7D
  !d6
  db 12,$7D
  !cs6
  db 12,$7C
  !a5
  db 12,$7D
  !c6
  db 18,$7C
  !a5
  db 18,$74
  !a5
  db 12
  !rest
  db 12,$7D
  !d6
  db 12,$7D
  !cs6
  db 12,$7C
  !a5
  db 12,$7D
  !c6
  db 18,$7C
  !a5
  db 18,$74
  !a5
  db 12
  !rest
  db 12,$7D
  !d6
  db 12,$7D
  !cs6
  !a5
  db 12,$7E
  !c6
  db 12,$7D
  !e6
  db 12,$7E
  !f6
  db 12,$7D
  !a6
  !loop : dw .sub2D57 : db 1
  !instr,!instr03
  !volume,229
  db 12
  !rest
  db 12,$7A
  !f6
  db 12,$74
  !f6
  db 12,$79
  !d6
  db 18,$7A
  !f6
  db 18,$74
  !f6
  db 12,$69
  !d6
  db 12,$7A
  !f6
  db 12,$74
  !f6
  !d6
  db 12,$7A
  !f6
  db 12,$74
  !f6
  db 18,$7A
  !d6
  db 18,$74
  !d6
  !instr,!instr01
  !volume,125
  db 12
  !rest
  db 12,$2C
  !e6
  db 12,$2C
  !e6
  db 12,$3B
  !ds6
  db 12,$2C
  !f6
  db 12,$2B
  !f6
  db 12,$3B
  !f6
  db 12,$5B
  !e6
  !rest
  db 12,$2C
  !a6
  db 12,$2B
  !a6
  db 12,$29
  !gs6
  db 12,$7C
  !a6
  db 12,$7B
  !gs6
  db 12,$7B
  !a6
  db 12,$7C
  !gs6
  db 18,$4C
  !a6
  db 18,$44
  !a6
  db 18,$5C
  !c7
  db 18,$54
  !c7
  db 24,$7D
  !d7
  db 60
  !tie
  db 12,$6C
  !ds7
  db 12,$64
  !ds7
  db 12,$6B
  !d7
  db 18,$3B
  !a6
  db 18,$34
  !a6
  db 18,$3D
  !c7
  db 18,$34
  !c7
  db 24,$7D
  !d7
  db 60
  !tie
  db 12,$6C
  !ds7
  db 12,$64
  !ds7
  db 12,$5C
  !d7
  db 18,$3D
  !a6
  db 18,$34
  !a6
  db 18,$4C
  !c7
  db 18,$44
  !c7
  db 24,$7D
  !d7
  db 60
  !tie
  db 12,$7C
  !ds7
  db 12,$74
  !ds7
  db 12,$5D
  !d7
  db 96,$7C
  !f7
  !tie
  db 96,$7B
  !d7
  !tie
  !end

.pattern1_1
  !pan,10
  db 96,$75
  !a5
  db 84
  !tie
  db 12,$76
  !gs5
  db 96,$76
  !g5
  !tie
  db 96,$76
  !a5
  !tie
  !volume,135
  db 12,$38
  !tie
  db 12,$68
  !a5
  db 12,$78
  !c6
  db 12,$79
  !d6
  db 18,$79
  !ds6
  db 18,$79
  !d6
  db 12,$79
  !c6
  db 24,$7A
  !e6
  db 12,$79
  !c6
  db 24,$78
  !d6
  db 36,$79
  !c6
  !volume,187
  db 96,$77
  !d6
  db 12
  !rest
  db 24,$79
  !d6
  db 12,$66
  !a5
  db 12,$78
  !c6
  db 36,$77
  !a5
  db 12
  !rest
  db 24,$79
  !d6
  db 60,$78
  !a5
  db 96,$79
  !e6
  db 96,$78
  !ds6
  db 12
  !tie
  db 24,$79
  !f6
  db 12,$78
  !d6
  db 36,$78
  !f6
  db 12,$67
  !d6
  db 24,$7A
  !f6
  db 12,$78
  !d6
  db 24,$79
  !f6
  db 36,$78
  !d6
  !volume,146
  db 12
  !tie
  db 24,$78
  !d6
  db 12,$77
  !a5
  db 36,$78
  !d6
  db 12,$68
  !a5
  db 24,$78
  !d6
  db 12
  !a5
  db 24
  !d6
  db 36
  !a5
  !volume,187
  db 96,$79
  !a4
  !tie
  !loop : dw .sub2D78 : db 2
  db 36,$78
  !e6
  db 36,$78
  !g6
  db 24
  !a6
  db 60
  !tie
  db 24,$78
  !as6
  db 12,$78
  !a6
  db 84,$79
  !ds7
  db 12,$78
  !fs6
  db 96
  !fs6
  db 84,$79
  !d7
  db 12,$78
  !f6
  db 96
  !tie
  !end

.pattern1_2
  !loop : dw .sub2D89 : db 8
  !loop : dw .sub2DA2 : db 3
  db 12,$2C
  !e4
  db 12,$7C
  !e4
  db 12,$7C
  !gs4
  db 12,$1C
  !e4
  db 12,$1B
  !e4
  db 12,$7B
  !e4
  db 12,$7C
  !b4
  db 12,$7B
  !e4
  db 12,$2C
  !ds4
  db 12,$7C
  !ds4
  db 12,$7C
  !g4
  db 12,$1C
  !ds4
  db 12,$1B
  !d4
  db 12,$7B
  !d4
  db 12,$7C
  !f4
  db 12,$7B
  !d4
  !loop : dw .sub2DA2 : db 4
  !loop : dw .sub2DBB : db 2
  db 18,$2D
  !a3
  db 18,$24
  !a3
  db 18,$6D
  !c4
  db 18,$64
  !c4
  db 24,$7C
  !d4
  !loop : dw .sub2DC8 : db 2
  db 60
  !tie
  db 12,$7C
  !ds4
  db 12,$74
  !ds4
  db 6,$7D
  !d4
  db 6,$74
  !d4
  db 12
  !rest
  db 12,$7B
  !a3
  db 12,$7C
  !c4
  db 12,$7C
  !d4
  db 12,$7B
  !ds4
  db 12,$4C
  !d4
  db 12,$6C
  !f4
  db 12,$7D
  !ds4
  db 96
  !tie
  db 12
  !rest
  db 12,$7B
  !d4
  db 12,$7D
  !gs4
  db 12,$7B
  !d4
  db 18,$7D
  !b4
  db 18,$74
  !b4
  db 6,$7B
  !as4
  db 6,$74
  !as4
  db 12
  !tie
  db 12,$7B
  !a4
  db 12,$74
  !a4
  db 12,$7B
  !gs4
  db 12,$74
  !gs4
  db 18,$7C
  !g4
  db 18,$74
  !g4
  !end

.pattern1_3
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  !loop : dw .sub2CFF : db 6
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  !loop : dw .sub2CFF : db 2
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  !loop : dw .sub2CFF : db 3
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 6
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  !loop : dw .sub2CFF : db 2
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7C
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  !end

.pattern1_4
  !instr,!instr01
  !volume,83
  !vibrato,47,27,170
  !pan,12
  !subtranspose,8
  db 18
  !rest
  db 96,$7D
  !e6
  !loop : dw .sub2D25 : db 1
  db 12,$75
  !e6
  db 84
  !rest
  db 96
  !rest
  !volume,83
  db 12
  !rest
  db 12,$7D
  !d6
  db 12,$7D
  !cs6
  db 12,$7C
  !a5
  db 12,$7D
  !c6
  db 18,$7C
  !a5
  db 18,$74
  !a5
  db 12,$71
  !a5
  db 12,$7D
  !d6
  db 12,$7D
  !cs6
  db 12,$7C
  !a5
  db 12,$7D
  !c6
  db 18,$7C
  !a5
  db 18,$74
  !a5
  db 12,$71
  !a5
  db 12,$7D
  !d6
  db 12,$7D
  !cs6
  !a5
  db 12,$7E
  !c6
  db 12,$7D
  !e6
  db 12,$7E
  !f6
  db 12,$7D
  !a6
  !loop : dw .sub2D57 : db 1
  !rest
  db 78
  !rest
  !volume,125
  !subtranspose,0
  db 12
  !rest
  db 12,$2C
  !a5
  db 12,$3A
  !a5
  db 12,$3B
  !as5
  db 12,$1A
  !c6
  db 12,$2A
  !c6
  db 12,$2B
  !c6
  db 12,$4A
  !b5
  !rest
  db 12,$1D
  !e6
  db 12,$2C
  !e6
  db 12,$2B
  !ds6
  db 12,$7C
  !e6
  db 12,$7B
  !ds6
  db 12,$7D
  !e6
  db 12,$7C
  !ds6
  db 18,$4A
  !e6
  db 18,$44
  !e6
  db 18,$5C
  !g6
  db 18,$54
  !g6
  db 24,$7B
  !a6
  db 60
  !tie
  db 12,$7C
  !as6
  db 12,$74
  !as6
  db 12,$7A
  !a6
  db 18,$3B
  !e6
  db 18,$34
  !e6
  db 18,$4B
  !g6
  db 18,$44
  !g6
  db 24,$7B
  !a6
  db 60
  !tie
  db 12,$6D
  !as6
  db 12,$64
  !as6
  db 12,$49
  !a6
  db 18,$2B
  !e6
  db 18,$24
  !e6
  db 18,$3C
  !g6
  db 18,$34
  !g6
  db 24,$7C
  !a6
  db 60
  !tie
  db 12,$7C
  !as6
  db 12,$74
  !as6
  db 12,$4D
  !a6
  db 96,$7C
  !fs6
  !tie
  db 96,$7B
  !fs6
  !tie
  !end

.pattern1_5
  !volume,208
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  !loop : dw .sub2DE0 : db 10
  db 12,$48
  !b4
  db 12,$48
  !b4
  db 12,$48
  !b4
  db 12,$48
  !b4
  db 6,$48
  !b4
  db 6,$47
  !b4
  db 12,$48
  !b4
  db 12,$48
  !b4
  db 12,$48
  !b4
  db 12,$48
  !as4
  db 12,$48
  !as4
  db 12,$48
  !as4
  db 12,$48
  !as4
  db 6,$48
  !a4
  db 6,$47
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  !loop : dw .sub2DE0 : db 4
  !loop : dw .sub2DFC : db 2
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !c5
  db 6,$48
  !c5
  db 6,$47
  !c5
  db 12,$48
  !c5
  db 12,$48
  !d5
  db 6,$48
  !d5
  db 6,$47
  !d5
  db 12,$48
  !d5
  db 12,$48
  !d5
  db 12,$4A
  !d5
  db 12,$48
  !d5
  db 6,$48
  !d5
  db 6,$47
  !d5
  db 12,$48
  !d5
  db 12,$48
  !d5
  db 12,$48
  !d5
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !c5
  db 6,$48
  !c5
  db 6,$47
  !c5
  db 12,$48
  !c5
  db 12,$48
  !d5
  db 6,$48
  !d5
  db 6,$47
  !d5
  db 12,$48
  !d5
  db 12,$48
  !d5
  db 12,$4A
  !d5
  db 12,$48
  !d5
  db 6,$48
  !d5
  db 6,$47
  !d5
  db 12,$48
  !d5
  db 12,$48
  !d5
  db 12,$47
  !d5
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !c5
  db 6,$48
  !c5
  db 6,$47
  !c5
  db 12,$48
  !c5
  db 12,$48
  !d5
  db 6,$48
  !d5
  db 6,$47
  !d5
  db 12,$48
  !d5
  db 12,$48
  !d5
  db 12,$4A
  !d5
  db 12,$48
  !d5
  db 6,$48
  !d5
  db 6,$47
  !d5
  db 12,$48
  !d5
  db 12,$48
  !d5
  db 6,$48
  !d5
  db 6,$47
  !d5
  !loop : dw .sub2E18 : db 2
  !loop : dw .sub2E37 : db 2
  !end

.pattern1_6
  !volume,208
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 6,$48
  !e4
  db 6,$47
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  !loop : dw .sub2E56 : db 10
  db 12,$48
  !e5
  db 12,$48
  !e5
  db 12,$48
  !e5
  db 12,$48
  !e5
  db 6,$48
  !e5
  db 6,$47
  !e5
  db 12,$48
  !e5
  db 12,$48
  !e5
  db 12,$48
  !e5
  db 12,$48
  !ds4
  db 12,$48
  !ds4
  db 12,$48
  !ds4
  db 12,$48
  !ds4
  db 6,$48
  !d4
  db 6,$47
  !d4
  db 12,$48
  !d4
  db 12,$48
  !d4
  db 12,$48
  !d4
  !loop : dw .sub2E56 : db 4
  db 96
  !rest
  !rest
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 6,$48
  !g4
  db 6,$47
  !g4
  db 12
  !g4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$4A
  !a4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 6,$48
  !g4
  db 6,$47
  !g4
  db 12
  !g4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$4A
  !a4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$47
  !a4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 6,$48
  !g4
  db 6,$47
  !g4
  db 12
  !g4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$4A
  !a4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  !loop : dw .sub2E72 : db 2
  !loop : dw .sub2E91 : db 2
  !end

.pattern1_7
  !volume,198
  db 96,$78
  %percNote(!instr09-!instr06)
  !loop : dw .sub2EB0 : db 16
  %percNote(!instr09-!instr06)
  !loop : dw .sub2EB0 : db 7
  !instr,!instr02
  !volume,166
  db 96,$7C
  !c7
  !tie
  db 96,$7B
  !b6
  !tie
  !end

.sub2CD1
  db 6,$7E
  !a4
  db 12,$7D
  !a4
  db 18,$7C
  !g4
  db 24,$7D
  !a4
  db 24,$7C
  !c5
  db 12,$7D
  !d5
  db 96
  !tie
  !end

.sub2CE6
  db 12,$2B
  !a3
  db 12,$6A
  !a3
  db 12,$6B
  !c4
  db 12,$39
  !a3
  db 12,$2B
  !a3
  db 12,$6A
  !a3
  db 12,$6B
  !c4
  db 12,$6A
  !d4
  !end

.sub2CFF
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 12,$7C
  %percNote(!instr06-!instr06)
  !end

.sub2D10
  db 6,$7E
  !a3
  db 12,$7D
  !a3
  db 18,$7C
  !g3
  db 24,$7D
  !a3
  db 24,$7C
  !c4
  db 12,$7D
  !d4
  db 96
  !tie
  !end

.sub2D25
  db 12
  !tie
  db 12,$7D
  !f6
  db 12,$7E
  !e6
  db 12,$7C
  !b5
  db 48,$7D
  !ds6
  db 96
  !d6
  db 12
  !tie
  db 12,$7D
  !cs6
  db 12,$74
  !cs6
  db 12,$7D
  !a5
  db 12,$7E
  !c6
  db 12,$74
  !c6
  db 12,$7D
  !f6
  db 12,$7D
  !ds6
  !tie
  db 84,$7D
  !e6
  db 48
  !tie
  !dynamicVolume,48,31
  !tie
  !end

.sub2D57
  !tie
  db 30,$6D
  !gs6
  db 30,$64
  !gs6
  db 12,$7C
  !e6
  db 12,$74
  !e6
  db 48,$7D
  !g6
  db 12,$74
  !g6
  db 36,$7D
  !f6
  db 12
  !tie
  db 84,$7D
  !d6
  !dynamicVolume,96,31
  db 96
  !tie
  !end

.sub2D78
  db 36,$78
  !e5
  db 36,$78
  !g5
  db 24
  !a5
  db 60
  !tie
  db 24,$78
  !as5
  db 12,$79
  !a5
  !end

.sub2D89
  db 12,$2C
  !a3
  db 12,$7C
  !a3
  db 12,$7C
  !c4
  db 12,$1C
  !a3
  db 12,$1B
  !a3
  db 12,$7B
  !a3
  db 12,$7C
  !ds4
  db 12,$7B
  !e4
  !end

.sub2DA2
  db 12,$2C
  !d4
  db 12,$7C
  !d4
  db 12,$7C
  !f4
  db 12,$1C
  !d4
  db 12,$1B
  !d4
  db 12,$7B
  !d4
  db 12,$7C
  !gs4
  db 12,$7B
  !a4
  !end

.sub2DBB
  db 18,$0D
  !a3
  db 18,$04
  !a3
  db 30,$6C
  !a3
  db 30,$64
  !a3
  !end

.sub2DC8
  db 60
  !tie
  db 24,$6C
  !ds4
  db 12,$7B
  !d4
  db 18,$2D
  !a3
  db 18,$24
  !a3
  db 18,$6D
  !c4
  db 18,$64
  !c4
  db 24,$7C
  !d4
  !end

.sub2DE0
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  !end

.sub2DFC
  db 12,$78
  !a3
  db 12,$78
  !a3
  db 12,$78
  !a3
  db 12,$78
  !a3
  db 6,$78
  !a3
  db 6,$77
  !a3
  db 12,$78
  !a3
  db 12,$78
  !a3
  db 12,$78
  !a3
  !end

.sub2E18
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  db 12,$48
  !a4
  db 12,$48
  !a4
  db 6,$48
  !a4
  db 6,$47
  !a4
  !end

.sub2E37
  db 12,$48
  !gs4
  db 12,$48
  !gs4
  db 12,$48
  !gs4
  db 12,$48
  !gs4
  db 6,$48
  !gs4
  db 6,$47
  !gs4
  db 12,$48
  !gs4
  db 12,$48
  !gs4
  db 6,$48
  !gs4
  db 6,$47
  !gs4
  !end

.sub2E56
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 6,$48
  !e4
  db 6,$47
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  db 12,$48
  !e4
  !end

.sub2E72
  db 12,$48
  !ds4
  db 12,$48
  !ds4
  db 12,$48
  !ds4
  db 12,$48
  !ds4
  db 6,$48
  !ds4
  db 6,$47
  !ds4
  db 12,$48
  !ds4
  db 12,$48
  !ds4
  db 6,$48
  !ds4
  db 6,$47
  !ds4
  !end

.sub2E91
  db 12,$48
  !d4
  db 12,$48
  !d4
  db 12,$48
  !d4
  db 12,$48
  !d4
  db 6,$48
  !d4
  db 6,$47
  !d4
  db 12,$48
  !d4
  db 12,$48
  !d4
  db 6,$48
  !d4
  db 6,$47
  !d4
  !end

.sub2EB0
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
