asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr02 = $17
!instr03 = $18
!instr04 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$87,$E0,$B8,$01,$B0
  db !instr02,$8F,$EE,$B8,$07,$F0
  db !instr03,$FF,$EC,$B8,$02,$40
  db !instr04,$FF,$E7,$B8,$03,$00
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00_01,Sample00_01+1053
  dw Sample02,Sample02+153
  dw Sample03,Sample03+1386
  dw Sample04_05,Sample04_05+27
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00_01: incbin "Sample_9b824c2347515bb03a8f9a1ef9fe03cf.brr"
  Sample02: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample03: incbin "Sample_69ccba18c0744e2d4f5b892690ea0fa2.brr"
  Sample04_05: incbin "Sample_155420261344daa1320b579d12648a8c.brr"

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
  !tempo,25
  !musicVolume,255
  db 72
  !rest
  !rest
  !instr,!instr00
  !volume,146
  !vibrato,32,30,64
  !transpose,244
  db 48,$7C
  !b6
  db 24,$7B
  !e6
  db 24,$7C
  !b6
  !d7
  !end

.pattern0_1
  db 72
  !rest
  !rest
  !volume,187
  !instr,!instr02
  db 72,$7C
  !c4
  db 48
  !tie
  !end

.pattern0_2
  !subtranspose,24
  !pan,3
  !instr,!instr03
  !volume,70
  !subtranspose,10
  db 6,$7D
  !b6
  !rest
  !c7
  db 6,$77
  !b6
  db 6,$7E
  !b6
  db 6,$77
  !c7
  db 6,$7E
  !g6
  db 6,$77
  !b6
  db 6,$7E
  !e6
  db 6,$77
  !g6
  db 6,$7E
  !c6
  db 6,$77
  !e6
  !loop : dw .sub2784 : db 2
  db 6,$7F
  !b6
  db 6,$77
  !c6
  db 6,$7F
  !c7
  db 6,$77
  !b6
  db 6,$7F
  !b6
  db 6,$77
  !c7
  db 6,$7F
  !g6
  db 6,$77
  !b6
  !end

.pattern0_3
  db 2
  !rest
  !pan,18
  !instr,!instr03
  !volume,70
  !subtranspose,10
  db 6,$7D
  !b6
  !rest
  db 6,$7E
  !c7
  db 6,$77
  !b6
  db 6,$7E
  !b6
  db 6,$77
  !c7
  db 6,$7E
  !g6
  db 6,$77
  !b6
  db 6,$7E
  !e6
  db 6,$77
  !g6
  db 6,$7E
  !c6
  db 6,$77
  !e6
  !loop : dw .sub2784 : db 2
  db 6,$7F
  !b6
  db 6,$77
  !c6
  db 6,$7F
  !c7
  db 6,$77
  !b6
  db 6,$7F
  !b6
  db 6,$77
  !c7
  db 6,$7F
  !g6
  db 4,$77
  !b6
  !end

.pattern0_4
  db 72
  !rest
  db 48
  !rest
  db 19
  !rest
  !instr,!instr04
  !volume,114
  !pan,16
  !subtranspose,29
  db 72,$7F
  !c5
  db 53
  !tie
  !end

.pattern0_5
  db 72
  !rest
  db 48
  !rest
  db 22
  !rest
  !instr,!instr04
  !volume,114
  !pan,4
  !subtranspose,29
  db 72,$7F
  !e5
  db 50
  !tie
  !end

.pattern0_6
  db 72
  !rest
  db 48
  !rest
  db 24
  !rest
  !instr,!instr04
  !volume,114
  !pan,12
  !subtranspose,29
  db 72,$7F
  !g5
  db 48
  !tie
  !end

.pattern0_7
  db 72
  !rest
  db 48
  !rest
  db 27
  !rest
  !instr,!instr04
  !volume,114
  !pan,8
  !subtranspose,29
  db 72,$7F
  !b5
  db 45
  !tie
  !end

