asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr01 = $17
!instr02 = $18
!instr04 = $19
!instr05 = $1A
!instr06 = $1B
!instr07 = $1C

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr01,$8F,$EE,$B8,$07,$F0
  db !instr02,$FF,$F2,$B8,$03,$30
  db !instr04,$F8,$E9,$B8,$03,$00
  db !instr05,$8F,$E0,$B8,$07,$A0
  db !instr06,$FF,$E0,$B8,$04,$B0
  db !instr07,$FF,$E0,$B8,$07,$A0
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample01,Sample01+153
  dw Sample02,Sample02+1791
  dw Sample03_04,Sample03_04+27
  dw Sample05,Sample05+1116
  dw Sample06,Sample06+1773
  dw Sample07,Sample07+522
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample01: incbin "Sample_17977fc01a18cdbd40a85dc8b0711435.brr"
  Sample02: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample03_04: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample05: incbin "Sample_32a01a2aee96ffa8de0fbc007ff34461.brr"
  Sample06: incbin "Sample_5a6e27d3a1a51c412fec5177d38f8bc5.brr"
  Sample07: incbin "Sample_42bd4d5871c313f2a4568f7628217e90.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2564

Tracker2564:
  dw .pattern0
-
  dw .pattern1
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, .pattern0_7
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, .pattern1_5, .pattern1_6, .pattern1_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr05
  !musicVolume,255
  !tempo,33
  !instr,!instr00
  !volume,125
  !vibrato,24,24,96
  db 14,$7F
  !a5
  db 10
  !rest
  db 14
  !c6
  db 10
  !rest
  !end

.pattern0_7
  db 24
  !rest
  !instr,!instr00
  !volume,62
  !subtranspose,8
  !vibrato,24,24,96
  db 14,$7F
  !a5
  db 10
  !rest

.pattern1_0
  db 48,$7F
  !d6
  !a6
  db 24
  !g6
  !e6
  !c6
  !g5
  db 48
  !as5
  !f6
  db 24
  !e6
  !c6
  !a5
  !c6
  db 48
  !d6
  !a6
  db 24
  !g6
  !c7
  !g6
  !e6
  db 48
  !f6
  !a6
  !g6
  db 14
  !a5
  db 10
  !rest
  db 14
  !c6
  db 10
  !rest
  !end

.pattern1_1
  !instr,!instr04
  !volume,104
  db 96,$7F
  !as5
  !a5
  !g5
  db 48
  !f5
  db 24
  !g5
  !a5
  db 96
  !as5
  !a5
  !g5
  !c6

.pattern1_2
  !instr,!instr01
  !volume,166
  db 14,$7F
  !as3
  db 24
  !rest
  db 10
  !f3
  db 24
  !as3
  !f3
  db 14
  !a3
  db 24
  !rest
  db 10
  !e3
  db 24
  !a3
  !e3
  db 14
  !g3
  db 24
  !rest
  db 10
  !d3
  db 24
  !g3
  !d3
  db 14
  !f3
  db 24
  !rest
  db 10
  !c3
  db 24
  !f3
  !c3
  db 14
  !as3
  db 24
  !rest
  db 10
  !f3
  db 24
  !as3
  !f3
  db 14
  !a3
  db 24
  !rest
  db 10
  !c4
  db 24
  !d4
  !a3
  db 14
  !g3
  db 24
  !rest
  db 10
  !d3
  db 24
  !g3
  !d4
  db 14
  !c4
  db 24
  !rest
  db 10
  !g3
  db 24
  !c4
  !g3

.pattern1_3
  !volume,198
  db 24,$7F
  %percNote(!instr05-!instr05)
  db 14
  %percNote(!instr06-!instr05)
  db 10
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !loop : dw .sub2745 : db 6
  %percNote(!instr05-!instr05)
  db 14
  %percNote(!instr06-!instr05)
  db 10
  %percNote(!instr05-!instr05)
  db 14,$79
  %percNote(!instr06-!instr05)
  db 10,$7B
  %percNote(!instr06-!instr05)
  db 14,$7D
  %percNote(!instr06-!instr05)
  db 10,$7F
  %percNote(!instr06-!instr05)

