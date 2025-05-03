asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr01 = $16
!instr02 = $17
!instr03 = $18
!instr04 = $19
!instr05 = $1A
!instr06 = $1B
!instr07 = $1C
!instr08 = $1D
!instr09 = $1E

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr03,$FF,$E8,$B8,$04,$70
  db !instr04,$FF,$EB,$B8,$01,$C0
  db !instr05,$FF,$E8,$B8,$02,$30
  db !instr06,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$E0,$B8,$03,$C0
  db !instr08,$FF,$E0,$B8,$07,$A0
  db !instr09,$FC,$F1,$B8,$03,$E0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample01,Sample01+153
  dw Sample02,Sample02+27
  dw Sample03,Sample03+1656
  dw Sample04,Sample04+1917
  dw Sample05,Sample05+1233
  dw Sample06,Sample06+1116
  dw Sample07,Sample07+1530
  dw Sample08,Sample08+522
  dw Sample09,Sample09+549
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample03: incbin "Sample_20a0f198c8c311ee11fb58d9c55f3825.brr"
  Sample04: incbin "Sample_78d4418a22588a299a724b5a7fc922a7.brr"
  Sample05: incbin "Sample_109c5729f128f87a93842e99c2b20c67.brr"
  Sample06: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample07: incbin "Sample_c38c118110713ed94b98dc70871a6061.brr"
  Sample08: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"
  Sample09: incbin "Sample_5cac8ed5aaaa86695a684f7f807906cc.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2404

Tracker2404:
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
  !tempo,30
  !instr,!instr03
  !volume,104
  !vibrato,24,30,128
  !subtranspose,72
  db 12,$2C
  !g4
  db 12,$2C
  !g5
  db 6,$6D
  !fs5
  db 12,$6C
  !g5
  db 18,$7C
  !as5
  db 12,$4B
  !g5
  db 6,$7A
  !d5
  db 6,$7B
  !cs5
  db 12,$7C
  !c5
  !loop : dw .sub2D7A : db 1
  db 96,$0D
  !g6
  db 12
  !rest
  db 24,$08
  !g4
  db 24,$08
  !g4
  db 24,$08
  !g4
  db 12,$08
  !g4
  !loop : dw .sub2DBA : db 2
  !end

.pattern0_1
  !instr,!instr05
  !volume,104
  !pan,13
  !subtranspose,86
  db 12
  !rest
  db 6,$5C
  !g5
  db 12
  !rest
  db 6,$5B
  !g5
  db 12
  !rest
  db 36,$7C
  !g5
  db 12,$73
  !g5
  db 6
  !tie
  !rest
  db 6,$5D
  !g5
  db 12
  !rest
  db 6,$5B
  !g5
  db 12
  !rest
  db 36,$7C
  !g5
  db 12,$73
  !g5
  db 6
  !tie
  !rest
  db 6,$5C
  !g5
  db 12
  !rest
  db 6,$5C
  !g5
  db 12
  !rest
  db 36,$7C
  !g5
  db 12,$73
  !g5
  db 6
  !tie
  !rest
  db 6,$5C
  !g5
  db 12
  !rest
  db 6,$5C
  !g5
  db 12
  !rest
  db 12,$7C
  !as5
  db 6
  !rest
  db 12
  !c6
  db 6
  !rest
  db 6,$5B
  !d6
  db 6,$73
  !c6
  db 30,$7D
  !g6
  db 18,$73
  !g6
  db 48
  !rest
  db 12
  !rest
  db 6,$5D
  !g5
  db 12
  !rest
  db 6,$5B
  !g5
  db 12
  !rest
  db 48,$7B
  !g5
  db 18,$73
  !g5
  db 78
  !rest
  db 12
  !rest
  db 6,$5B
  !g5
  db 12
  !rest
  db 6,$5B
  !g5
  db 12
  !rest
  db 6,$5B
  !f5
  !rest
  db 6,$2A
  !f5
  db 18,$7D
  !g5
  db 12,$73
  !g5