.pattern1_0
  db 12,$7D
  !c7
  db 12,$7C
  !b6
  db 48
  !a6
  db 24,$7A
  !fs6
  db 72,$79
  !d6
  db 24,$7C
  !a6
  db 24,$7B
  !d6
  !e6
  !f6
  !g6
  db 24,$79
  !a6
  db 36,$7A
  !b6
  db 12
  !a6
  db 24,$6C
  !b6
  db 24,$7B
  !gs6
  db 24,$7D
  !e7
  db 24,$7B
  !d7
  db 24,$7C
  !b6
  db 24,$7B
  !b6
  !b6
  !b6
  db 24,$7C
  !d7
  db 12,$7A
  !c7
  db 12,$7B
  !b6
  db 36,$79
  !a6
  db 12,$7B
  !fs6
  db 24
  !a6
  db 48
  !g6
  db 12,$7A
  !e6
  !fs6
  db 48,$7B
  !g6
  db 12,$7A
  !e6
  db 12,$7B
  !fs6
  db 24
  !g6
  !b6
  db 12,$7A
  !a6
  !g6
  db 72
  !a6
  db 48
  !tie
  db 12
  !e6
  db 12,$7C
  !fs6
  db 48,$7A
  !g6
  db 12
  !e6
  db 12,$7B
  !fs6
  db 24,$7A
  !g6
  db 24,$7C
  !b6
  db 12,$79
  !a6
  db 12,$7A
  !g6
  db 72,$7B
  !b6
  !tie
  db 48,$7C
  !b6
  db 24,$7B
  !e6
  db 24,$7C
  !b6
  !d7
  !end

.pattern1_1
  db 24,$7A
  !c4
  db 72,$7D
  !g3
  db 48
  !tie
  db 12
  !rest
  db 12,$7A
  !a3
  db 72,$7C
  !as3
  db 48
  !tie
  db 12
  !rest
  db 12,$6B
  !g3
  db 72,$7C
  !f3
  db 44,$7B
  !gs3
  db 4
  !rest
  db 12,$5B
  !as3
  db 12,$5A
  !b3
  db 72,$7D
  !c4
  db 48
  !tie
  db 24
  !rest
  db 72,$7B
  !b3
  db 67
  !as3
  db 5
  !rest
  db 72,$7A
  !a3
  db 48,$7B
  !e4
  db 9
  !ds4
  db 3
  !rest
  db 12,$6B
  !d4
  db 72,$7C
  !b3
  db 48
  !tie
  db 24,$7A
  !fs3
  db 71,$7C
  !a3
  db 1
  !rest
  db 48,$7A
  !e4
  db 11,$7B
  !f4
  db 1
  !rest
  db 12,$6B
  !fs4
  db 72,$7C
  !g4
  db 36
  !tie
  db 10,$7B
  !fs4
  db 2
  !rest
  db 12,$5A
  !b3
  !d4
  db 72,$7C
  !c4
  db 48
  !tie
  !end

.pattern1_2
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7E
  !c6
  db 6,$77
  !e6
  db 6,$7F
  !fs6
  db 6,$77
  !c6
  db 6,$7F
  !g6
  db 6,$77
  !fs6
  db 6,$7F
  !fs6
  db 6,$77
  !g6
  db 6,$7F
  !d6
  db 6,$77
  !fs6
  db 6,$7F
  !b5
  db 6,$77
  !d6
  db 6,$7E
  !g5
  db 6,$77
  !b5
  db 6,$7F
  !fs6
  db 6,$77
  !g5
  db 6,$7F
  !g6
  db 6,$77
  !fs6
  db 6,$7F
  !fs6
  db 6,$77
  !g6
  db 6,$7F
  !d6
  db 6,$77
  !fs6
  db 6,$7F
  !b5
  db 6,$77
  !d6
  db 6,$7E
  !g5
  db 6,$77
  !b5
  !loop : dw .sub27A9 : db 2
  !loop : dw .sub27CE : db 1
  db 6,$7F
  !b6
  db 6,$77
  !c6
  db 6,$7F
  !c7
  db 6,$77
  !b6
  db 6,$7F
  !b6
  db 6,$77
  !c7
  db 6,$7F
  !g6
  db 6,$77
  !b6
  !end

