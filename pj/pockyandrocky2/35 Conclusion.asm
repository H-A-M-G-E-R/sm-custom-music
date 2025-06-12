asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr03 = $18
!instr05 = $19
!instr06 = $1A
!instr07 = $1B
!instr09 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr03,$F8,$E9,$B8,$03,$00
  db !instr05,$FF,$EC,$B8,$02,$40
  db !instr06,$8F,$E0,$B8,$07,$A0
  db !instr07,$FF,$E0,$B8,$04,$B0
  db !instr09,$FF,$F6,$B8,$04,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02_03,Sample02_03+27
  dw Sample05,Sample05+1386
  dw Sample06,Sample06+1116
  dw Sample07,Sample07+1773
  dw Sample09,Sample09+207
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02_03: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample05: incbin "Sample_69ccba18c0744e2d4f5b892690ea0fa2.brr"
  Sample06: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample07: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample09: incbin "Sample_52321808d69bf220a373c01cbb04d19b.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker336E

Tracker336E:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr06
  !musicVolume,255
  !tempo,17
  !end

.pattern1_0
  !loop : dw .sub3899 : db 1
  !rest
  !rest
  db 72
  !rest
  !instr,!instr00
  !volume,114
  !vibrato,24,30,72
  db 12,$7F
  !as5
  !c6
  db 57
  !d6
  db 3,$75
  !d6
  db 24,$7F
  !c6
  db 12
  !as5
  !loop : dw .sub38A0 : db 1
  !dynamicVolume,96,31
  !tie
  !end