.pattern0_2
  !instr,!instr01
  !volume,187
  db 12,$1D
  !g3
  db 18,$0C
  !g3
  db 18,$0C
  !g3
  db 12,$7D
  !g3
  db 18,$7C
  !g4
  db 6
  !fs4
  db 12,$7C
  !f4
  db 12,$1D
  !g3
  db 18,$0C
  !g3
  db 18,$0C
  !g3
  db 12,$7D
  !g3
  db 24,$7D
  !g4
  db 6,$6C
  !fs4
  db 6,$5C
  !f4
  db 12,$1D
  !g3
  db 18,$0C
  !g3
  db 18,$0C
  !g3
  db 12,$7D
  !g3
  db 18,$7C
  !g4
  db 6
  !fs4
  db 12,$7C
  !f4
  db 12,$1D
  !g3
  db 18,$0C
  !g3
  db 18,$0C
  !g3
  db 18,$4B
  !g3
  db 18,$1C
  !g4
  db 12,$7B
  !f4
  db 12,$0C
  !g3
  db 18,$0D
  !g3
  db 18,$0C
  !g3
  db 18,$6D
  !g3
  db 18,$6B
  !as3
  db 12,$7B
  !g3
  !rest
  db 18,$0D
  !g3
  db 18,$0C
  !g3
  db 18,$6D
  !g3
  db 18,$6B
  !as3
  db 12,$7B
  !g3
  db 12,$0C
  !g3
  db 6,$4D
  !g3
  db 12,$0C
  !g3
  db 12,$1C
  !g3
  db 6,$1C
  !g3
  db 18,$6D
  !g3
  db 18,$6B
  !as3
  db 12,$7B
  !g3
  !rest
  db 18,$0D
  !g3
  db 18,$0C
  !g3
  db 12,$1D
  !f3
  db 6,$4B
  !f3
  db 30,$7B
  !g3

.pattern0_3
  !volume,198
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  !loop : dw .sub2DC8 : db 2
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  !loop : dw .sub2DC8 : db 2
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  !rest
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  !rest
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)

.pattern0_4
  !instr,!instr02
  !volume,125
  !pan,10
  !subtranspose,29
  db 96,$7B
  !g6
  !tie
  !tie
  db 48
  !tie
  db 18,$79
  !as6
  db 18,$7A
  !c7
  db 12,$7A
  !d7
  db 96,$77
  !g7
  db 84,$7A
  !d7
  db 6,$79
  !fs7
  db 6,$79
  !f7
  db 36,$79
  !as6
  db 60
  !d7
  db 96
  !d7

.pattern0_5
  !instr,!instr05
  !volume,104
  !pan,7
  !subtranspose,84
  db 12
  !rest
  db 6,$5C
  !d5
  db 12
  !rest
  db 6,$5B
  !d5
  db 12
  !rest
  db 36,$7C
  !d5
  db 12,$73
  !d5
  db 6
  !tie
  !rest
  db 6,$5D
  !d5
  db 12
  !rest
  db 6,$5B
  !d5
  db 12
  !rest
  db 36,$7C
  !d5
  db 12,$73
  !d5
  db 6
  !tie
  !rest
  db 6,$5C
  !d5
  db 12
  !rest
  db 6,$5C
  !d5
  db 12
  !rest
  db 36,$7C
  !d5
  db 12,$73
  !d5
  db 6
  !tie
  !rest
  db 6,$5C
  !d5
  db 12
  !rest
  db 6,$5C
  !d5
  db 12
  !rest
  db 12,$7C
  !g5
  db 6
  !rest
  db 12
  !a5
  db 6
  !rest
  db 6,$5B
  !as5
  db 6,$73
  !a5
  db 30,$7D
  !d6
  db 18,$73
  !d6
  db 48
  !rest
  db 12
  !rest
  db 6,$5D
  !d5
  db 12
  !rest
  db 6,$5B
  !d5
  db 12
  !rest
  db 48,$7B
  !d5
  db 18,$73
  !d5
  db 78
  !rest
  db 12
  !rest
  db 6,$5B
  !d5
  db 12
  !rest
  db 6,$5B
  !d5
  db 12
  !rest
  db 6,$5B
  !c5
  !rest
  db 6,$5A
  !c5
  db 18,$7D
  !d5
  db 12,$73
  !d5

.pattern0_6
  db 18
  !rest
  !instr,!instr03
  !volume,73
  !vibrato,24,30,128
  !subtranspose,80
  db 12,$2C
  !g4
  db 12,$2C
  !g5
  db 6,$6D
  !fs5
  db 12,$6C
  !g5
  db 18,$7C
  !as5
  db 12,$4B
  !g5
  db 6,$7A
  !d5
  db 6,$7B
  !cs5
  db 12,$7C
  !c5
  !loop : dw .sub2D7A : db 1
  db 96,$0D
  !g6
  db 12
  !rest
  db 24,$08
  !g4
  db 24,$08
  !g4
  db 24,$08
  !g4
  db 12,$08
  !g4
  !rest
  db 24,$08
  !g4
  db 24,$08
  !g4
  db 24,$08
  !g4
  db 12,$08
  !g4
  !rest
  db 24,$08
  !g4
  db 24,$08
  !g4
  db 18,$08
  !g4

.pattern0_7
  !volume,198
  db 96,$79
  %percNote(!instr09-!instr06)
  !rest
  %percNote(!instr09-!instr06)
  !rest
  %percNote(!instr09-!instr06)
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest

