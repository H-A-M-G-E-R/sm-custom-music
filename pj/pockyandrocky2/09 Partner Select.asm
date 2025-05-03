asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr00 = $16
!instr02 = $17
!instr04 = $18
!instr08 = $19

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr00,$FF,$E0,$B8,$02,$40
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr04,$FF,$F2,$B8,$03,$30
  db !instr08,$FF,$F6,$B8,$04,$90
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample00,Sample00+801
  dw Sample02,Sample02+27
  dw Sample04,Sample04+1791
  dw Sample08,Sample08+207
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample00: incbin "Sample_66cde601ead136c7364fc7d2059e30ed.brr"
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample04: incbin "Sample_ae4e8adda54b807a81c1b80a841ed702.brr"
  Sample08: incbin "Sample_52321808d69bf220a373c01cbb04d19b.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker276A

Tracker276A:
-
  dw .pattern0
  dw $00FF,-

.pattern0: dw .pattern0_0, .pattern0_1, .pattern0_2, .pattern0_3, .pattern0_4, .pattern0_5, .pattern0_6, .pattern0_7

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !percBase,!instr08
  !musicVolume,255
  !tempo,22
  !instr,!instr00
  !volume,104
  !vibrato,24,36,96
  !pan,11
  db 36,$7F
  !e5
  db 12
  !g5
  db 42
  !a5
  db 6,$75
  !a5
  db 12,$7F
  !a5
  !g5
  !e5
  !g5
  db 42
  !a5
  db 6,$75
  !a5
  !loop : dw .sub2860 : db 2
  !loop : dw .sub2876 : db 1
  db 18
  !tie
  db 6
  !rest
  !end

.pattern0_1
  !instr,!instr04
  !volume,104
  !subtranspose,54
  !pan,15
  db 24,$7F
  !e5
  !a5
  !d5
  !g5
  !loop : dw .sub288C : db 7
  !rest

.pattern0_2
  db 2
  !rest
  !instr,!instr04
  !volume,104
  !subtranspose,62
  !pan,5
  db 24,$7F
  !e5
  !a5
  !d5
  !g5
  !loop : dw .sub288C : db 7
  db 22
  !rest

.pattern0_3
  !instr,!instr02
  !volume,125
  !pan,13
  db 96,$7F
  !e5
  !tie
  !f5
  !tie
  !e5
  !tie
  !f5
  !tie
  db 24
  !tie

.pattern0_4
  !instr,!instr02
  !volume,125
  !pan,7
  db 96,$7F
  !c5
  !tie
  !d5
  !tie
  !c5
  !tie
  !d5
  !tie
  db 24
  !tie

.pattern0_5
  !instr,!instr02
  !volume,187
  !subtranspose,86
  db 84,$7F
  !a3
  db 12
  !g3
  db 96
  !a3
  db 84
  !as3
  db 12
  !a3
  db 96
  !as3
  db 84
  !a3
  db 12
  !g3
  db 96
  !a3
  db 84
  !as3
  db 12
  !a3
  db 96
  !as3
  db 24
  !tie

.pattern0_6
  db 24
  !rest
  !instr,!instr00
  !volume,83
  !vibrato,24,36,96
  !pan,9
  !subtranspose,8
  db 36,$7F
  !e5
  db 12
  !g5
  db 42
  !a5
  db 6,$75
  !g5
  db 12,$7F
  !a5
  !g5
  !e5
  !g5
  db 42
  !a5
  db 6,$75
  !a5
  !loop : dw .sub2860 : db 2
  !loop : dw .sub2876 : db 1

.pattern0_7
  !volume,198
  db 72
  !rest
  db 12,$7F
  %percNote(!instr08-!instr08)
  db 12,$75
  %percNote(!instr08-!instr08)
  !loop : dw .sub2891 : db 7
  db 12,$72
  %percNote(!instr08-!instr08)
  !rest

.sub2860
  db 36,$7F
  !e5
  db 12
  !g5
  db 42
  !a5
  db 6,$75
  !a5
  db 12,$7F
  !a5
  !g5
  !e5
  !g5
  db 42
  !a5
  db 6,$75
  !a5
  !end

.sub2876
  db 36,$7F
  !a5
  db 12
  !c6
  db 42
  !d6
  db 6,$75
  !d6
  db 12,$7F
  !d6
  !c6
  !a5
  !c6
  db 42
  !d6
  db 6,$75
  !d6
  !end

.sub288C
  !e5
  !a5
  !d5
  !g5
  !end

.sub2891
  db 12,$72
  %percNote(!instr08-!instr08)
  db 60
  !rest
  db 12,$7F
  %percNote(!instr08-!instr08)
  db 12,$75
  %percNote(!instr08-!instr08)
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
