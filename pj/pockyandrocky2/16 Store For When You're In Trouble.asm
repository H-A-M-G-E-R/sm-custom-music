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
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr03,$FF,$F2,$B8,$03,$30
  db !instr04,$8F,$E0,$B8,$07,$A0
  db !instr05,$FF,$E0,$B8,$02,$E0
  db !instr06,$FF,$F6,$B8,$04,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+27
  dw Sample03,Sample03+1791
  dw Sample04,Sample04+1116
  dw Sample05,Sample05+747
  dw Sample06,Sample06+207
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample03: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample04: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample05: incbin "Sample_f11465da9596fdc355f0f3ef8ee79676.brr"
  Sample06: incbin "Sample_52321808d69bf220a373c01cbb04d19b.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr04
  !musicVolume,255
  !tempo,27
  !end

.pattern1_0
  !instr,!instr00
  !volume,104
  !pan,11
  !vibrato,30,24,48
  db 12,$3F
  !f6
  !f6
  db 12,$7F
  !f6
  !g6
  db 12,$3F
  !a6
  db 12,$35
  !a6
  db 12,$7F
  !f6
  !c6
  !loop : dw .sub26C3 : db 1
  !volume,104
  db 12,$3F
  !f6
  !f6
  db 12,$7F
  !f6
  !g6
  db 12,$3F
  !a6
  db 12,$35
  !a6
  db 12,$7F
  !f6
  !c6
  !loop : dw .sub26D2 : db 1
  !dynamicVolume,72,42
  db 72
  !tie
  !volume,104
  db 12
  !a6
  !g6
  !loop : dw .sub26DD : db 1
  db 72
  !g6
  db 24
  !rest
  !end

.pattern1_1
  !instr,!instr02
  !volume,125
  !pan,13
  !subtranspose,29
  db 96,$7F
  !f5
  !f5
  !loop : dw .sub2705 : db 1
  !f5
  !f5
  !g5
  !loop : dw .sub2705 : db 1
  !loop : dw .sub2709 : db 2
  !g5
  !end

.pattern1_2
  !instr,!instr01
  !volume,166
  db 24,$7F
  !f4
  db 12
  !rest
  !f4
  !f4
  db 36
  !rest
  !loop : dw .sub270C : db 1
  db 24
  !c4
  db 12
  !rest
  !c4
  !c4
  !g3
  !c4
  !e4
  db 24
  !f4
  db 12
  !rest
  !f4
  !f4
  db 36
  !rest
  !loop : dw .sub270C : db 1
  db 24
  !c4
  db 12
  !rest
  !c4
  !c4
  db 36
  !rest
  db 24
  !as3
  db 12
  !rest
  !as3
  !as3
  db 36
  !rest
  !loop : dw .sub271D : db 1
  db 24
  !a3
  db 12
  !rest
  !a3
  !a3
  !rest
  db 24
  !a3
  !as3
  db 12
  !rest
  !as3
  !as3
  db 36
  !rest
  !loop : dw .sub271D : db 1
  db 24
  !c4
  db 12
  !rest
  !c4
  db 24
  !c4
  !e4
  !end

.pattern1_3
  !volume,198
  !transpose,244
  !pan,10
  db 24,$7F
  %percNote(!instr04-!instr04)
  !pan,15
  db 12
  %percNote(!instr05-!instr04)
  !pan,10
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  !pan,5
  %percNote(!instr05-!instr04)
  !loop : dw .sub272E : db 15
  !end

.pattern1_4
  !volume,198
  !pan,10
  db 96
  !rest
  !rest
  !rest
  db 72
  !rest
  db 24,$7F
  %percNote(!instr06-!instr04)
  db 96
  !rest
  !rest
  !rest
  db 72
  !rest
  db 24
  %percNote(!instr06-!instr04)
  db 96
  !rest
  !rest
  !rest
  db 72
  !rest
  db 24
  %percNote(!instr06-!instr04)
  db 96
  !rest
  !rest
  !rest
  db 72
  !rest
  db 24
  %percNote(!instr06-!instr04)
  !end

.pattern1_5
  !instr,!instr02
  !volume,104
  !pan,7
  !subtranspose,29
  db 96,$7F
  !c5
  !d5
  !d5
  !c5
  !c5
  !d5
  !d5
  !e5
  !d5
  !c5
  !d5
  !c5
  !d5
  !c5
  !d5
  !e5
  !end

