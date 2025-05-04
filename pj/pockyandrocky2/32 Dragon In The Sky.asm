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
  db !instr00,$FF,$E9,$B8,$03,$00
  db !instr01,$FF,$E8,$B8,$04,$70
  db !instr02,$8F,$EE,$B8,$07,$F0
  db !instr03,$FF,$E8,$B8,$02,$30
  db !instr04,$8F,$E0,$B8,$07,$A0
  db !instr05,$FF,$E0,$B8,$04,$B0
  db !instr06,$FF,$F4,$B8,$03,$90
  db !instr07,$FC,$F1,$B8,$03,$E0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1386
  dw Sample01,Sample01+1656
  dw Sample02,Sample02+153
  dw Sample03,Sample03+1233
  dw Sample04,Sample04+1116
  dw Sample05,Sample05+1773
  dw Sample06,Sample06+1152
  dw Sample07,Sample07+549
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_146a6954706c31d4a7f0210f1a41430a.brr"
  Sample01: incbin "Sample_20a0f198c8c311ee11fb58d9c55f3825.brr"
  Sample02: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample03: incbin "Sample_109c5729f128f87a93842e99c2b20c67.brr"
  Sample04: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample05: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample06: incbin "Sample_902a1cfa6206b16ff325e6df14f7c7d7.brr"
  Sample07: incbin "Sample_5cac8ed5aaaa86695a684f7f807906cc.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, 0, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr04
  !musicVolume,255
  !tempo,33
  !instr,!instr00
  !volume,146
  !vibrato,47,27,170
  !subtranspose,32
  db 96,$79
  !gs4
  db 78
  !tie
  db 6,$6B
  !b4
  !cs5
  db 6,$6C
  !ds5
  db 96,$7D
  !gs5
  !tie
  !end

.pattern0_2
  !instr,!instr02
  !volume,166
  !pan,10
  db 96,$7C
  !gs3
  !tie
  db 96,$7C
  !gs3
  !tie

.pattern0_3
  !volume,198
  !transpose,253
  db 24,$7B
  %percNote(!instr04-!instr04)
  db 24,$7F
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 24,$7F
  %percNote(!instr05-!instr04)
  !loop : dw .sub2E7D : db 2
  db 24,$7B
  %percNote(!instr04-!instr04)
  db 24,$7F
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  db 12,$7F
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)

.pattern0_4
  !instr,!instr01
  !volume,104
  !pan,11
  !vibrato,24,24,96
  !subtranspose,72
  !transpose,12
  db 12,$1A
  !gs4
  db 12,$19
  !gs4
  db 24,$3B
  !gs4
  db 12,$17
  !gs4
  db 24,$4B
  !fs4
  db 12,$7A
  !gs4
  db 12,$23
  !fs4
  db 12,$29
  !gs4
  !rest
  db 12,$18
  !gs4
  db 24,$3A
  !gs4
  db 24,$4B
  !fs4
  db 12,$1A
  !gs4
  db 12,$19
  !gs4
  db 24,$3B
  !gs4
  db 12,$17
  !gs4
  db 24,$4B
  !fs4
  db 12,$7A
  !gs4
  db 12,$23
  !fs4
  db 12,$29
  !gs4
  !rest
  db 12,$18
  !gs4
  db 24,$3A
  !gs4
  db 24,$4B
  !fs4

.pattern0_5
  !instr,!instr01
  !volume,104
  !pan,9
  !vibrato,24,24,96
  !subtranspose,72
  !transpose,12
  db 12,$1B
  !ds4
  db 12,$2A
  !ds4
  db 24,$4C
  !ds4
  db 12,$2B
  !ds4
  db 24,$3B
  !cs4
  db 12,$7B
  !ds4
  db 12,$23
  !cs4
  db 12,$29
  !ds4
  !rest
  db 12,$19
  !ds4
  db 24,$3A
  !ds4
  db 24,$3C
  !cs4
  db 12,$1B
  !ds4
  db 12,$2A
  !ds4
  db 24,$4C
  !ds4
  db 12,$2B
  !ds4
  db 24,$3B
  !cs4
  db 12,$7B
  !ds4
  db 12,$23
  !cs4
  db 12,$29
  !ds4
  !rest
  db 12,$19
  !ds4
  db 24,$3A
  !ds4
  db 24,$3C
  !cs4

.pattern0_7
  !volume,198
  db 96,$7B
  %percNote(!instr07-!instr04)
  !loop : dw .sub2E8B : db 1

