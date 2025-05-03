asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr03 = $19
!instr04 = $1A
!instr05 = $1B

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$F2,$B8,$03,$30
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$FF,$E0,$B8,$02,$40
  db !instr03,$FF,$EC,$B8,$02,$40
  db !instr04,$8F,$E0,$B8,$07,$A0
  db !instr05,$FF,$F6,$B8,$04,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+1791
  dw Sample01,Sample01+153
  dw Sample02,Sample02+801
  dw Sample03,Sample03+1386
  dw Sample04,Sample04+1116
  dw Sample05,Sample05+207
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample03: incbin "Sample_69ccba18c0744e2d4f5b892690ea0fa2.brr"
  Sample04: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample05: incbin "Sample_52321808d69bf220a373c01cbb04d19b.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2402

Tracker2402:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, 0

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr04
  !musicVolume,255
  !tempo,27
  !end

.pattern1_0
  !instr,!instr00
  !volume,146
  !subtranspose,54
  db 24,$7F
  !e5
  db 14
  !g5
  db 10
  !c6
  db 14
  !a5
  db 10
  !g5
  db 14
  !e5
  db 10
  !g5
  !loop : dw .sub256E : db 1
  db 18
  !rest
  !end

.pattern1_1
  !instr,!instr03
  !volume,83
  !transpose,12
  db 14,$1F
  !e6
  db 10
  !c6
  db 14
  !e6
  db 10
  !g6
  db 14,$19
  !e6
  db 10
  !g6
  db 24
  !rest
  !loop : dw .sub25B0 : db 1
  db 14,$1F
  !e6
  db 10
  !c6
  db 14
  !e6
  db 10
  !g6
  db 14,$19
  !e6
  db 10
  !g6
  db 24
  !rest
  !loop : dw .sub25B0 : db 1

.pattern1_2
  !instr,!instr01
  !volume,166
  db 24,$7F
  !c4
  db 14,$2F
  !c5
  db 10,$7F
  !c5
  db 24
  !b3
  !rest
  !a3
  db 38
  !rest
  db 10
  !a4
  db 24
  !g3
  !f3
  db 14,$2F
  !f4
  db 10,$7F
  !f4
  db 24
  !e3
  !rest
  !d3
  db 14,$2F
  !d4
  db 10,$7F
  !d4
  db 24
  !g3
  !rest
  !c4
  db 14,$2F
  !c5
  db 10,$7F
  !c5
  db 24
  !b3
  !rest
  !a3
  db 14,$2F
  !a4
  db 10,$7F
  !a4
  db 24
  !g3
  !rest
  !f3
  db 14,$2F
  !f4
  db 10,$7F
  !f4
  db 14
  !g3
  db 10
  !g4
  db 24
  !g3
  !c4
  db 14,$2F
  !c5
  db 10,$7F
  !c5
  db 14
  !c4
  db 10
  !g3
  db 14
  !a3
  db 10
  !b3

.pattern1_3
  !volume,198
  db 48,$7F
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  db 24
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 48
  %percNote(!instr05-!instr04)
  !loop : dw .sub25C5 : db 5
  db 24
  %percNote(!instr04-!instr04)
  %percNote(!instr05-!instr04)
  db 48
  %percNote(!instr05-!instr04)

.pattern1_4
  !instr,!instr02
  !volume,83
  !vibrato,24,30,96
  db 48,$7F
  !c6
  !b5
  db 24
  !a5
  db 18,$79
  !a5
  db 20
  !rest
  db 10,$7F
  !a5
  db 24
  !g5
  db 48
  !a5
  !g5
  db 38
  !f5
  db 10
  !f5
  db 8,$79
  !f5
  db 6
  !f5
  db 34,$7F
  !g5
  db 48
  !e6
  !d6
  !c6
  !b5
  !c6
  !b5
  db 86
  !c6
  db 10,$79
  !c6

.pattern1_5
  !instr,!instr02
  !volume,83
  !vibrato,24,30,96
  db 48,$7F
  !g5
  !g5
  db 24
  !e5
  db 18,$79
  !e5
  db 20
  !rest
  db 10,$7F
  !e5
  db 24
  !d5
  db 48
  !f5
  !e5
  db 38
  !c5
  db 10
  !c5
  db 8,$79
  !c5
  db 6
  !c5
  db 34,$7F
  !d5
  db 48
  !c6
  !b5
  !a5
  !g5
  !a5
  !g5
  db 86
  !g5
  db 10,$79
  !g5

.pattern1_6
  db 18
  !rest
  !instr,!instr00
  !volume,73
  !subtranspose,62
  db 24,$7F
  !e5
  db 14
  !g5
  db 10
  !c6
  db 14
  !a5
  db 10
  !g5
  db 14
  !e5
  db 10
  !g5
  !loop : dw .sub256E : db 1

.sub256E
  db 62
  !a5
  db 10
  !g5
  db 14
  !e5
  db 10
  !c5
  db 96
  !d5
  db 14
  !d5
  db 10
  !e5
  db 14
  !d5
  db 10
  !c5
  db 24
  !a4
  db 14
  !c5
  db 10
  !d5
  db 24
  !e5
  db 14
  !g5
  db 10
  !c6
  db 14
  !a5
  db 10
  !g5
  db 14
  !e5
  db 10
  !g5
  db 24
  !a5
  db 14
  !c6
  db 10
  !d6
  db 14
  !e6
  db 10
  !d6
  db 14
  !c6
  db 10
  !b5
  db 24
  !a5
  !c6
  db 14
  !d6
  db 10
  !e6
  db 14
  !d6
  db 10
  !a5
  db 78
  !c6
  !end

.sub25B0
  db 96
  !rest
  db 14,$1F
  !f6
  db 10
  !c6
  db 14
  !f6
  db 10
  !a6
  db 14,$19
  !f6
  db 10
  !a6
  db 24
  !rest
  db 96
  !rest
  !end

.sub25C5
  %percNote(!instr04-!instr04)
  %percNote(!instr04-!instr04)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