.pattern1_1
  !instr,!instr05
  !volume,83
  !transpose,12
  !subtranspose,10
  !pan,15
  !dynamicPan,96,5
  db 6,$7F
  !d6
  !rest
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !d6
  db 6,$75
  !as5
  db 6,$7F
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !a6
  db 6,$7F
  !d6
  db 6,$75
  !f6
  db 6,$7F
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !as5
  !loop : dw .sub3915 : db 1
  !loop : dw .sub397C : db 1
  !loop : dw .sub3915 : db 1
  !dynamicPan,96,15
  db 6,$7F
  !a5
  db 6,$75
  !d6
  db 6,$7F
  !e5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !e5
  db 6,$7F
  !e6
  db 6,$75
  !a5
  db 6,$7F
  !as5
  db 6,$75
  !e6
  db 6,$7F
  !d6
  db 6,$75
  !as5
  db 6,$7F
  !e6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 6,$75
  !e6
  !pan,10
  db 6,$7F
  !ds6
  !as6
  db 6,$7B
  !ds6
  !as6
  db 6,$77
  !ds6
  !as6
  db 6,$73
  !ds6
  !as6
  db 6,$71
  !ds6
  !as6
  db 36
  !rest
  db 6,$7F
  !d6
  !a6
  db 6,$7B
  !d6
  !a6
  db 6,$77
  !d6
  !a6
  db 6,$73
  !d6
  !a6
  db 6,$71
  !d6
  !a6
  db 36
  !rest
  db 6,$7F
  !ds6
  !as6
  db 6,$7B
  !ds6
  !as6
  db 6,$77
  !ds6
  !as6
  db 6,$73
  !ds6
  !as6
  db 6,$71
  !ds6
  !as6
  db 36
  !rest
  db 6,$7F
  !d6
  !a6
  db 6,$7B
  !d6
  !a6
  db 6,$77
  !d6
  !a6
  db 6,$73
  !d6
  !a6
  db 6,$71
  !d6
  !a6
  db 36
  !rest
  db 6,$7F
  !as5
  !f6
  db 6,$7B
  !as5
  !f6
  db 6,$77
  !as5
  !f6
  db 6,$73
  !as5
  !f6
  db 6,$71
  !as5
  !f6
  db 36
  !rest
  db 6,$7F
  !c6
  !g6
  db 6,$7B
  !c6
  !g6
  db 6,$77
  !c6
  !g6
  db 6,$73
  !c6
  !g6
  db 6,$71
  !c6
  !g6
  db 36
  !rest
  db 6,$7F
  !d6
  !g6
  db 6,$7B
  !d6
  !g6
  db 6,$77
  !d6
  !g6
  db 6,$73
  !d6
  !g6
  db 6,$71
  !d6
  !g6
  db 36
  !rest
  db 6,$7F
  !e6
  !a6
  db 6,$7B
  !e6
  !a6
  db 6,$77
  !e6
  !a6
  db 6,$73
  !e6
  !a6
  db 6,$71
  !e6
  !a6
  db 36
  !rest
  db 6,$7F
  !d6
  !rest
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !d6
  db 6,$75
  !as5
  db 6,$7F
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !a6
  db 6,$7F
  !d6
  db 6,$75
  !f6
  db 6,$7F
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !as5
  db 6,$7F
  !c6
  db 6,$75
  !f6
  db 6,$7F
  !a5
  db 6,$75
  !c6
  db 6,$7F
  !c6
  db 6,$75
  !a5
  db 6,$7F
  !g6
  db 6,$75
  !c6
  db 6,$7F
  !e6
  db 6,$75
  !g6
  db 6,$7F
  !c6
  db 6,$75
  !e6
  db 6,$7F
  !a5
  db 6,$75
  !c6
  db 6,$7F
  !e6
  db 6,$75
  !a5
  db 6,$7F
  !as5
  db 6,$75
  !e6
  db 6,$7F
  !g5
  db 6,$75
  !as5
  db 6,$7F
  !as5
  db 6,$75
  !g5
  db 6,$7F
  !f6
  db 6,$75
  !as5
  db 6,$7F
  !d6
  db 6,$75
  !f6
  db 6,$7F
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !g5
  db 6,$75
  !as5
  db 6,$7F
  !d6
  db 6,$75
  !g5
  db 6,$7F
  !a5
  db 6,$75
  !d6
  db 6,$7F
  !e5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !e5
  db 6,$7F
  !e6
  db 6,$75
  !a5
  db 6,$7F
  !as5
  db 6,$75
  !e6
  db 6,$7F
  !d6
  db 6,$75
  !as5
  db 6,$7F
  !e6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 6,$75
  !e6
  db 6,$7F
  !d6
  db 6,$75
  !a6
  db 6,$7F
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !d6
  db 6,$75
  !as5
  db 6,$7F
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !a6
  db 6,$7F
  !d6
  db 6,$75
  !f6
  db 6,$7F
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !as5
  db 6,$7F
  !c6
  db 6,$75
  !f6
  db 6,$7F
  !a5
  db 6,$75
  !c6
  db 6,$7F
  !c6
  db 6,$75
  !a5
  db 6,$7F
  !g6
  db 6,$75
  !c6
  db 6,$7F
  !e6
  db 6,$75
  !g6
  db 6,$7F
  !c6
  db 6,$75
  !e6
  db 6,$7F
  !a5
  db 6,$75
  !c6
  db 6,$7F
  !e6
  db 6,$75
  !a5
  db 6,$7F
  !as5
  db 6,$75
  !e6
  db 6,$7F
  !f5
  db 6,$75
  !as5
  db 6,$7F
  !as5
  db 6,$75
  !f5
  db 6,$7F
  !f6
  db 6,$75
  !as5
  db 6,$7F
  !c6
  db 6,$75
  !f6
  db 6,$7F
  !g5
  db 6,$75
  !c6
  db 6,$7F
  !c6
  db 6,$75
  !g5
  db 6,$7F
  !g6
  db 6,$75
  !c6
  db 6,$7F
  !d6
  db 6,$75
  !c6
  db 6,$7F
  !a5
  db 6,$75
  !d6
  db 6,$7F
  !d6
  db 6,$75
  !a5
  db 6,$7F
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !g6
  db 6,$75
  !a6
  db 6,$7F
  !d6
  db 6,$75
  !g6
  db 6,$7F
  !g6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 6,$75
  !g6
  db 6,$7F
  !d6
  db 6,$75
  !a6
  db 6,$7F
  !a5
  db 6,$75
  !d6
  db 6,$7F
  !d6
  db 6,$75
  !a5
  db 6,$7F
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !g6
  db 6,$75
  !a6
  db 6,$7F
  !d6
  db 6,$75
  !g6
  db 6,$7F
  !g6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 6,$75
  !g6
  !end