.pattern1_0
  db 72,$7D
  !gs5
  db 6,$7B
  !gs5
  db 6,$7B
  !as5
  db 6,$7C
  !b5
  db 6,$7C
  !ds6
  db 48,$7D
  !gs6
  db 48,$7C
  !g6
  db 84,$7D
  !fs6
  db 6,$7C
  !e6
  db 6,$7C
  !cs6
  db 72,$7D
  !ds6
  db 24,$6C
  !cs6
  db 72,$7D
  !gs5
  db 6,$7B
  !gs5
  db 6,$7C
  !as5
  db 6,$7C
  !b5
  db 6,$7D
  !ds6
  db 36,$6D
  !gs6
  db 12,$6C
  !g6
  db 48,$7D
  !as6
  db 36,$7D
  !e6
  db 12,$7C
  !b6
  db 36,$7D
  !as6
  db 12,$7D
  !fs6
  !tie
  db 84,$7D
  !gs6
  db 96
  !tie
  db 6,$7C
  !b6
  !as6
  db 6,$6C
  !gs6
  db 78,$7C
  !ds6
  db 24
  !tie
  db 48,$7C
  !ds6
  db 24,$7C
  !gs6
  db 84,$7C
  !fs6
  db 6,$6C
  !e6
  db 6,$6B
  !ds6
  db 96,$7C
  !e6
  db 6,$7D
  !cs6
  db 6,$7C
  !ds6
  db 6,$7B
  !e6
  db 6,$6B
  !fs6
  db 72,$7D
  !gs6
  db 24
  !tie
  db 24,$7D
  !fs6
  db 24,$7C
  !cs6
  db 24,$7C
  !fs6
  db 60,$7C
  !e6
  db 12,$7C
  !ds6
  db 12,$7B
  !cs6
  db 12,$7C
  !ds6
  db 96
  !tie
  db 6
  !b6
  !as6
  db 6,$6C
  !gs6
  db 78,$7C
  !ds6
  db 24
  !tie
  db 24,$7D
  !ds6
  db 24,$6C
  !gs6
  db 24,$6C
  !gs6
  !loop : dw .sub2E8F : db 2
  db 6,$6C
  !as5
  !cs6
  !ds6
  db 78,$7C
  !gs6
  db 6,$6C
  !ds6
  !gs6
  db 84,$7C
  !as6
  db 36,$4D
  !b6
  db 36,$3C
  !as6
  db 24,$7C
  !gs6
  db 96
  !tie
  db 60,$7D
  !ds7
  db 12,$7D
  !cs7
  !as6
  !gs6
  db 78,$7D
  !fs6
  db 6,$6B
  !fs6
  db 6,$6C
  !gs6
  db 6,$6C
  !as6
  db 36,$4D
  !b6
  db 36,$2C
  !as6
  db 24,$7C
  !gs6
  db 96
  !tie
  db 36,$6C
  !gs6
  db 36,$6C
  !fs6
  db 24,$7D
  !gs6
  db 12
  !tie
  db 36,$4C
  !fs6
  db 24,$4D
  !gs6
  db 24,$5D
  !as6
  db 36,$3C
  !b6
  db 36,$3C
  !as6
  db 24,$7C
  !b6
  db 72
  !tie
  db 6,$6A
  !ds6
  !gs6
  db 6,$7B
  !as6
  db 6,$6C
  !b6
  db 36,$5D
  !cs7
  db 36,$3C
  !b6
  db 24,$7C
  !cs7
  db 96
  !tie
  db 96,$7D
  !ds7
  db 72,$7A
  !tie
  db 6,$6A
  !gs6
  db 6,$6B
  !as6
  db 6,$7B
  !b6
  db 6,$6C
  !cs7
  db 96,$7D
  !ds7
  !tie
  !end

