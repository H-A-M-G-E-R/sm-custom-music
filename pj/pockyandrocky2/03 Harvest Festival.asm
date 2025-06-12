asar 1.91
norom : org 0
incsrc "../defines.asm"

!instr02 = $16
!instr04 = $17

spcblock 6*$16+!p_instrumentTable nspc ; instruments
  db !instr02,$F8,$E9,$B8,$03,$00
  db !instr04,$FF,$EC,$B8,$02,$40
endspcblock

spcblock 4*$16+!p_sampleTable nspc ; sample table
  dw Sample02,Sample02+27
  dw Sample04,Sample04+1386
endspcblock

spcblock $B210-$6E00+!p_sampleData nspc ; sample data
  Sample02: incbin "Sample_155420261344daa1320b579d12648a8c.brr"
  Sample04: incbin "Sample_69ccba18c0744e2d4f5b892690ea0fa2.brr"

dw 0,0,0,0 ; padding for shared trackers
Trackers:
  dw Tracker2406

Tracker2406:
  dw .pattern0
  dw .pattern1
-
  dw .pattern2
  dw $00FF,-

.pattern0: dw .pattern0_0, 0, 0, 0, 0, 0, 0, 0
.pattern1: dw .pattern1_0, .pattern1_1, .pattern1_2, .pattern1_3, .pattern1_4, 0, 0, 0
.pattern2: dw .pattern2_0, 0, 0, 0, .pattern2_4, 0, 0, 0

.pattern0_0
  !endEcho
  !setDPMiscCommand,!noteEndInTicks,1
  !musicVolume,255
  !tempo,37
  !end

.pattern1_0
  db 24
  !rest
  !instr,!instr04
  !volume,62
  !pan,13
  !transpose,0
  !subtranspose,10
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 12,$75
  !c7
  !loop : dw .sub2547 : db 17
  !end

.pattern1_1
  !instr,!instr02
  !volume,104
  !pan,11
  !subtranspose,29
  db 24,$7F
  !c6
  db 72
  !d6
  db 24
  !f6
  !loop : dw .sub2560 : db 1
  !loop : dw .sub2580 : db 2
  db 48
  !f6
  !a6
  !g6
  !c6
  db 96
  !d6
  !tie
  !tie
  !tie
  !end

.pattern1_2
  db 24
  !rest
  !instr,!instr02
  !volume,166
  !subtranspose,29
  db 96,$7F
  !d4
  !tie
  !d4
  !tie
  !f4
  !d4
  !g3
  !c4
  !as3
  !a3
  !as3
  !a3
  !g3
  !c4
  !d4
  !tie
  !tie
  !tie
  !end

.pattern1_3
  db 24
  !rest
  !instr,!instr02
  !volume,62
  !pan,9
  !subtranspose,37
  db 24,$7F
  !c6
  db 72
  !d6
  db 24
  !f6
  !loop : dw .sub2560 : db 1
  !loop : dw .sub2580 : db 2
  db 48
  !f6
  !a6
  !g6
  !c6
  db 96
  !d6
  !tie
  !tie
  db 72
  !tie
  !end

.pattern1_4
  db 25
  !rest
  !instr,!instr04
  !volume,62
  !pan,7
  !transpose,0
  !subtranspose,18
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 12,$75
  !c7
  !loop : dw .sub2547 : db 16
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 11,$75
  !c7
  !end

.pattern2_0
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 12,$75
  !c7
  !end

.pattern2_4
  db 1
  !rest
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 11,$75
  !c7
  !end

.sub2547
  db 12,$7F
  !a6
  db 12,$75
  !a6
  db 12,$7F
  !d7
  db 12,$75
  !d7
  db 12,$7F
  !g6
  db 12,$75
  !g6
  db 12,$7F
  !c7
  db 12,$75
  !c7
  !end

.sub2560
  db 48
  !g6
  db 24
  !f6
  !c6
  db 48
  !d6
  db 24
  !a5
  !c6
  db 48
  !d6
  db 24
  !f6
  !g6
  db 72
  !a6
  db 24
  !d7
  db 48
  !c7
  !a6
  db 72
  !g6
  db 24
  !f6
  db 48
  !g6
  db 24
  !a6
  !g6
  !end

.sub2580
  db 72
  !f6
  db 24
  !a6
  db 96
  !g6
  !end
endspcblock

spcblock !p_extra nspc
  dw Trackers-8 : db 0
endspcblock execute !p_spcEngine