.pattern1_0
  !instr,!instr03
  !volume,104
  !vibrato,24,30,128
  !subtranspose,72
  !pan,10
  db 6,$7C
  !g5
  db 12,$7D
  !d6
  db 6,$7C
  !g5
  db 12,$7D
  !d6
  db 6,$6C
  !g5
  db 12,$7D
  !d6
  db 6,$6C
  !g5
  db 12,$7C
  !d6
  db 6,$7D
  !g5
  !d6
  db 6,$7D
  !cs6
  db 6,$6D
  !c6
  !loop : dw .sub2DF3 : db 1
  db 18,$7D
  !ds6
  db 30,$0E
  !c6
  db 12,$3C
  !ds7
  db 6,$6B
  !ds7
  db 18,$7B
  !c7
  db 6,$0E
  !c6
  db 6,$4D
  !c6
  db 12,$7D
  !fs6
  db 6,$7C
  !c6
  db 12,$7D
  !fs6
  db 6,$7D
  !c6
  db 12,$7D
  !fs6
  db 6,$7C
  !c6
  db 12,$7D
  !fs6
  db 6,$7C
  !c6
  db 12
  !fs6
  db 12,$7C
  !c6
  db 12,$7D
  !g6
  db 6,$7C
  !cs6
  db 12,$7D
  !g6
  db 6,$7D
  !cs6
  db 12,$7D
  !g6
  db 6,$7C
  !cs6
  db 12,$7D
  !g6
  db 6,$7C
  !cs6
  db 12
  !g6
  db 12,$7C
  !cs6
  db 12,$7D
  !gs6
  db 6,$7C
  !d6
  db 12,$7D
  !gs6
  db 6,$7D
  !d6
  db 12,$7D
  !gs5
  db 6,$7C
  !d5
  db 12,$7D
  !gs5
  db 12,$7C
  !d6
  db 6,$7D
  !e6
  !gs6
  !b6
  db 90,$7D
  !d7
  db 6,$74
  !d7
  !instr,!instr04
  !volume,125
  !vibrato,24,24,128
  !subtranspose,28
  !pan,13
  !dynamicPan,96,7
  db 6,$6B
  !g7
  db 6,$6C
  !ds7
  db 6,$6B
  !d7
  db 6,$6B
  !c7
  db 6,$6C
  !d7
  db 6,$6C
  !c7
  db 6,$6C
  !d7
  db 6,$6C
  !ds7
  db 6,$6D
  !d7
  db 6,$6C
  !c7
  db 6,$6B
  !gs6
  db 6,$6A
  !g6
  db 6,$6C
  !gs6
  db 6,$6B
  !g6
  db 6,$6C
  !gs6
  db 6,$6C
  !c7
  !loop : dw .sub2E78 : db 1
  !loop : dw .sub2F35 : db 2
  !pan,12
  db 12,$7C
  !g6
  db 6,$7B
  !fs6
  db 18,$7C
  !g6
  db 12,$7D
  !fs6
  db 12,$7D
  !g6
  db 12,$7D
  !fs6
  !g6
  db 6,$7C
  !gs6
  db 6,$7B
  !a6
  db 96,$7E
  !as6
  !tie
  !end

.pattern1_1
  !loop : dw .sub2F94 : db 4
  !loop : dw .sub2FBB : db 4
  db 6,$22
  !c5
  db 6,$73
  !c6
  db 18,$0B
  !fs5
  db 18,$1B
  !fs5
  db 48,$6B
  !fs5
  db 12,$63
  !fs5
  db 18,$0C
  !g5
  db 18,$0A
  !g5
  db 48,$7A
  !g5
  db 12,$73
  !g5
  db 18,$0A
  !gs5
  !gs5
  db 18,$5B
  !gs5
  db 3,$7A
  !gs5
  db 15,$73
  !gs5
  db 12,$0C
  !gs5
  db 6
  !rest
  db 6,$24
  !gs5
  db 18,$0B
  !d6
  db 18,$1B
  !d6
  db 12,$0D
  !d6
  db 6,$4C
  !d6
  db 30,$6C
  !d6
  !loop : dw .sub2FE2 : db 1
  db 6,$49
  !g4
  db 6,$23
  !c6
  db 6,$5A
  !c6
  db 6,$42
  !g4
  db 6,$19
  !g4
  db 6,$3B
  !c6
  !rest
  db 6,$29
  !g4
  db 12,$6A
  !b5
  db 6,$29
  !g4
  db 6,$5A
  !b5
  db 6,$73
  !b5
  db 6,$29
  !g4
  db 12,$4B
  !b5
  !loop : dw .sub2FE2 : db 1
  db 6,$49
  !g4
  db 6,$23
  !c6
  db 6,$5A
  !g5
  db 6,$42
  !g4
  db 6,$19
  !g4
  db 6,$3B
  !g5
  !rest
  db 6,$29
  !g4
  db 12,$6A
  !b5
  db 6,$29
  !g4
  db 6,$5A
  !b5
  db 6,$73
  !b5
  db 6,$29
  !g4
  db 12,$4B
  !b5
  db 6,$49
  !g4
  db 6,$23
  !b5
  db 6,$5A
  !d6
  db 6,$42
  !g4
  db 6,$19
  !g4
  db 6,$3B
  !d6
  !rest
  db 6,$29
  !g4
  db 12,$6A
  !f6
  db 6,$29
  !g4
  db 6,$5A
  !f6
  db 6,$73
  !f6
  db 6,$29
  !g4
  db 12,$4B
  !f6
  !loop : dw .sub3059 : db 3