.pattern1_4
  !instr,!instr02
  !subtranspose,58
  !volume,104
  !pan,13
  db 24
  !rest
  db 14,$7F
  !a6
  db 10
  !a6
  db 24
  !rest
  db 14
  !a6
  db 10
  !rest
  db 24
  !rest
  db 14
  !g6
  db 10
  !g6
  db 24
  !rest
  db 14
  !g6
  db 10
  !rest
  !loop : dw .sub274E : db 1
  db 24
  !rest
  db 14
  !a6
  db 10
  !a6
  db 24,$75
  !a6
  db 14,$7F
  !a6
  db 10
  !rest
  db 24
  !rest
  db 14
  !g6
  db 10
  !g6
  db 24
  !rest
  db 14
  !g6
  db 10
  !rest
  db 24
  !rest
  db 14
  !a6
  db 10
  !a6
  db 24
  !rest
  db 14
  !a6
  db 10
  !rest
  db 24
  !rest
  db 14
  !as6
  db 10
  !as6
  db 24
  !rest
  db 14
  !as6
  db 10
  !rest

.pattern1_5
  !instr,!instr02
  !subtranspose,58
  !volume,104
  !pan,7
  db 24
  !rest
  db 14,$7F
  !f6
  db 10
  !f6
  db 24
  !rest
  db 14
  !f6
  db 10
  !rest
  db 24
  !rest
  db 14
  !e6
  db 10
  !e6
  db 24
  !rest
  db 14
  !e6
  db 10
  !rest
  db 24
  !rest
  db 14
  !d6
  db 10
  !d6
  db 24
  !rest
  db 14
  !d6
  db 10
  !rest
  db 24
  !rest
  db 14
  !c6
  db 10
  !c6
  db 24
  !rest
  db 14
  !c6
  db 10
  !rest
  !loop : dw .sub274E : db 1
  db 24
  !rest
  db 14
  !f6
  db 10
  !f6
  db 24
  !rest
  db 14
  !f6
  db 10
  !rest
  db 24
  !rest
  db 14
  !g6
  db 10
  !g6
  db 24
  !rest
  db 14
  !g6
  db 10
  !rest

.pattern1_6
  db 14,$75
  %percNote(!instr07-!instr05)
  db 10
  %percNote(!instr07-!instr05)
  db 14
  %percNote(!instr07-!instr05)
  db 10
  %percNote(!instr07-!instr05)
  db 14
  %percNote(!instr07-!instr05)
  db 10
  %percNote(!instr07-!instr05)
  db 14
  %percNote(!instr07-!instr05)
  db 10
  %percNote(!instr07-!instr05)
  !loop : dw .sub2767 : db 7

.pattern1_7
  db 14,$7F
  !c6
  db 10
  !rest
  db 48
  !d6
  !a6
  db 24
  !g6
  !e6
  !c6
  !g5
  db 48
  !as5
  !f6
  db 24
  !e6
  !c6
  !a5
  !c6
  db 48
  !d6
  !a6
  db 24
  !g6
  !c7
  !g6
  !e6
  db 48
  !f6
  !a6
  !g6
  db 14
  !a5
  db 10
  !rest

.sub2745
  %percNote(!instr05-!instr05)
  db 14
  %percNote(!instr06-!instr05)
  db 10
  %percNote(!instr05-!instr05)
  db 24
  %percNote(!instr05-!instr05)
  %percNote(!instr06-!instr05)
  !end

.sub274E
  db 24
  !rest
  db 14
  !f6
  db 10
  !f6
  db 24
  !rest
  db 14
  !f6
  db 10
  !rest
  db 24
  !rest
  db 14
  !e6
  db 10
  !e6
  db 24
  !rest
  db 14
  !e6
  db 10
  !rest
  !end

.sub2767
  db 14
  %percNote(!instr07-!instr05)
  db 10
  %percNote(!instr07-!instr05)
  db 14
  %percNote(!instr07-!instr05)
  db 10
  %percNote(!instr07-!instr05)
  db 14
  %percNote(!instr07-!instr05)
  db 10
  %percNote(!instr07-!instr05)
  db 14
  %percNote(!instr07-!instr05)
  db 10
  %percNote(!instr07-!instr05)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