.pattern1_6
  !instr,!instr03
  !volume,104
  !subtranspose,54
  db 6,$7F
  !f5
  !rest
  !c5
  db 6,$75
  !f5
  db 6,$7F
  !d5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !d5
  db 6,$7F
  !f5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !f5
  db 6,$7F
  !d5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !d5
  !loop : dw .sub273E : db 2
  db 6,$7F
  !c7
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !c7
  db 6,$7F
  !a6
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !a6
  db 6,$7F
  !g6
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !g6
  db 6,$7F
  !d6
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !d6
  db 6,$7F
  !c6
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !c6
  db 6,$7F
  !d5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !d5
  db 6,$7F
  !f5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !f5
  db 6,$7F
  !d5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !d5
  !loop : dw .sub273E : db 2
  db 6,$7F
  !c7
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !c7
  db 6,$7F
  !a6
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !a6
  db 6,$7F
  !g6
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !g6
  db 6,$7F
  !c7
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !c7
  db 6,$7F
  !d7
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !d7
  db 6,$7F
  !d5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !d5
  db 6,$7F
  !f5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !f5
  db 6,$7F
  !d5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !d5
  !loop : dw .sub273E : db 6
  db 6,$7F
  !g5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !g5
  db 6,$7F
  !e5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !e5
  db 6,$7F
  !g5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !g5
  db 6,$7F
  !e5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !e5
  !end

.pattern1_7
  !instr,!instr00
  !volume,78
  !vibrato,30,24,48
  !subtranspose,16
  !pan,9
  db 24
  !rest
  db 12,$5F
  !f6
  !f6
  db 12,$7F
  !f6
  !g6
  db 12,$5F
  !a6
  db 12,$55
  !a6
  db 12,$7F
  !f6
  !c6
  !loop : dw .sub26C3 : db 1
  !volume,78
  db 12,$5F
  !f6
  !f6
  db 12,$7F
  !f6
  !g6
  db 12,$5F
  !a6
  db 12,$55
  !a6
  db 12,$7F
  !f6
  !c6
  !loop : dw .sub26D2 : db 1
  !dynamicVolume,72,42
  db 72
  !tie
  !volume,78
  db 12
  !a6
  !g6
  !loop : dw .sub26DD : db 1
  db 72
  !g6
  !end

.sub26C3
  !d6
  !c6
  !d6
  !f6
  !d6
  !c6
  !a5
  !f5
  db 96
  !d5
  !dynamicVolume,96,42
  !tie
  !end

.sub26D2
  !d6
  !c6
  !d6
  !f6
  !d6
  !c6
  !d6
  !f6
  db 96
  !g6
  !end

.sub26DD
  db 48
  !f6
  db 12
  !f6
  !g6
  !f6
  !d6
  db 72
  !c6
  db 12
  !a5
  !c6
  db 24
  !d6
  !c6
  !d6
  !f6
  db 72
  !g6
  db 12
  !a6
  !g6
  db 48
  !f6
  db 12
  !f6
  !g6
  !f6
  !d6
  db 72
  !c6
  db 12
  !d6
  !f6
  db 24
  !g6
  !a6
  !g6
  !c7
  !end

.sub2705
  !f5
  !e5
  !f5
  !end

.sub2709
  !e5
  !f5
  !end

.sub270C
  db 24
  !d4
  db 12
  !rest
  !d4
  !d4
  db 36
  !rest
  db 24
  !as3
  db 12
  !rest
  !as3
  !as3
  db 36
  !rest
  !end

.sub271D
  db 24
  !a3
  db 12
  !rest
  !a3
  !a3
  db 36
  !rest
  db 24
  !g3
  db 12
  !rest
  !g3
  !g3
  db 36
  !rest
  !end

.sub272E
  !pan,10
  %percNote(!instr04-!instr04)
  !pan,15
  db 12
  %percNote(!instr05-!instr04)
  !pan,10
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  !pan,5
  %percNote(!instr05-!instr04)
  !end

.sub273E
  db 6,$7F
  !f5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !f5
  db 6,$7F
  !d5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !d5
  db 6,$7F
  !f5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !f5
  db 6,$7F
  !d5
  db 6,$75
  !c5
  db 6,$7F
  !c5
  db 6,$75
  !d5
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