.pattern1_1
  !instr,!instr03
  !volume,114
  !pan,13
  !subtranspose,88
  !vibrato,24,30,128
  db 24
  !rest
  db 12,$3C
  !gs5
  !rest
  db 12,$33
  !gs5
  db 36,$7B
  !gs5
  db 24,$73
  !gs5
  db 24,$4C
  !e5
  db 12,$73
  !e5
  db 36,$7C
  !g5
  db 24,$73
  !g5
  db 12,$1B
  !fs5
  !rest
  db 12,$13
  !fs5
  db 36,$7B
  !fs5
  db 24,$73
  !fs5
  db 24,$1B
  !gs5
  db 12,$3B
  !gs5
  db 36,$7B
  !fs5
  db 24,$73
  !fs5
  db 12,$1B
  !gs5
  !rest
  db 12,$13
  !gs5
  db 36,$7B
  !gs5
  db 24,$73
  !gs5
  db 12,$5B
  !e5
  !rest
  db 12,$73
  !e5
  db 36,$7B
  !ds5
  db 24,$73
  !ds5
  db 12,$7B
  !e5
  !rest
  db 12,$73
  !e5
  db 36,$7B
  !fs5
  db 24,$73
  !fs5
  db 12,$5B
  !fs5
  !rest
  db 12,$53
  !fs5
  db 24,$3C
  !fs5
  db 12,$7B
  !fs5
  db 12,$03
  !fs5
  db 12,$7B
  !fs5
  !rest
  db 12,$1B
  !fs5
  db 48,$7B
  !fs5
  db 24,$73
  !fs5
  db 12,$5B
  !gs5
  !rest
  db 12,$53
  !gs5
  db 12,$6B
  !gs5
  !rest
  db 12,$5B
  !gs5
  !rest
  db 12,$5C
  !gs5
  !rest
  db 12,$2B
  !fs5
  db 48,$7B
  !gs5
  db 24,$73
  !gs5
  db 12,$5C
  !fs5
  !rest
  db 12,$53
  !fs5
  db 24,$3B
  !e5
  db 12,$7B
  !fs5
  db 12,$03
  !e5
  db 12,$7B
  !fs5
  !rest
  db 12,$2C
  !e5
  db 12,$7B
  !e5
  db 12,$23
  !e5
  db 24,$7C
  !e5
  db 24,$73
  !e5
  db 12,$5B
  !fs5
  !rest
  db 12,$53
  !fs5
  db 12,$5B
  !fs5
  !rest
  db 12,$5B
  !fs5
  !rest
  db 12,$6B
  !fs5
  !rest
  db 12,$2C
  !gs5
  db 12,$7C
  !gs5
  db 12,$23
  !gs5
  db 24,$7B
  !fs5
  db 24,$73
  !fs5
  db 12,$4C
  !e5
  !rest
  db 12,$43
  !e5
  db 24,$5B
  !ds5
  db 12,$6C
  !g5
  db 12,$43
  !ds5
  db 12,$5B
  !g5
  !rest
  db 12,$3B
  !g5
  db 16,$7C
  !g5
  db 16,$7C
  !gs5
  db 16,$7C
  !as5
  db 8,$73
  !gs5
  db 16
  !as5
  db 12,$6C
  !b5
  !rest
  db 12,$2C
  !b5
  db 12,$7B
  !as5
  db 12,$23
  !b5
  db 12,$6C
  !b5
  !rest
  db 12,$7C
  !b5
  !rest
  db 12,$3C
  !b5
  db 12,$7B
  !b5
  db 12,$73
  !b5
  db 12,$7B
  !as5
  !rest
  db 24,$2B
  !b5
  db 24,$2C
  !b5
  db 12,$3C
  !b5
  db 24,$2B
  !as5
  db 12,$7C
  !b5
  db 12,$0C
  !b5
  db 24,$2B
  !b5
  db 12,$2B
  !b5
  db 24,$2B
  !b5
  db 24,$2B
  !cs6
  db 24,$2B
  !b5
  db 24,$2C
  !b5
  db 12,$3C
  !b5
  db 24,$2B
  !as5
  db 12,$7C
  !b5
  !rest
  db 24,$2C
  !b5
  db 12,$2C
  !b5
  db 24,$2B
  !b5
  db 24,$2B
  !as5
  !rest
  db 36,$1C
  !ds5
  db 24,$2B
  !ds5
  db 12,$7C
  !g5
  !rest
  db 24,$1B
  !g5
  db 12,$2B
  !g5
  db 24,$2B
  !g5
  db 24,$5C
  !cs6
  db 36,$2C
  !b5
  db 36,$3C
  !as5
  db 24,$7C
  !gs5
  db 12
  !tie
  db 36,$6D
  !ds6
  db 24,$7D
  !cs6
  db 24,$6C
  !b5
  db 96,$7C
  !as5
  db 24
  !rest
  db 36,$0C
  !as5
  db 36,$5C
  !as5
  db 36,$2C
  !b5
  db 36,$3C
  !as5
  db 24,$7B
  !b5
  db 12
  !tie
  db 36,$5D
  !b5
  db 24,$6C
  !as5
  db 24,$7D
  !b5
  db 36,$1B
  !as5
  db 36,$3C
  !as5
  db 24,$3C
  !as5
  db 12
  !rest
  db 36,$4C
  !as5
  db 24,$3C
  !as5
  db 24,$2C
  !as5
  db 36,$3C
  !b5
  db 36,$4C
  !as5
  db 24,$7C
  !gs5
  db 12
  !tie
  db 36,$6D
  !ds6
  db 24,$6D
  !cs6
  db 24,$6C
  !b5
  db 36,$4C
  !cs6
  db 36,$3C
  !b5
  db 24,$7C
  !cs6
  db 12,$7C
  !as5
  db 36,$6D
  !fs6
  db 24,$6D
  !e6
  db 24,$5D
  !ds6
  db 36,$1C
  !gs6
  db 36,$2C
  !gs6
  db 24,$2C
  !gs6
  db 12
  !rest
  db 36,$0C
  !ds6
  db 48,$6C
  !ds6
  db 24
  !rest
  db 36,$1C
  !ds6
  db 24,$4C
  !ds6
  db 12,$7C
  !ds6
  !rest
  db 24,$2C
  !ds6
  db 12,$3C
  !ds6
  db 24,$2C
  !ds6
  db 24,$6C
  !ds6