.pattern1_2
  db 12,$1D
  !g3
  db 18,$0C
  !g3
  db 18,$0C
  !g3
  db 18,$4B
  !g3
  db 18,$1C
  !g3
  db 12,$7B
  !g3
  db 12,$0C
  !g3
  db 18,$0D
  !g3
  db 18,$0C
  !g3
  db 18,$6D
  !g3
  db 18,$6B
  !as3
  db 12,$7B
  !g3
  db 12,$1D
  !g3
  db 18,$0C
  !g3
  db 18,$0C
  !g3
  db 18,$4B
  !g3
  db 18,$1C
  !g3
  db 12,$7B
  !g3
  db 12,$0C
  !g3
  db 18,$0D
  !g3
  db 18,$0C
  !g3
  db 18,$6D
  !g3
  db 18,$6B
  !a3
  db 12,$7B
  !as3
  db 12,$1D
  !c4
  db 18,$0C
  !c4
  db 18,$0C
  !c4
  db 18,$4B
  !c4
  db 18,$1C
  !c4
  db 12,$7B
  !c4
  db 12,$0C
  !c4
  db 18,$0D
  !c4
  db 18,$0C
  !c4
  db 18,$6D
  !c4
  db 18,$6B
  !ds4
  db 12,$7B
  !c4
  db 12,$1D
  !c4
  db 18,$0C
  !c4
  db 18,$0C
  !c4
  db 18,$4B
  !c4
  db 18,$1C
  !c4
  db 12,$7B
  !c4
  db 12,$0C
  !c4
  db 18,$0D
  !c4
  db 18,$0C
  !c4
  db 18,$6D
  !c4
  db 18,$6B
  !c4
  db 12,$7B
  !as3
  db 12,$1D
  !d4
  db 18,$0C
  !d4
  db 18,$0C
  !d4
  db 18,$4B
  !d4
  db 18,$1C
  !d4
  db 12,$7B
  !d4
  db 12,$1D
  !ds4
  db 18,$0C
  !ds4
  db 18,$0C
  !ds4
  db 18,$4B
  !ds4
  db 18,$1C
  !ds4
  db 12,$7B
  !ds4
  !loop : dw .sub3072 : db 2
  !loop : dw .sub3085 : db 1
  db 12,$1D
  !g3
  db 18,$0C
  !g3
  db 18,$0C
  !g3
  db 18,$4B
  !g3
  db 18,$1C
  !g3
  db 12,$7B
  !g3
  !loop : dw .sub3085 : db 1
  db 12,$1D
  !g3
  db 18,$0C
  !g3
  db 18,$0C
  !g3
  db 18,$4B
  !b3
  db 18,$1C
  !b3
  db 12,$7B
  !b3
  db 12,$1D
  !d4
  db 18,$0C
  !d4
  db 18,$0C
  !d4
  db 18,$4B
  !f4
  db 18,$1C
  !f4
  db 12,$7B
  !f4
  !loop : dw .sub30BC : db 3

.pattern1_3
  !loop : dw .sub2DC8 : db 11
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 12,$7F
  %percNote(!instr07-!instr06)
  db 6
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  !loop : dw .sub30D3 : db 3
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)
  !loop : dw .sub2DC8 : db 7
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  %percNote(!instr07-!instr06)

.pattern1_4
  db 96,$79
  !g5
  db 84
  !tie
  db 12,$78
  !d6
  db 96,$79
  !g6
  db 84
  !tie
  db 12,$79
  !fs6
  db 96,$7A
  !c6
  db 84
  !tie
  db 12,$69
  !g6
  db 96,$7A
  !c6
  db 96,$78
  !tie
  db 96,$79
  !d6
  db 96,$7B
  !ds6
  !e6
  db 96,$78
  !tie
  db 96,$78
  !c6
  db 96,$79
  !c6
  db 96,$7A
  !c6
  db 36
  !c6
  db 60,$5F
  !b5
  db 60,$78
  !c6
  db 24,$79
  !d6
  db 12,$68
  !ds6
  db 96,$79
  !gs6
  db 96,$78
  !f6
  db 48,$79
  !g6
  db 48,$79
  !b6
  db 48,$7A
  !d7
  db 48,$7A
  !f7
  db 96,$7A
  !g7
  !tie
  !tie