.pattern1_2
  !instr,!instr03
  !volume,166
  !subtranspose,29
  db 96,$7F
  !as3
  !a3
  !g3
  !f3
  !as3
  !a3
  !g3
  !f3
  !ds4
  !d4
  !ds4
  db 72
  !d4
  db 24
  !c4
  db 96
  !as3
  !c4
  !g3
  !a3
  !instr,!instr01
  db 24
  !as3
  db 12,$75
  !as3
  db 12,$7F
  !as3
  db 24
  !as3
  db 12,$75
  !as3
  !rest
  db 24,$7F
  !a3
  db 12,$75
  !a3
  db 12,$7F
  !a3
  db 24
  !a3
  db 12,$75
  !a3
  !rest
  db 24,$7F
  !g3
  db 12,$75
  !g3
  db 12,$7F
  !g3
  db 24
  !g3
  db 12,$75
  !g3
  !rest
  db 24,$7F
  !f3
  db 12,$75
  !f3
  db 12,$7F
  !f3
  db 24
  !g3
  !a3
  !as3
  db 12,$75
  !as3
  db 12,$7F
  !as3
  db 24
  !as3
  db 12,$75
  !as3
  !rest
  db 24,$7F
  !a3
  db 12,$75
  !a3
  db 12,$7F
  !a3
  db 24
  !a3
  db 12,$75
  !a3
  !rest
  db 36,$7F
  !as3
  db 12
  !as3
  db 36
  !c4
  db 12
  !c4
  db 24
  !d4
  db 12,$75
  !d4
  db 12,$7F
  !d4
  db 24
  !d4
  !a3
  !d4
  db 12,$75
  !d4
  db 12,$7F
  !d4
  db 48
  !d4
  !end

.pattern1_3
  !loop : dw .sub3899 : db 1
  !rest
  !rest
  !rest
  !volume,198
  db 36,$7F
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  db 12,$75
  %percNote(!instr09-!instr06)
  !loop : dw .sub39E3 : db 7
  db 24,$7F
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  !loop : dw .sub39F0 : db 8
  !end

.pattern1_4
  !pan,10
  !instr,!instr03
  !volume,125
  !slideIn,0,3,12
  !subtranspose,29
  db 96,$7F
  !a5
  !g5
  !f5
  db 48
  !e5
  db 24
  !f5
  !g5
  db 96
  !a5
  !g5
  !f5
  db 48
  !e5
  db 24
  !f5
  !g5
  db 96
  !as5
  !a5
  !as5
  !a5
  !a5
  !g5
  !g5
  !e5
  !a5
  !g5
  !f5
  db 48
  !e5
  db 24
  !f5
  !g5
  db 96
  !a5
  !g5
  db 48
  !f5
  !e5
  db 96
  !g5
  !f5
  !end

.pattern1_5
  !pan,11
  !instr,!instr03
  !volume,125
  !slideIn,0,3,12
  !subtranspose,29
  db 96,$7F
  !f5
  !e5
  !d5
  db 48
  !c5
  db 24
  !d5
  !e5
  db 96
  !f5
  !e5
  !d5
  db 48
  !c5
  db 24
  !d5
  !e5
  db 96
  !g5
  !f5
  !g5
  !f5
  !f5
  !e5
  !d5
  !cs5
  !f5
  !e5
  !d5
  db 48
  !c5
  db 24
  !d5
  !e5
  db 96
  !f5
  !e5
  db 48
  !d5
  !c5
  db 96
  !d5
  !d5
  !end

.pattern1_6
  !pan,9
  !instr,!instr03
  !volume,125
  !slideIn,0,3,12
  !subtranspose,29
  db 96,$7F
  !d5
  !c5
  !as4
  db 48
  !a4
  db 24
  !as4
  !c5
  db 96
  !d5
  !c5
  !as4
  db 48
  !a4
  db 24
  !as4
  !c5
  db 96
  !ds5
  !d5
  !ds5
  !d5
  !d5
  !c5
  !as4
  !cs5
  !d5
  !c5
  !as4
  db 48
  !a4
  db 24
  !as4
  !c5
  db 96
  !d5
  !c5
  db 48
  !as4
  !g4
  db 96
  !a4
  !a4
  !end

.pattern1_7
  db 3
  !rest
  !instr,!instr05
  !volume,62
  !transpose,12
  !subtranspose,18
  !pan,15
  !dynamicPan,96,5
  db 6,$7F
  !d6
  !rest
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !d6
  db 6,$75
  !as5
  db 6,$7F
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !a6
  db 6,$7F
  !d6
  db 6,$75
  !f6
  db 6,$7F
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !as5
  !loop : dw .sub3915 : db 1
  !loop : dw .sub397C : db 1
  !loop : dw .sub3915 : db 1
  !dynamicPan,96,15
  db 6,$7F
  !a5
  db 6,$75
  !d6
  db 6,$7F
  !e5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !e5
  db 6,$7F
  !e6
  db 6,$75
  !a5
  db 6,$7F
  !as5
  db 6,$75
  !e6
  db 6,$7F
  !d6
  db 6,$75
  !as5
  db 6,$7F
  !e6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 3,$75
  !e6
  !pan,10
  !instr,!instr00
  !volume,70
  !vibrato,24,30,72
  !transpose,0
  !subtranspose,32
  db 6,$7F
  !as5
  db 12
  !c6
  db 60
  !d6
  db 24
  !c6
  db 12
  !as5
  !loop : dw .sub38A0 : db 1
  !dynamicVolume,78,31
  db 78
  !tie
  !end