.pattern1_2
  db 12,$7B
  !gs3
  !gs4
  !gs3
  !gs4
  !gs3
  !gs4
  !gs3
  !gs4
  !e3
  !e4
  !e3
  !e4
  !ds3
  !ds4
  !ds3
  !ds4
  !fs3
  !fs4
  !fs3
  !fs4
  !fs3
  !fs4
  !fs3
  !fs4
  !loop : dw .sub2EA5 : db 2
  !e3
  !e4
  !e3
  !e4
  !ds3
  !ds4
  !ds3
  !ds4
  !e3
  !e4
  !e3
  !e4
  !fs3
  !fs4
  !fs3
  !fs4
  !loop : dw .sub2EA5 : db 4
  !loop : dw .sub2EAE : db 2
  !loop : dw .sub2EB7 : db 2
  !loop : dw .sub2EC0 : db 2
  !loop : dw .sub2EA5 : db 2
  !loop : dw .sub2EAE : db 2
  !loop : dw .sub2EC9 : db 2
  !ds3
  !ds4
  !ds3
  !ds4
  !ds3
  !ds4
  !ds3
  !ds4
  !g3
  !g4
  !g3
  !g4
  !g3
  !g4
  !g3
  !g4
  db 36,$4A
  !gs3
  !fs3
  db 24,$7C
  !e3
  db 12
  !tie
  db 12,$7B
  !e4
  !e3
  !e4
  !e3
  !e4
  !e3
  !e4
  !loop : dw .sub2EB7 : db 2
  !loop : dw .sub2ED2 : db 1
  db 12,$7B
  !fs3
  !fs4
  !fs3
  !fs4
  !fs3
  !fs4
  !fs3
  !fs4
  !fs3
  !fs4
  !fs3
  !fs4
  !fs3
  !fs4
  !fs3
  !fs4
  !loop : dw .sub2ED2 : db 1
  db 36,$4A
  !fs3
  !e3
  db 24,$7B
  !ds3
  db 12
  !tie
  db 12,$7B
  !ds4
  !ds3
  !ds4
  !ds3
  !ds4
  !ds3
  !ds4
  !loop : dw .sub2EAE : db 2
  !loop : dw .sub2EB7 : db 2

.pattern1_3
  !loop : dw .sub2EE3 : db 7
  db 24,$78
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  db 12,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  db 12,$7C
  %percNote(!instr05-!instr04)
  !loop : dw .sub2EF1 : db 1
  !loop : dw .sub2EE3 : db 2
  !loop : dw .sub2EF1 : db 1
  db 24,$78
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  !rest
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  !rest
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 8
  %percNote(!instr05-!instr04)
  db 8,$78
  %percNote(!instr04-!instr04)
  db 16,$7C
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  !loop : dw .sub2EE3 : db 6
  db 24,$78
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  db 12,$7C
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  db 24,$78
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  db 12,$7C
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 24,$78
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 24,$78
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  !loop : dw .sub2EE3 : db 8
  db 24,$78
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  db 12,$7C
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  %percNote(!instr04-!instr04)
  !loop : dw .sub2EE3 : db 5
  db 24,$78
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  db 12,$7C
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)