.pattern1_5
  !loop : dw .sub3102 : db 4
  !loop : dw .sub3129 : db 4
  db 6,$22
  !c5
  db 6,$73
  !g5
  db 18,$0B
  !d5
  db 18,$1B
  !d5
  db 48,$6B
  !d5
  db 12,$63
  !d5
  db 18,$0C
  !ds5
  db 18,$0A
  !ds5
  db 48,$7A
  !ds5
  db 12,$73
  !ds5
  db 18,$0A
  !e5
  !e5
  db 18,$5B
  !e5
  db 3,$7A
  !e5
  db 15,$73
  !e5
  db 12,$0C
  !e5
  db 6
  !rest
  db 6,$24
  !e5
  db 18,$0B
  !gs5
  db 18,$1B
  !gs5
  db 12,$0D
  !gs5
  db 6,$4C
  !gs5
  db 30,$6C
  !gs5
  !loop : dw .sub3150 : db 1
  db 6,$49
  !g4
  db 6,$23
  !f5
  db 6,$5A
  !g5
  db 6,$42
  !g4
  db 6,$19
  !g4
  db 6,$3B
  !g5
  !rest
  db 6,$29
  !g4
  db 12,$6A
  !g5
  db 6,$29
  !g4
  db 6,$5A
  !g5
  db 6,$73
  !g5
  db 6,$29
  !g4
  db 12,$4B
  !g5
  !loop : dw .sub3150 : db 1
  db 6,$49
  !g4
  db 6,$23
  !f5
  db 6,$5A
  !d5
  db 6,$42
  !g4
  db 6,$19
  !g4
  db 6,$3B
  !d5
  !rest
  db 6,$29
  !g4
  db 12,$6A
  !g5
  db 6,$29
  !g4
  db 6,$5A
  !g5
  db 6,$73
  !g5
  db 6,$29
  !g4
  db 12,$4B
  !g5
  db 6,$49
  !g4
  db 6,$23
  !g5
  db 6,$5A
  !b5
  db 6,$42
  !g4
  db 6,$19
  !g4
  db 6,$3B
  !b5
  !rest
  db 6,$29
  !g4
  db 12,$6A
  !d6
  db 6,$29
  !g4
  db 6,$5A
  !d6
  db 6,$73
  !d6
  db 6,$29
  !g4
  db 12,$4B
  !d6
  !loop : dw .sub3059 : db 3

.pattern1_6
  db 18
  !rest
  !instr,!instr03
  !volume,73
  !vibrato,24,30,128
  !subtranspose,80
  !pan,10
  db 6,$7C
  !g5
  db 12,$7D
  !d6
  db 6,$7C
  !g5
  db 12,$7D
  !d6
  db 6,$6C
  !g5
  db 12,$7D
  !d6
  db 6,$6C
  !g5
  db 12,$7C
  !d6
  db 6,$7D
  !g5
  !d6
  db 6,$7D
  !cs6
  db 6,$6D
  !c6
  !loop : dw .sub2DF3 : db 1
  db 18,$7D
  !ds6
  db 30,$0E
  !c6
  db 12,$3C
  !ds7
  db 6,$6B
  !ds7
  db 12,$7B
  !c7
  !volume,83
  db 12,$7D
  !d6
  db 6,$7C
  !c6
  db 12,$7D
  !d6
  db 6,$7D
  !c6
  db 12,$7D
  !d6
  db 6,$7C
  !c6
  db 12,$7D
  !d6
  db 6,$7C
  !c6
  db 12
  !d6
  db 12,$7C
  !c6
  db 12,$7D
  !ds6
  db 6,$7C
  !cs6
  db 12,$7D
  !ds6
  db 6,$7D
  !cs6
  db 12,$7D
  !ds6
  db 6,$7C
  !cs6
  db 12,$7D
  !ds6
  db 6,$7C
  !cs6
  db 12
  !ds6
  db 12,$7C
  !cs6
  db 12,$7D
  !e6
  db 6,$7C
  !d6
  db 12,$7D
  !e6
  db 6,$7D
  !d6
  db 12,$7D
  !e5
  db 6,$7C
  !d5
  db 12,$7D
  !e5
  db 12,$7C
  !d5
  db 6,$7D
  !e5
  !gs5
  !b5
  db 90,$7D
  !d6
  db 6,$74
  !d6
  db 18
  !tie
  !instr,!instr04
  !volume,78
  !vibrato,24,24,128
  !subtranspose,36
  !pan,13
  !dynamicPan,96,7
  db 6,$6B
  !g7
  db 6,$6C
  !ds7
  db 6,$6B
  !d7
  db 6,$6B
  !c7
  db 6,$6C
  !d7
  db 6,$6C
  !c7
  db 6,$6C
  !d7
  db 6,$6C
  !ds7
  db 6,$6D
  !d7
  db 6,$6C
  !c7
  db 6,$6B
  !gs6
  db 6,$6A
  !g6
  db 6,$6C
  !gs6
  db 6,$6B
  !g6
  db 6,$6C
  !gs6
  db 6,$6C
  !c7
  !loop : dw .sub2E78 : db 1
  !loop : dw .sub2F35 : db 1
  !dynamicPan,96,13
  db 6,$6C
  !g7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  !c7
  db 6,$6D
  !g7
  !ds7
  db 6,$6C
  !d7
  db 6,$6C
  !c7
  db 6,$6D
  !g7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  db 6,$6D
  !c7
  db 6,$6D
  !g7
  db 6,$6C
  !ds7
  db 6,$6D
  !d7
  db 6,$6D
  !c7
  !dynamicPan,78,7
  db 6,$6C
  !g7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  !c7
  db 6,$6D
  !g7
  !ds7
  db 6,$6C
  !d7
  db 6,$6C
  !c7
  db 6,$6D
  !g7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  db 6,$6D
  !c7
  db 6,$6D
  !g7
  !volume,104
  !pan,8
  db 12,$7C
  !d6
  db 6,$7B
  !cs6
  db 18,$7C
  !d6
  db 12,$7D
  !cs6
  db 12,$7D
  !d6
  db 12,$7D
  !cs6
  !d6
  db 6,$7C
  !ds6
  db 6,$7B
  !e6
  db 96,$7E
  !f6
  !tie