.sub3899
  db 96
  !rest
  !rest
  !rest
  !rest
  !rest
  !end

.sub38A0
  db 57
  !a5
  db 3,$75
  !a5
  db 12,$7F
  !a5
  !as5
  !c6
  db 36
  !d6
  db 33
  !f6
  db 3,$75
  !f6
  db 12,$7F
  !c6
  !as5
  db 60
  !a5
  db 12,$75
  !a5
  db 12,$7F
  !f5
  !g5
  db 57
  !a5
  db 3,$75
  !a5
  db 12,$7F
  !c6
  !a5
  !f5
  db 66
  !g5
  db 6,$75
  !g5
  db 12,$7F
  !g5
  !a5
  db 24
  !as5
  !d6
  db 24,$7D
  !e6
  !g6
  db 66,$7B
  !a6
  db 6,$75
  !a6
  db 6,$7B
  !a6
  db 6,$7D
  !g6
  !e6
  db 6,$7F
  !cs6
  db 72
  !d6
  db 24
  !a6
  db 48
  !g6
  db 42
  !e6
  db 6,$75
  !e6
  db 72,$7F
  !as5
  db 24
  !f6
  db 12
  !e6
  !f6
  !e6
  !d6
  db 42
  !e6
  db 6,$75
  !e6
  db 72,$7F
  !d6
  db 24
  !a6
  !g6
  db 24,$7B
  !c7
  db 24,$7F
  !g6
  !e6
  db 48
  !f6
  !e6
  db 96
  !d6
  !end

.sub3915
  !dynamicPan,96,15
  db 6,$7F
  !c6
  db 6,$75
  !f6
  db 6,$7F
  !a5
  db 6,$75
  !c6
  db 6,$7F
  !c6
  db 6,$75
  !a5
  db 6,$7F
  !g6
  db 6,$75
  !c6
  db 6,$7F
  !e6
  db 6,$75
  !g6
  db 6,$7F
  !c6
  db 6,$75
  !e6
  db 6,$7F
  !a5
  db 6,$75
  !c6
  db 6,$7F
  !e6
  db 6,$75
  !a5
  !dynamicPan,96,5
  db 6,$7F
  !as5
  db 6,$75
  !e6
  db 6,$7F
  !g5
  db 6,$75
  !as5
  db 6,$7F
  !as5
  db 6,$75
  !g5
  db 6,$7F
  !f6
  db 6,$75
  !as5
  db 6,$7F
  !d6
  db 6,$75
  !f6
  db 6,$7F
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !g5
  db 6,$75
  !as5
  db 6,$7F
  !d6
  db 6,$75
  !g5
  !end

.sub397C
  !dynamicPan,96,15
  db 6,$7F
  !a5
  db 6,$75
  !d6
  db 6,$7F
  !e5
  db 6,$75
  !a5
  db 6,$7F
  !a5
  db 6,$75
  !e5
  db 6,$7F
  !e6
  db 6,$75
  !a5
  db 6,$7F
  !as5
  db 6,$75
  !e6
  db 6,$7F
  !d6
  db 6,$75
  !as5
  db 6,$7F
  !e6
  db 6,$75
  !d6
  db 6,$7F
  !a6
  db 6,$75
  !e6
  !dynamicPan,96,5
  db 6,$7F
  !d6
  db 6,$75
  !a6
  db 6,$7F
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !d6
  db 6,$75
  !as5
  db 6,$7F
  !a6
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !a6
  db 6,$7F
  !d6
  db 6,$75
  !f6
  db 6,$7F
  !as5
  db 6,$75
  !d6
  db 6,$7F
  !f6
  db 6,$75
  !as5
  !end

.sub39E3
  db 36,$7F
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr09-!instr06)
  db 12,$75
  %percNote(!instr09-!instr06)
  !end

.sub39F0
  %percNote(!instr06-!instr06)
  db 12
  %percNote(!instr07-!instr06)
  %percNote(!instr06-!instr06)
  db 24
  %percNote(!instr06-!instr06)
  %percNote(!instr07-!instr06)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