.pattern1_4
  db 12,$0C
  !ds4
  db 12,$09
  !ds4
  db 24,$3B
  !ds4
  db 12,$1B
  !ds4
  db 12,$0A
  !ds4
  db 24,$3A
  !ds4
  db 12,$19
  !b3
  db 12,$09
  !b3
  db 24,$4A
  !b3
  db 12,$2C
  !as3
  db 12,$2A
  !as3
  db 24,$4C
  !as3
  db 12,$1A
  !cs4
  db 12,$0A
  !cs4
  db 24,$4B
  !cs4
  db 12,$09
  !cs4
  db 12,$1A
  !cs4
  db 24,$4B
  !cs4
  db 12,$0A
  !ds4
  db 12,$09
  !ds4
  db 24,$4A
  !ds4
  db 12,$19
  !ds4
  db 12,$19
  !ds4
  db 24,$5B
  !ds4
  db 12,$09
  !ds4
  db 12,$09
  !ds4
  db 24,$3B
  !ds4
  db 12,$1B
  !ds4
  db 12,$0A
  !ds4
  db 24,$3A
  !ds4
  db 12,$19
  !b3
  db 12,$09
  !b3
  db 24,$4A
  !b3
  db 12,$2C
  !as3
  db 12,$2A
  !as3
  db 24,$4C
  !as3
  db 12,$09
  !b3
  db 12,$09
  !b3
  db 24,$49
  !b3
  db 12,$19
  !cs4
  db 12,$09
  !cs4
  db 24,$4A
  !cs4
  !rest
  db 36,$1B
  !cs4
  db 24,$1C
  !cs4
  db 12,$7B
  !cs4
  !rest
  db 24,$2B
  !cs4
  db 12,$2B
  !ds4
  db 48,$3B
  !ds4
  db 12,$09
  !gs4
  db 12,$09
  !gs4
  db 24,$39
  !gs4
  db 12,$19
  !gs4
  db 12,$09
  !gs4
  db 24,$3A
  !gs4
  db 12,$0A
  !gs4
  db 12,$09
  !gs4
  db 24,$39
  !gs4
  db 12,$19
  !gs4
  db 12,$09
  !gs4
  db 24,$49
  !gs4
  db 6,$0A
  !e4
  !rest
  db 12,$09
  !e4
  db 24,$4A
  !e4
  db 12,$0A
  !e4
  db 12,$09
  !e4
  db 24,$4A
  !e4
  db 12,$0A
  !e4
  db 12,$09
  !e4
  db 24,$4A
  !e4
  db 12,$1B
  !e4
  db 12,$1A
  !e4
  db 24,$4A
  !e4
  !loop : dw .sub2F0E : db 2
  db 12,$1B
  !ds4
  db 12,$1A
  !ds4
  db 24,$49
  !ds4
  db 12,$0B
  !ds4
  db 12,$09
  !ds4
  db 24,$49
  !ds4
  db 12,$0B
  !ds4
  db 12,$0A
  !ds4
  db 24,$49
  !ds4
  db 16,$4B
  !ds4
  db 16,$4A
  !ds4
  db 16,$6B
  !ds4
  !loop : dw .sub2F1F : db 2
  !loop : dw .sub2F32 : db 2
  !loop : dw .sub2F45 : db 2
  !loop : dw .sub2F58 : db 2
  db 18,$3C
  !b4
  db 18,$34
  !b4
  db 18,$4C
  !as4
  db 18,$44
  !as4
  db 24,$7C
  !gs4
  db 96
  !tie
  !loop : dw .sub2F0E : db 2
  db 18,$4C
  !b4
  db 18,$44
  !b4
  db 18,$4C
  !as4
  db 18,$44
  !as4
  db 24,$7C
  !gs4
  db 96
  !tie
  !loop : dw .sub2F0E : db 2
  db 18,$5C
  !gs4
  db 18,$54
  !gs4
  db 18,$5C
  !fs4
  db 18,$54
  !fs4
  db 24,$7C
  !e4
  !loop : dw .sub2F6B : db 1
  db 96
  !tie
  !loop : dw .sub2F32 : db 2
  !loop : dw .sub2F0E : db 2