.pattern1_7
  db 96,$79
  %percNote(!instr09-!instr06)
  !loop : dw .sub31C7 : db 7
  %percNote(!instr09-!instr06)
  %percNote(!instr09-!instr06)
  %percNote(!instr09-!instr06)
  db 12
  !rest
  db 36
  %percNote(!instr09-!instr06)
  db 48
  %percNote(!instr09-!instr06)
  db 96
  %percNote(!instr09-!instr06)
  !rest
  !rest
  !rest
  %percNote(!instr09-!instr06)
  !rest
  !rest
  db 48
  !rest
  %percNote(!instr09-!instr06)
  !tie
  %percNote(!instr09-!instr06)
  !tie
  !rest
  db 24
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest
  !rest

.sub2D7A
  db 12,$1D
  !g4
  db 12,$1D
  !g5
  db 6,$7B
  !fs5
  db 12,$6C
  !g5
  db 54,$7D
  !as5
  db 12,$1C
  !g4
  db 12,$1D
  !g5
  db 6,$7C
  !fs5
  db 12,$7C
  !g5
  db 18,$7D
  !as5
  db 12,$7D
  !g5
  db 6,$7D
  !d5
  db 6,$6C
  !cs5
  db 12,$7B
  !c5
  db 12,$1C
  !g4
  db 12,$1D
  !g5
  db 6,$7C
  !fs5
  db 18,$3B
  !g5
  db 18,$7C
  !as5
  db 18,$7D
  !c6
  db 12,$7C
  !d6
  !end

.sub2DBA
  !rest
  db 24,$08
  !g4
  db 24,$08
  !g4
  db 24,$08
  !g4
  db 12,$08
  !g4
  !end

.sub2DC8
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  !end

.sub2DF3
  db 18,$7D
  !as5
  db 78,$0E
  !g5
  db 6,$7C
  !g5
  db 12,$7D
  !d6
  db 6,$7C
  !g5
  db 12,$7D
  !d6
  db 6,$6C
  !g5
  db 12,$7D
  !d6
  db 6,$6C
  !g5
  db 12,$7C
  !d6
  db 6,$7D
  !g5
  !d6
  db 6,$7D
  !cs6
  db 6,$6D
  !c6
  db 18,$7D
  !as5
  db 30,$0E
  !g5
  db 18,$7C
  !as6
  db 30,$0B
  !g6
  db 6,$7C
  !c6
  db 12,$7D
  !g6
  db 6,$7C
  !c6
  db 12,$7D
  !g6
  db 6,$6C
  !c6
  db 12,$7D
  !g6
  db 6,$6C
  !c6
  db 12,$7C
  !g6
  db 6,$7D
  !c6
  !g6
  db 6,$7D
  !fs6
  db 6,$6D
  !f6
  db 18,$7D
  !ds6
  db 30,$0E
  !c6
  db 18,$7C
  !ds7
  db 30,$0B
  !c7
  db 6,$7C
  !c6
  db 12,$7D
  !g6
  db 6,$7C
  !c6
  db 12,$7D
  !g6
  db 6,$6C
  !c6
  db 12,$7D
  !g6
  db 6,$6C
  !c6
  db 12,$7C
  !g6
  db 6,$7D
  !c6
  !g6
  db 6,$7D
  !fs6
  db 6,$6D
  !f6
  !end