.pattern1_3
  db 2
  !rest
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7E
  !c6
  db 6,$77
  !e6
  db 6,$7F
  !fs6
  db 6,$77
  !c6
  db 6,$7F
  !g6
  db 6,$77
  !fs6
  db 6,$7F
  !fs6
  db 6,$77
  !g6
  db 6,$7F
  !d6
  db 6,$77
  !fs6
  db 6,$7F
  !b5
  db 6,$77
  !d6
  db 6,$7E
  !g5
  db 6,$77
  !b5
  db 6,$7F
  !fs6
  db 6,$77
  !g5
  db 6,$7F
  !g6
  db 6,$77
  !fs6
  db 6,$7F
  !fs6
  db 6,$77
  !g6
  db 6,$7F
  !d6
  db 6,$77
  !fs6
  db 6,$7F
  !b5
  db 6,$77
  !d6
  db 6,$7E
  !g5
  db 6,$77
  !b5
  !loop : dw .sub27A9 : db 2
  !loop : dw .sub27CE : db 1
  db 6,$7F
  !b6
  db 6,$77
  !c6
  db 6,$7F
  !c7
  db 6,$77
  !b6
  db 6,$7F
  !b6
  db 6,$77
  !c7
  db 6,$7F
  !g6
  db 4,$77
  !b6
  !end

.pattern1_4
  db 19,$79
  !c5
  db 72,$7F
  !g4
  !tie
  !g4
  !tie
  !f4
  !f4
  !c5
  !tie
  !b4
  !as4
  !a4
  !tie
  !b4
  !tie
  !a4
  !tie
  !g4
  !tie
  !c5
  db 53
  !tie
  !end

.pattern1_5
  db 22,$79
  !e5
  db 72,$7F
  !b4
  !tie
  !as4
  !tie
  db 72,$6F
  !a4
  !gs4
  db 72,$7F
  !e5
  !tie
  db 72,$6F
  !d5
  !cs5
  db 72,$7F
  !c5
  !tie
  !d5
  !tie
  !c5
  !tie
  !b4
  !tie
  !e5
  db 50
  !tie
  !end

.pattern1_6
  db 24,$79
  !g5
  db 72,$7F
  !d5
  !tie
  !d5
  !tie
  !c5
  !b4
  !g5
  !tie
  !fs5
  !e5
  !e5
  !tie
  !fs5
  !tie
  !e5
  !tie
  !d5
  !tie
  !g5
  db 48
  !tie
  !end

.pattern1_7
  db 27,$79
  !b5
  db 72,$7F
  !fs5
  !tie
  !f5
  !tie
  db 72,$6F
  !e5
  !d5
  db 72,$7F
  !b5
  !tie
  db 72,$6F
  !a5
  !g5
  db 72,$7F
  !g5
  !tie
  !a5
  !tie
  !g5
  !tie
  !fs5
  !tie
  !b5
  db 45
  !tie
  !end

.sub2784
  db 6,$7F
  !b6
  db 6,$77
  !c6
  db 6,$7F
  !c7
  db 6,$77
  !b6
  db 6,$7F
  !b6
  db 6,$77
  !c7
  db 6,$7F
  !g6
  db 6,$77
  !b6
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7F
  !c6
  db 6,$77
  !e6
  !end

.sub27A9
  db 6,$7F
  !f6
  db 6,$77
  !g5
  db 6,$7F
  !g6
  db 6,$77
  !f6
  db 6,$7F
  !f6
  db 6,$77
  !g6
  db 6,$7F
  !d6
  db 6,$77
  !f6
  db 6,$7F
  !as5
  db 6,$77
  !d6
  db 6,$7E
  !g5
  db 6,$77
  !as5
  !end