.pattern1_5
  db 12,$0C
  !gs3
  db 12,$0A
  !gs3
  db 24,$4C
  !gs3
  db 12,$2B
  !gs3
  db 12,$1A
  !gs3
  db 24,$5A
  !gs3
  db 12,$1C
  !e3
  db 12,$09
  !e3
  db 24,$4C
  !e3
  db 12,$1C
  !ds3
  db 12,$09
  !ds3
  db 24,$4C
  !ds3
  db 12,$2B
  !fs3
  db 12,$1A
  !fs3
  db 24,$4C
  !fs3
  db 12,$2C
  !fs3
  db 12,$1A
  !fs3
  db 24,$4B
  !fs3
  db 12,$1B
  !gs3
  db 12,$09
  !gs3
  db 24,$4A
  !gs3
  db 12,$1A
  !gs3
  db 12,$19
  !gs3
  db 24,$5B
  !gs3
  db 12,$0B
  !gs3
  db 12,$0A
  !gs3
  db 24,$4C
  !gs3
  db 12,$2B
  !gs3
  db 12,$1A
  !gs3
  db 24,$5A
  !gs3
  db 12,$1C
  !e3
  db 12,$09
  !e3
  db 24,$4C
  !e3
  db 12,$1C
  !ds3
  db 12,$09
  !ds3
  db 24,$4C
  !ds3
  db 12,$0B
  !e3
  db 12,$09
  !e3
  db 24,$4B
  !e3
  db 12,$1B
  !fs3
  db 12,$0A
  !fs3
  db 24,$4C
  !fs3
  !rest
  db 36,$0B
  !gs3
  db 24,$1B
  !gs3
  db 12,$5A
  !gs3
  !rest
  db 24,$1A
  !gs3
  db 12,$2B
  !gs3
  db 48,$3B
  !gs3
  db 12,$1B
  !ds4
  db 12,$0A
  !ds4
  db 24,$4C
  !ds4
  db 12,$09
  !ds4
  db 12,$0A
  !ds4
  db 24,$4B
  !ds4
  db 12,$0A
  !ds4
  db 12,$19
  !ds4
  db 24,$4B
  !ds4
  db 12,$1A
  !ds4
  db 12,$09
  !ds4
  db 24,$4A
  !ds4
  db 6,$0A
  !b3
  !rest
  db 12,$09
  !b3
  db 24,$4A
  !b3
  db 12,$0A
  !b3
  db 12,$09
  !b3
  db 24,$4A
  !b3
  db 12,$0A
  !b3
  db 12,$09
  !b3
  db 24,$3A
  !b3
  db 12,$1B
  !b3
  db 12,$0A
  !b3
  db 24,$4B
  !b3
  !loop : dw .sub2F7D : db 2
  db 12,$1A
  !as3
  db 12,$0A
  !as3
  db 24,$4C
  !as3
  db 12,$09
  !as3
  db 12,$09
  !as3
  db 24,$4B
  !as3
  db 12,$09
  !as3
  db 12,$09
  !as3
  db 24,$4B
  !as3
  db 16,$4B
  !as3
  db 16,$3A
  !as3
  db 16,$6B
  !as3
  !loop : dw .sub2F90 : db 2
  !loop : dw .sub2FA3 : db 2
  !loop : dw .sub2FB6 : db 2
  !loop : dw .sub2FC9 : db 2
  !loop : dw .sub2FDC : db 2
  db 18
  !rest
  !volume,83
  !subtranspose,80
  db 18,$5C
  !gs4
  db 18,$54
  !gs4
  db 18,$5C
  !fs4
  db 18,$54
  !fs4
  db 24,$7C
  !e4
  !loop : dw .sub2F6B : db 1
  db 78
  !tie
  !volume,104
  !subtranspose,72
  db 12,$0A
  !b3
  db 12,$09
  !b3
  db 24,$3A
  !b3
  db 12,$1B
  !b3
  db 12,$0A
  !b3
  db 24,$4B
  !b3
  db 12,$0A
  !b3
  db 12,$09
  !b3
  db 24,$3A
  !b3
  db 12,$1B
  !b3
  db 12,$0A
  !b3
  db 24,$4B
  !b3
  !loop : dw .sub2F7D : db 2