.sub2E78
  !dynamicPan,96,13
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  db 6,$6C
  !c7
  db 6,$6C
  !g6
  db 6,$6C
  !d7
  db 6,$6D
  !c7
  db 6,$6C
  !g6
  db 6,$6D
  !c7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  !c7
  db 6,$6C
  !g6
  db 6,$6D
  !d7
  db 6,$6C
  !c7
  db 6,$67
  !g6
  db 6,$6C
  !c7
  !dynamicPan,96,7
  db 6,$6D
  !d7
  db 6,$6C
  !gs6
  db 6,$6A
  !g6
  db 6,$6B
  !f6
  db 6,$6C
  !gs6
  db 6,$6B
  !g6
  db 6,$6A
  !f6
  db 6,$6C
  !d6
  db 6,$6B
  !f6
  !g6
  !f6
  db 6,$6A
  !g6
  db 6,$6C
  !f6
  db 6,$6D
  !g6
  !gs6
  db 6,$6E
  !c7
  !dynamicPan,96,13
  db 6,$6C
  !d7
  db 6,$6C
  !c7
  db 6,$6B
  !gs6
  db 6,$6B
  !g6
  db 6,$6C
  !gs6
  db 6,$6B
  !g6
  db 6,$6B
  !ds6
  db 6,$6A
  !g6
  db 6,$6B
  !ds6
  !g6
  db 6,$6B
  !gs6
  db 6,$6C
  !c7
  !d7
  db 6,$6C
  !c7
  db 6,$6D
  !d7
  db 6,$6E
  !ds7
  !dynamicPan,96,7
  db 6,$6C
  !g7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  !c7
  db 6,$6D
  !g7
  !ds7
  db 6,$6C
  !d7
  db 6,$6C
  !c7
  db 6,$6D
  !g7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  db 6,$6D
  !c7
  db 6,$6D
  !g7
  db 6,$6C
  !ds7
  db 6,$6D
  !d7
  db 6,$6D
  !c7
  !end

.sub2F35
  !dynamicPan,96,13
  db 6,$6C
  !g7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  !c7
  db 6,$6D
  !g7
  !ds7
  db 6,$6C
  !d7
  db 6,$6C
  !c7
  db 6,$6D
  !g7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  db 6,$6D
  !c7
  db 6,$6D
  !g7
  db 6,$6C
  !ds7
  db 6,$6D
  !d7
  db 6,$6D
  !c7
  !dynamicPan,96,7
  db 6,$6C
  !g7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  !c7
  db 6,$6D
  !g7
  !ds7
  db 6,$6C
  !d7
  db 6,$6C
  !c7
  db 6,$6D
  !g7
  db 6,$6C
  !ds7
  db 6,$6C
  !d7
  db 6,$6D
  !c7
  db 6,$6D
  !g7
  db 6,$6C
  !ds7
  db 6,$6D
  !d7
  db 6,$6D
  !c7
  !end

.sub2F94
  db 6,$48
  !g4
  !rest
  db 6,$59
  !g5
  db 6,$42
  !g4
  db 6,$18
  !g4
  db 6,$3A
  !g5
  !rest
  db 6,$29
  !g4
  db 12,$69
  !g5
  db 6,$28
  !g4
  db 6,$59
  !g5
  db 6,$63
  !g5
  db 6,$28
  !g4
  db 12,$4A
  !g5
  !end

.sub2FBB
  db 6,$48
  !c5
  !rest
  db 6,$59
  !c6
  db 6,$42
  !c5
  db 6,$18
  !c5
  db 6,$3A
  !c6
  !rest
  db 6,$29
  !c5
  db 12,$69
  !c6
  db 6,$28
  !c5
  db 6,$59
  !c6
  db 6,$63
  !c6
  db 6,$28
  !c5
  db 12,$4A
  !c6
  !end

.sub2FE2
  db 6,$49
  !g4
  !rest
  db 6,$5A
  !c6
  db 6,$42
  !g4
  db 6,$19
  !g4
  db 6,$3B
  !c6
  !rest
  db 6,$29
  !g5
  db 12,$6A
  !c6
  db 6,$29
  !g4
  db 6,$5A
  !c6
  db 6,$73
  !c6
  db 6,$29
  !g4
  db 12,$4B
  !c6
  db 6,$49
  !gs4
  db 6,$23
  !c6
  db 6,$5A
  !c6
  db 6,$42
  !gs4
  db 6,$19
  !gs4
  db 6,$3B
  !c6
  !rest
  db 6,$29
  !gs4
  db 12,$6A
  !c6
  db 6,$29
  !gs4
  db 6,$5A
  !c6
  db 6,$73
  !c6
  db 6,$29
  !gs4
  db 12,$4B
  !c6
  db 6,$49
  !f4
  db 6,$23
  !c6
  db 6,$5A
  !c6
  db 6,$42
  !f4
  db 6,$19
  !f4
  db 6,$3B
  !c6
  !rest
  db 6,$29
  !f4
  db 12,$6A
  !c6
  db 6,$29
  !f4
  db 6,$5A
  !c6
  db 6,$73
  !c6
  db 6,$29
  !f4
  db 12,$4B
  !c6
  !end