.sub27CE
  db 6,$7F
  !e6
  db 6,$77
  !g5
  db 6,$7F
  !f6
  db 6,$77
  !e6
  db 6,$7F
  !e6
  db 6,$77
  !f6
  db 6,$7F
  !c6
  db 6,$77
  !e6
  db 6,$7F
  !a5
  db 6,$77
  !c6
  db 6,$7E
  !f5
  db 6,$77
  !a5
  db 6,$7F
  !d6
  db 6,$77
  !f5
  db 6,$7F
  !e6
  db 6,$77
  !d6
  db 6,$7F
  !d6
  db 6,$77
  !e6
  db 6,$7F
  !b5
  db 6,$77
  !d6
  db 6,$7F
  !gs5
  db 6,$77
  !b5
  db 6,$7E
  !f5
  db 6,$77
  !gs5
  db 6,$7F
  !b6
  db 6,$77
  !f5
  db 6,$7F
  !c7
  db 6,$77
  !b6
  db 6,$7F
  !b6
  db 6,$77
  !c7
  db 6,$7F
  !g6
  db 6,$77
  !b6
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7E
  !c6
  db 6,$77
  !e6
  db 6,$7F
  !b6
  db 6,$77
  !c6
  db 6,$7F
  !c7
  db 6,$77
  !b6
  db 6,$7F
  !b6
  db 6,$77
  !c7
  db 6,$7F
  !g6
  db 6,$77
  !b6
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7E
  !c6
  db 6,$77
  !e6
  db 6,$7F
  !a6
  db 6,$77
  !c6
  db 6,$7F
  !b6
  db 6,$77
  !a6
  db 6,$7F
  !a6
  db 6,$77
  !b6
  db 6,$7F
  !fs6
  db 6,$77
  !a6
  db 6,$7F
  !d6
  db 6,$77
  !fs6
  db 6,$7E
  !b5
  db 6,$77
  !d6
  db 6,$7F
  !g6
  db 6,$77
  !b5
  db 6,$7F
  !a6
  db 6,$77
  !g6
  db 6,$7F
  !g6
  db 6,$77
  !a6
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7F
  !cs6
  db 6,$77
  !e6
  db 6,$7E
  !as5
  db 6,$77
  !cs6
  db 6,$7F
  !g6
  db 6,$77
  !as5
  db 6,$7F
  !a6
  db 6,$77
  !g6
  db 6,$7F
  !g6
  db 6,$77
  !a6
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7F
  !c6
  db 6,$77
  !e6
  db 6,$7E
  !a5
  db 6,$77
  !c6
  db 6,$7F
  !g6
  db 6,$77
  !a5
  db 6,$7F
  !a6
  db 6,$77
  !g6
  db 6,$7F
  !g6
  db 6,$77
  !a6
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7F
  !c6
  db 6,$77
  !e6
  db 6,$7E
  !a5
  db 6,$77
  !c6
  db 6,$7F
  !a6
  db 6,$77
  !a5
  db 6,$7F
  !b6
  db 6,$77
  !a6
  db 6,$7F
  !a6
  db 6,$77
  !b6
  db 6,$7F
  !fs6
  db 6,$77
  !a6
  db 6,$7F
  !d6
  db 6,$77
  !fs6
  db 6,$7E
  !b5
  db 6,$77
  !d6
  db 6,$7F
  !a6
  db 6,$77
  !b5
  db 6,$7F
  !b6
  db 6,$77
  !a6
  db 6,$7F
  !a6
  db 6,$77
  !b6
  db 6,$7F
  !fs6
  db 6,$77
  !a6
  db 6,$7F
  !d6
  db 6,$77
  !fs6
  db 6,$7E
  !b5
  db 6,$77
  !d6
  db 6,$7F
  !g6
  db 6,$77
  !b5
  db 6,$7F
  !a6
  db 6,$77
  !g6
  db 6,$7F
  !g6
  db 6,$77
  !a6
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7F
  !c6
  db 6,$77
  !e6
  db 6,$7E
  !a5
  db 6,$77
  !c6
  db 6,$7F
  !g6
  db 6,$77
  !a5
  db 6,$7F
  !a6
  db 6,$77
  !g6
  db 6,$7F
  !g6
  db 6,$77
  !a6
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7F
  !c6
  db 6,$77
  !e6
  db 6,$7E
  !a5
  db 6,$77
  !c6
  db 6,$7F
  !fs6
  db 6,$77
  !a5
  db 6,$7F
  !g6
  db 6,$77
  !fs6
  db 6,$7F
  !fs6
  db 6,$77
  !g6
  db 6,$7F
  !d6
  db 6,$77
  !fs6
  db 6,$7F
  !b5
  db 6,$77
  !d6
  db 6,$7E
  !g5
  db 6,$77
  !b5
  db 6,$7F
  !fs6
  db 6,$77
  !g5
  db 6,$7F
  !g6
  db 6,$77
  !fs6
  db 6,$7F
  !fs6
  db 6,$77
  !g6
  db 6,$7F
  !d6
  db 6,$77
  !fs6
  db 6,$7F
  !b5
  db 6,$77
  !d6
  db 6,$7E
  !g5
  db 6,$77
  !b5
  db 6,$7F
  !b6
  db 6,$77
  !g5
  db 6,$7F
  !c7
  db 6,$77
  !b6
  db 6,$7F
  !b6
  db 6,$77
  !c7
  db 6,$7F
  !g6
  db 6,$77
  !b6
  db 6,$7F
  !e6
  db 6,$77
  !g6
  db 6,$7E
  !c6
  db 6,$77
  !e6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