.pattern1_6
  !instr,!instr03
  !volume,114
  !pan,7
  !subtranspose,88
  !vibrato,24,30,128
  db 24
  !rest
  db 12,$4C
  !ds5
  !rest
  db 12,$43
  !ds5
  db 36,$7C
  !ds5
  db 24,$73
  !ds5
  db 24,$4B
  !b4
  db 12,$75
  !b4
  db 36,$7B
  !ds5
  db 24,$73
  !ds5
  db 12,$1C
  !as4
  !rest
  db 12,$13
  !as4
  db 36,$7B
  !as4
  db 24,$73
  !as4
  db 24,$2B
  !ds5
  db 12,$3C
  !ds5
  db 36,$7B
  !ds5
  db 24,$73
  !ds5
  db 12,$1B
  !ds5
  !rest
  db 12,$13
  !ds5
  db 36,$7B
  !ds5
  db 24,$73
  !ds5
  db 12,$5C
  !b4
  !rest
  db 12,$53
  !b4
  db 36,$7C
  !as4
  db 24,$73
  !as4
  db 12,$7B
  !b4
  !rest
  db 12,$73
  !b4
  db 36,$7C
  !cs5
  db 24,$63
  !cs5
  db 12,$5D
  !cs5
  !rest
  db 12,$53
  !cs5
  db 24,$3C
  !cs5
  db 12,$7D
  !cs5
  db 12,$03
  !cs5
  db 12,$7D
  !cs5
  !rest
  db 12,$1C
  !ds5
  db 48,$7B
  !ds5
  db 24,$73
  !ds5
  db 12,$5B
  !ds5
  !rest
  db 12,$53
  !ds5
  db 12,$5B
  !ds5
  !rest
  db 12,$5C
  !ds5
  !rest
  db 12,$5B
  !ds5
  !rest
  db 12,$2B
  !cs5
  db 48,$7B
  !ds5
  db 24,$73
  !ds5
  db 12,$5C
  !b4
  !rest
  db 12,$53
  !b4
  db 24,$3B
  !b4
  db 12,$7C
  !b4
  db 12,$03
  !b4
  db 12,$7B
  !b4
  !rest
  db 12,$2B
  !b4
  db 12,$7C
  !b4
  db 12,$23
  !b4
  db 24,$6B
  !b4
  db 24,$63
  !b4
  db 12,$5C
  !cs5
  !rest
  db 12,$53
  !fs5
  db 12,$5C
  !cs5
  !rest
  db 12,$5B
  !cs5
  !rest
  db 12,$6B
  !cs5
  !rest
  db 12,$2B
  !cs5
  db 12,$7B
  !cs5
  db 12,$23
  !cs5
  db 24,$7B
  !cs5
  db 24,$73
  !cs5
  db 12,$4C
  !as4
  !rest
  db 12,$43
  !as4
  db 24,$5B
  !as4
  db 12,$5B
  !ds5
  db 12,$43
  !as4
  db 12,$5B
  !ds5
  !rest
  db 12,$3B
  !ds5
  db 16,$7B
  !ds5
  db 16,$7C
  !ds5
  db 16,$7C
  !ds5
  db 8,$73
  !ds5
  db 16
  !ds5
  db 12,$7C
  !ds5
  !rest
  db 12,$4B
  !ds5
  db 12,$7B
  !ds5
  !rest
  db 12,$7B
  !ds5
  !rest
  db 12,$7B
  !ds5
  !rest
  db 12,$3B
  !ds5
  db 12,$7B
  !ds5
  db 12,$33
  !ds5
  db 12,$7B
  !ds5
  !rest
  !loop : dw .sub301C : db 2
  !rest
  db 36,$1C
  !as4
  db 24,$2C
  !as4
  db 12,$7B
  !ds5
  !rest
  db 24,$1B
  !ds5
  db 12,$2B
  !ds5
  db 24,$3B
  !ds5
  db 24,$4C
  !g5
  db 36,$2C
  !gs5
  db 36,$2B
  !fs5
  db 24,$7C
  !ds5
  db 12
  !tie
  db 36,$6D
  !b5
  db 24,$7C
  !as5
  db 24,$6C
  !gs5
  db 96,$7C
  !fs5
  db 24
  !rest
  db 36,$0C
  !fs5
  db 36,$0C
  !fs5
  db 36,$2B
  !gs5
  db 36,$5B
  !fs5
  db 24,$7B
  !gs5
  db 12
  !tie
  db 36,$5C
  !gs5
  db 24,$6C
  !fs5
  db 24,$6C
  !gs5
  db 36,$1B
  !fs5
  db 36,$3B
  !fs5
  db 24,$2B
  !fs5
  db 12
  !rest
  db 36,$3B
  !fs5
  db 24,$2B
  !fs5
  db 24,$2B
  !fs5
  db 36,$3B
  !gs5
  db 36,$4C
  !fs5
  db 24,$7C
  !e5
  db 12
  !tie
  db 84
  !rest
  db 36,$4C
  !as5
  db 36,$4B
  !gs5
  db 24,$7C
  !as5
  db 12
  !tie
  db 84
  !rest
  db 36,$1B
  !gs5
  db 36,$2B
  !gs5
  db 24,$3C
  !gs5
  db 12
  !rest
  db 36,$0B
  !gs5
  db 48,$6C
  !gs5
  db 24
  !rest
  db 36,$0C
  !as5
  db 24,$4C
  !as5
  db 12,$7C
  !as5
  !rest
  db 24,$2C
  !as5
  db 12,$4B
  !as5
  db 24,$2C
  !as5
  db 24,$6C
  !as5

.pattern1_7
  db 96,$7D
  %percNote(!instr07-!instr04)
  !loop : dw .sub303B : db 14
  !instr,!instr06
  db 12
  !rest
  !pan,7
  db 12,$7A
  !c5
  !pan,10
  db 36,$7B
  !g4
  db 12,$78
  !g4
  !pan,13
  db 24,$7A
  !d4
  db 12
  !tie
  !pan,7
  db 12,$79
  !c5
  !pan,10
  db 72,$7B
  !g4
  db 96
  !rest
  !loop : dw .sub303B : db 7
  db 96,$77
  %percNote(!instr07-!instr04)
  !rest
  !rest
  !loop : dw .sub2E8B : db 1
  !rest
  !loop : dw .sub2E8B : db 1
  !loop : dw .sub303D : db 3

.sub2E7D
  db 24,$7B
  %percNote(!instr04-!instr04)
  db 24,$7F
  %percNote(!instr05-!instr04)
  db 12,$7B
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 24,$7F
  %percNote(!instr05-!instr04)
  !end

.sub2E8B
  !rest
  %percNote(!instr07-!instr04)
  !rest
  !end

.sub2E8F
  db 6,$7C
  !b6
  !as6
  db 6,$6C
  !gs6
  db 78,$7C
  !ds6
  db 24
  !tie
  db 24,$7D
  !ds6
  db 24,$6C
  !gs6
  db 24,$6C
  !gs6
  !end

.sub2EA5
  !gs3
  !gs4
  !gs3
  !gs4
  !gs3
  !gs4
  !gs3
  !gs4
  !end

.sub2EAE
  !e3
  !e4
  !e3
  !e4
  !e3
  !e4
  !e3
  !e4
  !end

.sub2EB7
  !fs3
  !fs4
  !fs3
  !fs4
  !fs3
  !fs4
  !fs3
  !fs4
  !end