.sub3059
  db 12,$7B
  !g4
  db 6,$7A
  !fs4
  db 18,$7A
  !g4
  db 12,$79
  !fs4
  db 12,$79
  !g4
  db 12,$7A
  !fs4
  db 12,$78
  !g4
  db 12,$79
  !fs4
  !end

.sub3072
  db 12,$1D
  !e4
  db 18,$0C
  !e4
  db 18,$0C
  !e4
  db 18,$4B
  !e4
  db 18,$1C
  !e4
  db 12,$7B
  !e4
  !end

.sub3085
  db 12,$1D
  !c4
  db 18,$0C
  !c4
  db 18,$0C
  !c4
  db 18,$4B
  !c4
  db 18,$1C
  !c4
  db 12,$7B
  !c4
  db 12,$1D
  !gs3
  db 18,$0C
  !gs3
  db 18,$0C
  !gs3
  db 18,$4B
  !gs3
  db 18,$1C
  !gs3
  db 12,$7B
  !gs3
  db 12,$1D
  !f3
  db 18,$0C
  !f3
  db 18,$0C
  !f3
  db 18,$4B
  !f3
  db 18,$1C
  !f3
  db 12,$7B
  !f3
  !end

.sub30BC
  db 12,$7D
  !g3
  db 6,$7C
  !fs3
  db 18,$7C
  !g3
  db 12,$7B
  !fs3
  db 12,$7B
  !g3
  db 12,$6B
  !fs3
  db 12,$7A
  !g3
  !fs3
  !end

.sub30D3
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$73
  %percNote(!instr08-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$7F
  %percNote(!instr07-!instr06)
  db 6,$73
  %percNote(!instr07-!instr06)
  db 6,$7B
  %percNote(!instr06-!instr06)
  db 6,$73
  %percNote(!instr06-!instr06)
  !end

.sub3102
  db 6,$48
  !g4
  !rest
  db 6,$59
  !d5
  db 6,$42
  !g4
  db 6,$18
  !g4
  db 6,$3A
  !d5
  !rest
  db 6,$29
  !g4
  db 12,$69
  !d5
  db 6,$28
  !g4
  db 6,$59
  !d5
  db 6,$63
  !d5
  db 6,$28
  !g4
  db 12,$4A
  !d5
  !end

.sub3129
  db 6,$48
  !c5
  !rest
  db 6,$59
  !g5
  db 6,$42
  !c5
  db 6,$18
  !c5
  db 6,$3A
  !g5
  !rest
  db 6,$29
  !c5
  db 12,$69
  !g5
  db 6,$28
  !c5
  db 6,$59
  !g5
  db 6,$63
  !g5
  db 6,$28
  !c5
  db 12,$4A
  !g5
  !end

.sub3150
  db 6,$49
  !g4
  !rest
  db 6,$5A
  !g5
  db 6,$42
  !g4
  db 6,$19
  !g4
  db 6,$3B
  !g5
  !rest
  db 6,$29
  !g5
  db 12,$6A
  !g5
  db 6,$29
  !g4
  db 6,$5A
  !g5
  db 6,$73
  !c6
  db 6,$29
  !g4
  db 12,$4B
  !g5
  db 6,$49
  !gs4
  db 6,$23
  !g5
  db 6,$5A
  !gs5
  db 6,$42
  !gs4
  db 6,$19
  !gs4
  db 6,$3B
  !gs5
  !rest
  db 6,$29
  !gs4
  db 12,$6A
  !gs5
  db 6,$29
  !gs4
  db 6,$5A
  !gs5
  db 6,$73
  !gs5
  db 6,$29
  !gs4
  db 12,$4B
  !gs5
  db 6,$49
  !f4
  db 6,$23
  !gs5
  db 6,$5A
  !f5
  db 6,$42
  !f4
  db 6,$19
  !f4
  db 6,$3B
  !f5
  !rest
  db 6,$29
  !f4
  db 12,$6A
  !f5
  db 6,$29
  !f4
  db 6,$5A
  !f5
  db 6,$73
  !f5
  db 6,$29
  !f4
  db 12,$4B
  !f5
  !end

.sub31C7
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