.sub2EC0
  !ds3
  !ds4
  !ds3
  !ds4
  !ds3
  !ds4
  !ds3
  !ds4
  !end

.sub2EC9
  !cs3
  !cs4
  !cs3
  !cs4
  !cs3
  !cs4
  !cs3
  !cs4
  !end

.sub2ED2
  db 36,$4A
  !gs3
  !fs3
  db 24,$7B
  !e3
  db 12
  !tie
  !e4
  !e3
  !e4
  !e3
  !e4
  !e3
  !e4
  !end

.sub2EE3
  db 24,$78
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  !end

.sub2EF1
  db 24,$78
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  db 12,$7C
  %percNote(!instr05-!instr04)
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  db 12,$78
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 24,$7C
  %percNote(!instr05-!instr04)
  !end

.sub2F0E
  db 12,$0A
  !fs4
  !fs4
  db 24,$4A
  !fs4
  db 12,$0B
  !fs4
  db 12,$09
  !fs4
  db 24,$49
  !fs4
  !end

.sub2F1F
  db 12,$09
  !gs4
  db 12,$09
  !gs4
  db 24,$39
  !gs4
  db 12,$19
  !gs4
  db 12,$09
  !gs4
  db 24,$3A
  !gs4
  !end

.sub2F32
  db 12,$0A
  !e4
  db 12,$09
  !e4
  db 24,$4A
  !e4
  db 12,$1B
  !e4
  db 12,$1A
  !e4
  db 24,$4A
  !e4
  !end

.sub2F45
  db 12,$09
  !cs4
  db 12,$09
  !cs4
  db 24,$4C
  !cs4
  db 12,$1A
  !cs4
  db 12,$09
  !cs4
  db 24,$4B
  !cs4
  !end

.sub2F58
  db 12,$1B
  !ds4
  db 12,$1A
  !ds4
  db 24,$49
  !ds4
  db 12,$0B
  !ds4
  db 12,$09
  !ds4
  db 24,$49
  !ds4
  !end

.sub2F6B
  db 96
  !tie
  db 18,$4C
  !fs4
  db 18,$44
  !fs4
  db 18,$5C
  !e4
  db 18,$54
  !e4
  db 24,$7C
  !ds4
  !end

.sub2F7D
  db 12,$0A
  !cs4
  db 12,$0A
  !cs4
  db 24,$4C
  !cs4
  db 12,$1B
  !cs4
  db 12,$19
  !cs4
  db 24,$4C
  !cs4
  !end

.sub2F90
  db 12,$1B
  !ds4
  db 12,$0A
  !ds4
  db 24,$4C
  !ds4
  db 12,$09
  !ds4
  db 12,$0A
  !ds4
  db 24,$4B
  !ds4
  !end

.sub2FA3
  db 12,$0A
  !b3
  db 12,$09
  !b3
  db 24,$3A
  !b3
  db 12,$1B
  !b3
  db 12,$0A
  !b3
  db 24,$4B
  !b3
  !end

.sub2FB6
  db 12,$1A
  !gs3
  db 12,$09
  !gs3
  db 24,$3A
  !gs3
  db 12,$09
  !gs3
  db 12,$09
  !gs3
  db 24,$4A
  !gs3
  !end

.sub2FC9
  db 12,$1A
  !as3
  db 12,$0A
  !as3
  db 24,$4C
  !as3
  db 12,$09
  !as3
  db 12,$09
  !as3
  db 24,$4B
  !as3
  !end

.sub2FDC
  db 18
  !rest
  !volume,83
  !subtranspose,80
  db 18,$3C
  !b4
  db 18,$34
  !b4
  db 18,$4C
  !as4
  db 18,$44
  !as4
  db 24,$7C
  !gs4
  db 78
  !tie
  !volume,104
  !subtranspose,72
  db 12,$0A
  !cs4
  db 12,$0A
  !cs4
  db 24,$4C
  !cs4
  db 12,$1B
  !cs4
  db 12,$19
  !cs4
  db 24,$4C
  !cs4
  db 12,$0A
  !cs4
  db 12,$0A
  !cs4
  db 24,$4C
  !cs4
  db 12,$1B
  !cs4
  db 12,$19
  !cs4
  db 24,$4C
  !cs4
  !end

.sub301C
  db 24,$2C
  !e5
  db 24,$2C
  !e5
  db 12,$3B
  !e5
  db 24,$2B
  !e5
  db 12,$7C
  !e5
  db 12,$0C
  !e5
  db 24,$2B
  !e5
  db 12,$2B
  !e5
  db 24,$3C
  !e5
  db 24,$2C
  !e5
  !end

.sub303B
  !rest
  !end

.sub303D
  %percNote(!instr07-!instr04)
  !rest
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
